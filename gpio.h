/* 
 * File:   gpio.h
 * Author: vicente
 *
 * Created on May 24, 2016, 8:33 PM
 */

#ifndef GPIO_H
#define	GPIO_H

#ifdef	__cplusplus
extern "C" {
#endif

    extern char g_cDevice;
    extern char g_cDivider;
    void gpio_init();
    void gpio_update();

#ifdef	__cplusplus
}
#endif

#endif	/* GPIO_H */
