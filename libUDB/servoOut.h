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

//	routines to drive the PWM pins for the servos,
#include "oscillator.h"

#if AIRFRAME_TYPE != AIRFRAME_QUAD
#if (MIPS == 64)
#define SCALE_FOR_PWM_OUT(x)    (x/2)
#elif (MIPS == 32)
#define SCALE_FOR_PWM_OUT(x)    (x*2)
#elif (MIPS == 16)
#define SCALE_FOR_PWM_OUT(x)    (x)
#else
#error Invalid MIPS Configuration
#endif

#else
    //AIRFRAMETYPE=QUAD
// Timer 3 for Output Compare module clocks at T3FREQ (= 5MHz with FREQOSC = 80e6)
// 32e6 is the legacy value of FREQOSC
#if (MIPS == 64)
#define PWMOUTSCALE (FREQOSC / 64E6)
#elif (MIPS == 40)
#define PWMOUTSCALE (FREQOSC / 40E6)
#elif (MIPS == 32)
#define PWMOUTSCALE (FREQOSC / 32E6)
#elif (MIPS == 16)
#define PWMOUTSCALE (FREQOSC / 16E6)
#else
#error Invalid MIPS Configuration
#endif // MIPS
// 2e6 is the legacy value of T3FREQ
#define T3FREQ (2000000 * PWMOUTSCALE)
// Timer 3 period is 1 / (ESC_HZ)
#define T3PERIOD (T3FREQ / ESC_HZ)

#endif
extern int16_t udb_pwOut[]; // pulse widths for servo outputs
static inline int scale_pwm_out(int channel) {
    union longww pww;
    pww.WW = __builtin_muluu(udb_pwOut[channel],
                             (unsigned int)(65536 * PWMOUTSCALE / 4));
    pww.WW <<= 2;
    return pww._.W1;
}


//void udb_init_pwm(void)
void servoOut_init(void); // was called udb_init_pwm()

// saturation logic to maintain pulse width within bounds
// This takes a servo out value, and clips it to be within
// 3000-1000*SERVOSAT and 3000+1000*SERVOSAT (2000-4000 by default).
int16_t udb_servo_pulsesat(int32_t pw);
void udb_set_action_state(boolean newValue);

// Call this to start sending out pulses to all the PWM output channels sequentially
void start_pwm_outputs(void);

