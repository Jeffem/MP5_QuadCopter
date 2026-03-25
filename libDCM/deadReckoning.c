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
#include "gpsParseCommon.h"
#include "deadReckoning.h"
#include "mathlibNAV.h"
#include "estWind.h"
#include "gpsData.h"
#include "rmat.h"
#include "../libUDB/heartbeat.h"
#include "estAltitude.h"


// seconds
#define DR_TIMESTEP (1.0/HEARTBEAT_HZ)

// 1.0 in 0.16 format
#define MAX16 (4.0*RMAX)

// seconds
#define DR_TAU 2.5
#define DR_TAU_Z 0.5
#define IMU_INT_ACC_Z_MAX 200 //saturation intégrateur mm/s²
// seconds * (cm/sec^2 / count) ??? is G always represented as cm/sec^2 ?
// GRAVITYM is 980 cm/sec^2, GRAVITY is 2000 counts
// dx/dt^2 * ACCEL2DELTAV = cm/sec
#define ACCEL2DELTAV_XY ((DR_TIMESTEP*GRAVITYM*MAX16)/GRAVITY)
// Z: dx/dt^2 * ACCEL2DELTAV_Z = mm/sec
#define ACCEL2DELTAV_Z ((DR_TIMESTEP*10.0*GRAVITYM*MAX16)/GRAVITY)

//  X and Y velocity in cm/sec, location in cm
#define VELOCITY2LOCATION_XY (DR_TIMESTEP*MAX16*16.0)
// The factor of 16 is so that the gain is more precise.
// There is a subsequent right shift by 4 to cancel the multiply by 16.

// Z velocity in mm/sec,  Z location in mm
#define VELOCITY2LOCATION_Z (DR_TIMESTEP*MAX16)

// dimensionless
#define DR_FILTER_GAIN (int16_t)(DR_TIMESTEP*MAX16/DR_TAU)
#define DR_FILTER_GAIN_Z (int16_t)(DR_TIMESTEP*MAX16/DR_TAU_Z)*2

// 1/seconds
//#define ONE_OVER_TAU (uint16_t)(MAX16/DR_TAU)
#define DR_I_GAIN (DR_FILTER_GAIN/DR_TAU)
#define DR_I_GAIN_Z (DR_FILTER_GAIN_Z/DR_TAU_Z)*2

// velocity, as estimated by the IMU: high word is cm/sec
union longww IMUvelocityx = { 0 };
union longww IMUvelocityy = { 0 };
union longww IMUvelocityz = { 0 };

int16_t forward_ground_speed = 0 ;
int16_t IMU_altitude = 0 ;
int16_t IMU_climb = 0 ;
extern int16_t altitude ;
extern int16_t climb_rate ;
extern int16_t pwManual[NUM_INPUTS+1] ;
extern int16_t number_pulses ;

// location, as estimated by the IMU
// high word is millimeters, low word is fractional millimeters
//modif gfm
// high word is centimeters, low word is fractional centimeters, see line 48
// fin modif gfm
union longww IMUlocationx = { 0 };
union longww IMUlocationy = { 0 };
union longww IMUlocationz = { 0 };

// integral of acceleration
union longww IMUintegralAccelerationx = { 0 };
union longww IMUintegralAccelerationy = { 0 };
union longww IMUintegralAccelerationz = { 0 };

uint16_t air_speed_3DIMU = 0;
int16_t total_energy = 0;

// GPSlocation - IMUlocation: meters
fractional locationErrorEarth[] = { 0, 0, 0 };
// GPSvelocity - IMUvelocity
fractional velocityErrorEarth[] = { 0, 0, 0 };

extern boolean origin_recorded ;
extern int16_t dead_reckon_clock ;
void dead_reckon(void)
{
	int16_t air_speed_x, air_speed_y, air_speed_z;
	union longww accum;
	union longww energy;
    double currentDrI,currentDr;
    
    {
		// compute location and velocity errors
		// for Z use LIDAR
		// wait until takeoff to use altitude information, LIDAR does not work on the ground	
		//if (abs(pwManual[THROTTLE_INPUT_CHANNEL]-udb_pwTrim[THROTTLE_INPUT_CHANNEL])< 20 )
        if (dcm_flags._.calib_finished == 0)		
        {
			// sitting on the ground
			IMUlocationz.WW = 0 ;
			IMUvelocityz.WW = 0 ;
			IMUintegralAccelerationz.WW = 0 ;
		}
		else
		{	
            if (imu_dominant) {
                currentDrI=DR_I_GAIN_Z;
                currentDr=DR_FILTER_GAIN_Z;
            }
            else 
            {
                currentDrI=0.0;
                currentDr=0.0;               
            }
				// use fusion for altitude
			locationErrorEarth[2] = estimated_altitude - IMUlocationz._.W1;
			velocityErrorEarth[2] = vze_fusion - IMUvelocityz._.W1;
			//velocityErrorEarth[2] = 0 - IMUvelocityz._.W1;
			// compensate for velocity error ;
			IMUintegralAccelerationz.WW += __builtin_mulss(((int16_t)(currentDrI)), velocityErrorEarth[2]);

			// Clamp de l'intégrateur de biais accel
            if (IMUintegralAccelerationz._.W1 >  IMU_INT_ACC_Z_MAX)
                IMUintegralAccelerationz._.W1 =  IMU_INT_ACC_Z_MAX;
            if (IMUintegralAccelerationz._.W1 < -IMU_INT_ACC_Z_MAX)
                IMUintegralAccelerationz._.W1 = -IMU_INT_ACC_Z_MAX;
            
            // integrate the raw acceleration mm/s
			IMUvelocityz.WW += __builtin_mulss(((int16_t)(ACCEL2DELTAV_Z)), accelEarth[2]);
		
			// apply the proportional term for the acceleration bias compensation
			IMUvelocityz.WW += __builtin_mulss(2*currentDr, velocityErrorEarth[2]);
		
			// apply the integral term for the acceleration bias compensation
			IMUvelocityz.WW += __builtin_mulss(DR_TIMESTEP*MAX16,IMUintegralAccelerationz._.W1);
		
			// integrate IMU velocity to update the IMU location	
			IMUlocationz.WW += (__builtin_mulss(((int16_t)(VELOCITY2LOCATION_Z)), IMUvelocityz._.W1));

			// apply the location bias compensation
			IMUlocationz.WW += __builtin_mulss(DR_FILTER_GAIN_Z, locationErrorEarth[2]);

		}
	
		// use GPS for X and Y
		if(origin_recorded&&(dead_reckon_clock>0))
		{
			dead_reckon_clock--;
			if (dcm_flags._.reckon_req)
			{
				dcm_flags._.reckon_req = 0 ;
				locationErrorEarth[0] = GPSlocation.x - IMUlocationx._.W1;
				locationErrorEarth[1] = GPSlocation.y - IMUlocationy._.W1;
				velocityErrorEarth[0] = GPSvelocity.x - IMUvelocityx._.W1;
				velocityErrorEarth[1] = GPSvelocity.y - IMUvelocityy._.W1;
			}
			// compute the integral term for the acceleration bias compensation
			IMUintegralAccelerationx.WW += __builtin_mulss(((int16_t)(DR_I_GAIN)), velocityErrorEarth[0]);
			IMUintegralAccelerationy.WW += __builtin_mulss(((int16_t)(DR_I_GAIN)), velocityErrorEarth[1]);

			// integrate the raw acceleration
			IMUvelocityx.WW += __builtin_mulss(((int16_t)(ACCEL2DELTAV_XY)), accelEarth[0]);
			IMUvelocityy.WW += __builtin_mulss(((int16_t)(ACCEL2DELTAV_XY)), accelEarth[1]);
		
			// apply the proportional term for the acceleration bias compensation
			IMUvelocityx.WW += __builtin_mulss(2*DR_FILTER_GAIN, velocityErrorEarth[0]);
			IMUvelocityy.WW += __builtin_mulss(2*DR_FILTER_GAIN, velocityErrorEarth[1]);
		
			// apply the integral term for the acceleration bias compensation
			IMUvelocityx.WW += __builtin_mulss(DR_TIMESTEP*MAX16,IMUintegralAccelerationx._.W1);
			IMUvelocityy.WW += __builtin_mulss(DR_TIMESTEP*MAX16,IMUintegralAccelerationy._.W1);
		
			// integrate IMU velocity to update the IMU location	
			IMUlocationx.WW += (__builtin_mulss(((int16_t)(VELOCITY2LOCATION_XY)), IMUvelocityx._.W1)>>4);
			IMUlocationy.WW += (__builtin_mulss(((int16_t)(VELOCITY2LOCATION_XY)), IMUvelocityy._.W1)>>4);

			// apply the location bias compensation
			IMUlocationx.WW += __builtin_mulss(DR_FILTER_GAIN, locationErrorEarth[0]);
			IMUlocationy.WW += __builtin_mulss(DR_FILTER_GAIN, locationErrorEarth[1]);
		}
		else
		{
			IMUlocationx.WW += (__builtin_mulss(((int16_t)(VELOCITY2LOCATION_XY)), IMUvelocityx._.W1)>>4);
			IMUlocationy.WW += (__builtin_mulss(((int16_t)(VELOCITY2LOCATION_XY)), IMUvelocityy._.W1)>>4);
		}
	}
/*	air_speed_x = IMUvelocityx._.W1 - estimatedWind[0];
	air_speed_y = IMUvelocityy._.W1 - estimatedWind[1];
	air_speed_z = IMUvelocityz._.W1 - estimatedWind[2];

	accum.WW = ((__builtin_mulss(-IMUintegralAccelerationx._.W1, rmat[1])
	                          + __builtin_mulss( IMUintegralAccelerationy._.W1, rmat[4])) << 2);
	forward_ground_speed = accum._.W1 ;

	air_speed_3DIMU = vector3_mag(air_speed_x, air_speed_y, air_speed_z);

	accum.WW   = __builtin_mulsu(air_speed_x, 37877);
	energy.WW  = __builtin_mulss(accum._.W1, accum._.W1);

	accum.WW   = __builtin_mulsu(air_speed_y, 37877);
	energy.WW += __builtin_mulss(accum._.W1, accum._.W1);

	accum.WW   = __builtin_mulsu(air_speed_z, 37877);
	energy.WW += __builtin_mulss(accum._.W1, accum._.W1);

	energy.WW += IMUlocationz.WW;
	total_energy = energy._.W1;
 */
	IMU_climb = IMUvelocityz._.W1 ;
	IMU_altitude = IMUlocationz._.W1 ;
}
//Modif gfm QuadCopter
// gfm Supprimée le 22_05_2015
/*
// estimate position in cm, using only GPSloc_cm, GPSvelocity and accelEarth
union longww IMUcmx =  { 0 }  ;
union longww IMUcmy =  { 0 }  ;
union longww IMUcmz =  { 0 }  ;

// estimated velocity
union longww IMUvx =  { 0 }  ;
union longww IMUvy =  { 0 }  ;
union longww IMUvz =  { 0 }  ;

//	integral of acceleration
union longww integralAccelx = { 0 } ;
union longww integralAccely = { 0 } ;
union longww integralAccelz = { 0 } ;

fractional cmErrorEarth[] = { 0 , 0 , 0 } ;
fractional velErrorEarth[] = { 0 , 0 , 0 } ;

extern struct relative3D GPSloc_cm;

#define A2DV ((DR_TIMESTEP * GRAVITYM * MAX16) / GRAVITY)

// cm/sec * V2X = centimeters; at 400Hz, V2X = SCALE_VAL/400 in 1.15 fractional form
// result of fractional multiply must be right shifted by SCALE_SHIFT
//FIXME: HEARTBEAT_HZ: SCALE_SHIFT and SCALE_VAL should be calculated from HEARTBEAT_HZ
// optimal SCALE_SHIFT is floor(log2(HEARTBEAT_HZ = 1/DR_TIMESTEP)) (assuming INT_TAU >= 1)
#define SCALE_SHIFT 8
#define SCALE_VAL 256
#define V2X (SCALE_VAL * DR_TIMESTEP * MAX16)

// seconds
#define INT_TAU (2.5)
#define INT_TAU_INV ((unsigned int) (MAX16 / INT_TAU))

// at 400 Hz with 2.5 second integration time constant, filter gain is 1/1000
#define SCALE_SHIFT2 8
#define SCALE_VAL2 256
// 1/seconds^2
#define INT_FILTER_GAIN ((int) ((SCALE_VAL2 * DR_TIMESTEP * MAX16) / INT_TAU))

int integrate_clock = DR_PERIOD ;

void integrate_loc_cm(void)
{
	if ( dcm_flags._.dead_reckon_enable == 1 )  // wait for startup of GPS
	{
		//	integrate the accelerometers to update IMU velocity
                // accelEarth is acceleration-offset in earth frame
		integralAccelx.WW += __builtin_mulss( ((int)(A2DV)) ,  accelEarth[0] ) ;
		integralAccely.WW += __builtin_mulss( ((int)(A2DV)) ,  accelEarth[1] ) ;
		integralAccelz.WW += __builtin_mulss( ((int)(A2DV)) ,  accelEarth[2] ) ;

		//	integrate IMU velocity to update the IMU location
		IMUcmx.WW += ( __builtin_mulss( ((int)(V2X)) ,  integralAccelx._.W1 ) >> SCALE_SHIFT ) ;
		IMUcmy.WW += ( __builtin_mulss( ((int)(V2X)) ,  integralAccely._.W1 ) >> SCALE_SHIFT ) ;
		IMUcmz.WW += ( __builtin_mulss( ((int)(V2X)) ,  integralAccelz._.W1 ) >> SCALE_SHIFT ) ;

		if ( integrate_clock > 0 )
		//	apply drift adjustments only while valid GPS data is in force.
		//  This is done with a countdown clock that gets reset each time new data comes in.
		{
			integrate_clock -- ;

                        // without these terms IMUcm doesn't track with GPS
                        integralAccelx.WW += (__builtin_mulss( INT_FILTER_GAIN ,  velErrorEarth[0] ) >> SCALE_SHIFT2) ;
                        integralAccely.WW += (__builtin_mulss( INT_FILTER_GAIN ,  velErrorEarth[1] ) >> SCALE_SHIFT2) ;
                        integralAccelz.WW += (__builtin_mulss( INT_FILTER_GAIN ,  velErrorEarth[2] ) >> SCALE_SHIFT2) ;

			IMUcmx.WW += (__builtin_mulss( INT_FILTER_GAIN ,  cmErrorEarth[0] ) >> SCALE_SHIFT2) ;
			IMUcmy.WW += (__builtin_mulss( INT_FILTER_GAIN ,  cmErrorEarth[1] ) >> SCALE_SHIFT2) ;
			IMUcmz.WW += (__builtin_mulss( INT_FILTER_GAIN ,  cmErrorEarth[2] ) >> SCALE_SHIFT2) ;

			IMUvx.WW = integralAccelx.WW + __builtin_mulus( INT_TAU_INV , cmErrorEarth[0] ) ;
			IMUvy.WW = integralAccely.WW + __builtin_mulus( INT_TAU_INV , cmErrorEarth[1] ) ;
			IMUvz.WW = integralAccelz.WW + __builtin_mulus( INT_TAU_INV , cmErrorEarth[2] ) ;

		}
                else
                {
			IMUvx.WW = integralAccelx.WW ;
			IMUvy.WW = integralAccely.WW ;
			IMUvz.WW = integralAccelz.WW ;
                }

		if ( gps_nav_valid() && ( dcm_flags._.integrate_req == 1 ) )
		{
			//	compute error indications and restart the dead reckoning clock to apply them
			dcm_flags._.integrate_req = 0 ;
			integrate_clock = DR_PERIOD ;

			cmErrorEarth[0] = GPSloc_cm.x - IMUcmx._.W1 ;
			cmErrorEarth[1] = GPSloc_cm.y - IMUcmy._.W1 ;
			cmErrorEarth[2] = GPSloc_cm.z - IMUcmz._.W1 ;

			velErrorEarth[0] = GPSvelocity.x - integralAccelx._.W1 ;
			velErrorEarth[1] = GPSvelocity.y - integralAccely._.W1 ;
			velErrorEarth[2] = GPSvelocity.z - integralAccelz._.W1 ;
		}
	}
	else
	{
		integralAccelx.WW = 0 ;
		integralAccely.WW = 0 ;
		integralAccelz.WW = 0 ;

		IMUcmx.WW = 0 ;
		IMUcmy.WW = 0 ;
		IMUcmz.WW = 0 ;
	}

	return ;
}
*/
// Fin modif gfm Quadcopter
