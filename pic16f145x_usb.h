/* 
 * File:   pic16f145x_usb.h
 * Author: vicente
 *
 * Created on May 24, 2016, 7:25 PM
 */

#ifndef PIC16F145X_USB_H
#define	PIC16F145X_USB_H

#ifdef	__cplusplus
extern "C" {
#endif

    extern volatile unsigned long int g_ulMillis;
    void timer_init();
    bool timer_update();

#ifdef	__cplusplus
}
#endif

#endif	/* PIC16F145X_USB_H */
