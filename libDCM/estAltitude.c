// This file is part of MatrixPilot.
//
//    http://code.google.com/p/gentlenav/
//
// Copyright 2009-2011 MatrixPilot Team
// See the AUTHORS.TXT file for a list of authors of MatrixPilot.
//
// MatrixPilot is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// MatrixPilot is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with MatrixPilot.  If not, see <http://www.gnu.org/licenses/>.


#include "libDCM.h"
#include "gpsData.h"
#include "../libUDB/barometer.h"
#include "../libUDB/lidar.h"
#include "../libUDB/heartbeat.h"
#include "estAltitude.h"
#include "../libDCM/deadReckoning.h"
#include <math.h>
#include <stdlib.h>
#include "rmat.h"

//#define USE_DEBUG_IO
#define ALPHA_CONSTANTE (int16_t) 1024*2
#define BETA_CONSTANTE (int16_t) 1024*6
// The origin is recorded as the altitude of the plane during power up.

long barometer_pressure_gnd = 0;
#if (USE_BAROMETER_ALTITUDE >0)
static int32_t barometer_altitude_gnd = 0;
static int32_t barometer_altitude_gnd0 = 0;
static int32_t barometer_altitude_bias = 0;
static int32_t barometer_agl_altitude_pred;    // previous above ground level altitude - AGL
#endif
int barometer_temperature_gnd = 0;

static long barometer_altitude;        // above sea level altitude - ASL (millimeters)
int32_t barometer_agl_altitude;
static int32_t barometer_agl_altitude_1;    // previous above ground level altitude - AGL
boolean imu_dominant = false;
long barometer_pressure;
int barometer_temperature;  //Degrés Centigrades
float sea_level_pressure;
static int32_t lidar_altitude;        // previous above ground height (millimeters)
static int32_t lidar_altitude_1;        // previous above ground height (millimeters)
static int32_t lidar_altitude_pred;        // predicted above ground height (millimeters)
static int32_t IMU_altitude;        // previous above ground height (millimeters)
static int32_t IMU_altitude_1;        // previous above ground height (millimeters)
static int32_t IMU_altitude_pred;        // predicted above ground height (millimeters)
static int32_t vze_baro,vze_lidar,vze_IMU;    // Altitude speeds in mm/s
static int32_t vze_IMU_Bias;                //Altitude speed bias
static uint16_t qual_baro,qual_lidar,qual_IMU;// altitudes qualities
uint32_t        alpha,beta;              // filter coefficients
static uint16_t val_baro,val_lidar,val_IMU;              // altitude validities
static uint16_t baro_confiance=2;            //Altitudes confidences
static uint16_t lidar_confiance=10;
static uint16_t IMU_confiance=10;
int32_t fusion,vze,vze_fusion;                // Altitude fusion output (in mm)
int32_t estimated_altitude;        //  (millimeters)
int16_t vtemp;

inline int16_t get_barometer_temperature(void)   { return barometer_temperature; }
inline long get_barometer_pressure(void)     { return barometer_pressure; }
inline long get_barometer_altitude(void)     { return barometer_altitude; }
inline int32_t get_barometer_agl_altitude(void) { return barometer_agl_altitude; }

int16_t barometerInterval = 0;
/**
 * @brief Ascertain a reference ambient barometric pressure & temperature
 */
void altimeter_calibrate(void)
{
    qual_IMU = 4;
    IMU_altitude_1 = 0;
    IMU_altitude = 0;
    vze_IMU = 0;
    IMU_altitude_pred = 0;
#if (USE_BAROMETER_ALTITUDE == 1)
	int ground_altitude = alt_origin.WW / 100;    // meters
	barometer_temperature_gnd = barometer_temperature;
	barometer_pressure_gnd = barometer_pressure;

	sea_level_pressure = ((float)barometer_pressure / powf((1 - (ground_altitude/44330.0)), 5.255));

	DPRINT("altimeter_calibrate: ground temp & pres set %i, %li\r\n", barometer_temperature_gnd, barometer_pressure_gnd);
#elif (USE_BAROMETER_ALTITUDE == 2)
	if (barometer_altitude_gnd0 == 0) barometer_altitude_gnd0 = barometer_altitude;
        else barometer_altitude_gnd0 = (15*barometer_altitude_gnd0 + barometer_altitude)/16;
        vze_baro = 0;
        qual_baro = 10;
        barometer_altitude_gnd = barometer_altitude_gnd0;
        barometer_agl_altitude_1 = 0;
        barometer_agl_altitude_pred = 0;
        barometer_agl_altitude = 0;
#endif
#if (USE_LIDAR_ALTITUDE >0)
       vze_lidar = 0;
       lidar_altitude = 0;
#endif  //LIDAR_ALTITUDE > 0
    fusion = 0;
    vze_fusion = 0;
    qual_lidar = 4;
    lidar_altitude_1 = lidar_altitude;
    lidar_altitude_pred = lidar_altitude;
    qual_baro = 10;
    val_baro = 0;
    val_lidar = 0;
    val_IMU = 0;
//    if (lidar0 ==0) lidar0 = lidar_altitude;
//    else lidar0 = (15*lidar0 + lidar_altitude)>>4;
#ifdef USE_DEBUG_IO
	printf("altimeter_calibrate: ground temp & pres set %i, %li\r\n", barometer_temperature_gnd, barometer_pressure_gnd);
#endif
}

#if (USE_BAROMETER_ALTITUDE == 1)
void udb_barometer_callback(long pressure, int16_t temperature, char status)
{
	barometer_temperature = temperature; // units of 0.1 deg C
	barometer_pressure = pressure; // units are Pascals so this could be reduced to an uint16_t
}
#elif (USE_BAROMETER_ALTITUDE == 2)
void udb_barometer_callback(long altitude, int16_t temperature, char status)
{
	barometer_temperature = temperature; // units of 0.1 deg C
	barometer_altitude = altitude;//Altitude in mm
}
#endif

/**
 * @brief Calculate an altitude estimate using barometer data
 * @param
 * @return
 */
void udb_lidar_callback(long altitude)
{
	lidar_altitude = altitude;//Altitude in mm
}

//Estimate the best altitude from all four sensors IMU, Baro, Lidar or sonanr and GPS

void estAltitude(void)
{
#if (USE_BAROMETER_ALTITUDE == 1)
	float pressure_ambient = barometer_pressure;    // Pascals?
	float barometer_alt;

	if (barometer_pressure_gnd != 0)
	{		
		barometer_alt = 44330.0f * ((1-pow((pressure_ambient/sea_level_pressure),(1/5.255f)))); // Meters
		barometer_altitude = (long)(barometer_alt * 1000); // millimeters
#ifdef USE_DEBUG_IO
		// estimate sea level pressure assuming we're still on the ground
		int ground_altitude = alt_origin.WW / 100; // meters
		sea_level_pressure = ((float) barometer_pressure / powf((1 - (ground_altitude / 44330.0)), 5.255));
		// print pressure altitude, pressure and current SLP estimate
		printf("estAltitude %f, pressure %f, sea level pressure %f\r\n", (double) barometer_alt, (double) (.01 * pressure_ambient), (double) (.01 * sea_level_pressure));
#endif
    }
#elif (USE_BAROMETER_ALTITUDE == 2)
int32_t e_baro  = barometer_agl_altitude - fusion;
int32_t ae_baro = labs(e_baro);

        barometer_agl_altitude = barometer_altitude - barometer_altitude_gnd;
#ifdef USE_DEBUG_IO
		// estimate sea level pressure assuming we're still on the ground
		// print altitude
		printf("estAltitude %f\r\n", (double) barometer_agl_altitude);
#endif
#endif // USE_BAROMETER_ALTITUDE
#if (USE_SONAR_INPUT != 0)
	calculate_sonar_height_above_ground();
    if (sonar_height_to_ground <10000) estimated_altitude = sonar_height_to_ground;        // lidar altitude (millimeters)
#endif
/*
			// integrate the raw acceleration mm/s
			IMUvelocityz.WW += __builtin_mulss(((int16_t)(ACCEL2DELTAV_Z)), accelEarth[2]);
		
			// integrate IMU velocity to update the IMU location	
			IMUlocationz.WW += (__builtin_mulss(((int16_t)(VELOCITY2LOCATION_Z)), IMUvelocityz._.W1)>>4);

**/
// Beginning alti_fusion gfm
      /*======================================================================*/
      /*          Altimeter fusion   (all altitudes in mm)                    */
      /*======================================================================*/
      // IMU altitude filter and offset compensation using IMUvelocityz (in mm/s)
      IMU_altitude = IMUlocationz._.W1;
// --- erreurs par rapport à la fusion actuelle ---
int32_t e_IMU  = IMU_altitude - fusion;
int32_t ae_IMU = labs(e_IMU);


// --- IMU : qual_IMU entre 1 et 4 ---
if (ae_IMU <100) {
    if (qual_IMU > 2) qual_IMU--;
} else if (ae_IMU > 500) {
    if (qual_IMU < 8) qual_IMU++;
}
#if USE_BAROMETER_ALTITUDE>0
// --- Baromètre : qual_baro entre 10 et 60 ---
if (ae_baro <1000) {
    if (qual_baro > 10) qual_baro--;
} else if (ae_baro > 3000) {
    if (qual_baro < 20) qual_baro++;
}
#endif
#if USE_LIDAR_ALTITUDE>0
int32_t e_lidar  = lidar_altitude - fusion;
int32_t ae_lidar = labs(e_lidar);

// --- Lidar : qual_lidar entre 2 et 8 ---
if (ae_lidar < 1000) {
    if (qual_lidar > 2) qual_lidar--;
} else if (ae_lidar > 1500) {
    if (qual_lidar < 8) qual_lidar++;
}
#endif

if (IMU_altitude < 12000) {
    // < 12 m : Lidar dominant, Baro très affaibli
    baro_confiance  = 0;
    lidar_confiance = 40;
}
else if (IMU_altitude < 16000) {
    // 12?16 m : transition linéaire Lidar -> Baro
    int32_t dz = IMU_altitude - 12000; // 0..4000

    // t = dz / 4000, en float simple (ou fixe si tu préfères)
    float t = (float)dz / 4000.0f; // 0 -> 1

    // Lidar : 10 -> 0
    lidar_confiance = (uint16_t)(40.0f * (1.0f - t));

    // Baro : 0 -> 2
    baro_confiance  = (uint16_t)(20.0f * t);
}
else {
    // > 16 m : Lidar ignoré, Baro nominal
    baro_confiance  = 20;
    lidar_confiance = 0;
}
//         lidar_confiance=10;
//         IMU_confiance=0;
      
      // Compute filter alpha beta parameters
//       alpha := 2.0*(2.0*qual_IMU-1)/qual_IMU/(qual_IMU+1) ;
//      beta := 6.0/qual_IMU/(qual_IMU+1) ;
      alpha = __builtin_muluu(ALPHA_CONSTANTE,(2*qual_IMU-1));
      alpha = __builtin_divud(alpha,qual_IMU);
      alpha =__builtin_divud(alpha,(qual_IMU+1)) ;
//  (BETA_CONSTANTE = 6* 1024)
      beta = __builtin_divud(BETA_CONSTANTE,qual_IMU);
      beta = __builtin_divud(beta,(qual_IMU+1)) ;
 //     beta = __builtin_divud(beta,PID_HZ) ;

//      vze_IMU = (IMUvelocityz.WW >> 6)/ PID_HZ ;
//      Drift correction due to residual accelero offset
/*         if (fusion<10000) 
          vze_IMU_Bias=(63*vze_IMU_Bias+(vze_lidar - vze_IMU))>>6;//40/10/1024=1/256
          else {
          vze_IMU_Bias=(63*vze_IMU_Bias+(vze - vze_IMU))>>6;
         if ((fusion<12000) && (val_lidar>0)) 
          vze_IMU_Bias=(63*vze_IMU_Bias+(vze_lidar - vze_IMU))>>6;//40/10/1024=1/256
          else if ( (val_baro>0))
          vze_IMU_Bias=(63*vze_IMU_Bias+(vze_baro - vze_IMU))>>6;
          else if (val_IMU>0)
          vze_IMU_Bias=(63*vze_IMU_Bias+(vze - vze_IMU))>>6;
          else
          vze_IMU_Bias=vze_IMU_Bias; }   
      vze_IMU=vze_IMU+vze_IMU_Bias;
 */     
      vze_IMU +=__builtin_mulus(beta, (int16_t)(IMU_altitude-IMU_altitude_1)) ;
      IMU_altitude_pred +=  vze_IMU ;
      IMU_altitude_pred +=  __builtin_mulus(alpha,(int16_t)(IMU_altitude-IMU_altitude_1));
      IMU_altitude_1 = IMU_altitude_pred >> 10;

#if USE_BAROMETER_ALTITUDE>0
      // Compute filter alpha beta parameters
      alpha = __builtin_muluu(ALPHA_CONSTANTE,(2*qual_baro-1));
      alpha = __builtin_divud(alpha,qual_baro);
      alpha =__builtin_divud(alpha,(qual_baro+1)) ;
      beta = __builtin_divud(BETA_CONSTANTE,qual_baro);
      beta = __builtin_divud(beta,(qual_baro+1)) ;

      vze_baro = vze_baro +  __builtin_mulus(beta, (int16_t)(barometer_agl_altitude-barometer_agl_altitude_1) );
//      if (val_baro>0) barometer_altitude_gnd = barometer_altitude_gnd + __builtin_mulus(feedback,(fusion - barometer_agl_altitude));
      barometer_agl_altitude_pred =  barometer_agl_altitude_pred + __builtin_mulus(alpha , (int16_t)(barometer_agl_altitude-barometer_agl_altitude_1)) +vze_baro;
      barometer_agl_altitude_1 = barometer_agl_altitude_pred >> 10;
#endif
#if USE_LIDAR_ALTITUDE>0
      // Compute filter alpha beta parameters (multiplied by 1024)
      alpha = __builtin_muluu(ALPHA_CONSTANTE,(2*qual_lidar-1));
      alpha = __builtin_divud(alpha,qual_lidar);
      alpha =__builtin_divud(alpha,(qual_lidar+1)) ;
      beta = __builtin_divud(BETA_CONSTANTE,qual_lidar);
      beta = __builtin_divud(beta,(qual_lidar+1)) ;

      vze_lidar += __builtin_mulus(beta , (int16_t)(lidar_altitude-lidar_altitude_1)) ;
      lidar_altitude_pred += __builtin_mulus(alpha,(int16_t)( lidar_altitude-lidar_altitude_1))+vze_lidar ;
      lidar_altitude_1 = lidar_altitude_pred >> 10;
#endif

      // update validities
       val_IMU = (uint16_t) ((IMU_confiance)/qual_IMU)  ;//val_IMU max = 20/1=20
      if (( IMU_altitude_1 < -100) || (abs(IMU_altitude_1 - fusion)>4000)|| (val_lidar>10))  val_IMU = 0;
#if USE_BAROMETER_ALTITUDE>0
      val_baro = (uint16_t) ((baro_confiance)/qual_baro);   //val_baro max = 0.2
      if (( barometer_agl_altitude_1 < -4000) || (abs(barometer_agl_altitude_1 - fusion)>5000)) val_baro = 0;
#else
      val_baro = 0;
#endif
#if USE_LIDAR_ALTITUDE>0
      val_lidar = (uint16_t) ((lidar_confiance)/qual_lidar);// val_lidar max = 40/2=20
      if ((abs(lidar_altitude_1 - fusion)>2000)) val_lidar = 0;
#else
      val_lidar = 0;
#endif
     // update confidences
//      val_GPS := qual_GPS * GPS_Confiance;
//      if (( GPS = 0.0) OR (abs(GPS - Alti)>0.5)) then val_GPS := 0.0;


  // calculs val_IMU, val_baro, val_lidar comme dans EstimAlt
      uint16_t sum_val = val_IMU + val_baro + val_lidar;

// ratio de dominance IMU
      imu_dominant = (sum_val > 0) && (val_IMU > 3 * (val_baro + val_lidar));

      // compute fusion
      if ((val_baro>0.0) || (val_lidar>0.0) || (val_IMU>0.0))
        {
        fusion = __builtin_mulus(val_baro,(int16_t)barometer_agl_altitude_1);
        fusion += __builtin_mulus(val_lidar,(int16_t)lidar_altitude_1);
        fusion += __builtin_mulus(val_IMU,(int16_t)(IMU_altitude_1))  ;
        fusion = __builtin_divsd(fusion ,(val_baro+val_lidar+val_IMU));
 
        vze = __builtin_mulus(val_baro,(int16_t)vze_baro);
        vze += __builtin_mulus(val_lidar,(int16_t)vze_lidar);
        vze += __builtin_mulus(val_IMU,(int16_t)vze_IMU)  ;
        vze = __builtin_divsd(vze ,(val_baro+val_lidar+val_IMU));
        vze_fusion = (__builtin_mulus((int16_t)PID_HZ,vze))>>10;
      }
      else
      {
      fusion = IMU_altitude;
      vze_fusion = IMUvelocityz._.W1;
      }
    estimated_altitude =  fusion ;  // Altitude in mm, positive upward
    // fin alti_fusion gfm
}
