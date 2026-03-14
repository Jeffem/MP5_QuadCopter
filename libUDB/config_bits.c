#include <p33Fxxxx.h>
// ou, si tu préfères être encore plus explicite :
// #include <p33FJ256GP710A.h>

#include <xc.h>

// =====================
// Boot Segment (FBS)
// =====================
#pragma config BWRP = WRPROTECT_OFF   // Boot segment write protect off
#pragma config BSS  = NO_FLASH        // No boot program flash segment
#pragma config RBS  = NO_RAM          // No boot RAM protection

// =====================
// Secure Segment (FSS)
// =====================
#pragma config SWRP = WRPROTECT_OFF   // Secure segment write protect off
#pragma config SSS  = NO_FLASH        // No secure program flash segment
#pragma config RSS  = NO_RAM          // No secure RAM protection

// =====================
// General Code Protection (FGS)
// =====================
#pragma config GWRP = OFF             // General segment not write-protected
#pragma config GSS  = OFF             // General segment not code-protected

// =====================
// Oscillator Selection (FOSCSEL)
// =====================
// MatrixPilot impose l?oscillateur primaire + PLL
#pragma config FNOSC = PRIPLL         // Primary oscillator with PLL
#pragma config IESO  = ON             // Two-speed start-up enabled (comme MPLAB)

// =====================
// Oscillator Configuration (FOSC)
// =====================
#pragma config POSCMD   = XT          // Primary osc = XT (quartz externe UDB5)
#pragma config OSCIOFNC = OFF         // OSC2 is clock output
#pragma config FCKSM    = CSDCMD      // Clock switching & Fail-Safe Clock Monitor disabled

// =====================
// Watchdog Timer (FWDT)
// =====================
#pragma config WDTPOST = PS32768      // Postscaler par défaut MPLAB
#pragma config WDTPRE  = PR128        // Prescaler par défaut MPLAB
#pragma config PLLKEN  = ON           // Attendre le lock PLL
#pragma config WINDIS  = OFF          // Standard WDT (fenêtre désactivée)
#pragma config FWDTEN  = OFF          // WDT désactivé (MatrixPilot)

// =====================
// Power-on Reset (FPOR)
// =====================
#pragma config FPWRT = PWR1           // POR timer = 1x (MatrixPilot)

// =====================
// In-Circuit Debug / JTAG (FICD)
// =====================
#pragma config ICS    = PGD2          // Debug sur PGEC2/PGED2 (UDB5)
#pragma config JTAGEN = OFF           // JTAG désactivé

