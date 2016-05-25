#include "system.h"
#include "pic16f145x_usb.h"

char g_cDevice = 'l';
char g_cDivider = 9;

void gpio_init() {
    TRISC = ~(1 << _LATC_LATC5_POSN);
}

void gpio_update() {
    static int oldValue = 0;
    int newValue = 0;

    if (g_cDivider == 0) {
        newValue = 0;
    } else if (g_cDivider > 8) {
        newValue = 1;
    } else {
        newValue = (g_ulMillis / (1000 / g_cDivider)) % 2;
    }
    if (newValue != oldValue) {
        LATCbits.LATC5 = oldValue = newValue;
    }
}
