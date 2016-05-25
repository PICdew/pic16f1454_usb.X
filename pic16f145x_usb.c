#include "system.h"
#include "pic16f145x_usb.h"

volatile unsigned long int g_ulMillis = 0;

void timer_init() {
    T2CON |= 88;
    T2CONbits.T2CKPS1 = 0;
    T2CONbits.T2CKPS0 = 1;
    PR2 = 250;
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    PIE1bits.TMR2IE = 1;
    T2CONbits.TMR2ON = 1;
}

bool timer_update() {
    if (PIR1bits.TMR2IF) {
        ++g_ulMillis;
        PIR1bits.TMR2IF = 0;
        return true;
    }
    return false;
}
