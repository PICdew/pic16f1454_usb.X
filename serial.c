#include <stdio.h>
#include "system.h"
#include "usb.h"
#include "usb_device_cdc.h"
#include "gpio.h"
#include "serial.h"

static uint8_t readBuffer[CDC_DATA_OUT_EP_SIZE];
static uint8_t writeBuffer[CDC_DATA_IN_EP_SIZE];

void serial_update() {
    if (USBGetDeviceState() < CONFIGURED_STATE) {
        return;
    }
    if (USBIsDeviceSuspended() == true) {
        return;
    }
    if (USBUSARTIsTxTrfReady() == true) {
        uint8_t numBytesRead = getsUSBUSART(readBuffer, sizeof (readBuffer));

        for (uint8_t i = 0; i < numBytesRead; ++i) {
            switch (readBuffer[i]) {
                case 'l':
                    g_cDevice = 'l';
                    break;
                case '0':
                case '1':
                case '2':
                case '4':
                case '8':
                case '9':
                    g_cDivider = readBuffer[i] - '0';
                    break;
                case '?':
                    sprintf(writeBuffer, "%c%c\n", g_cDevice, g_cDivider + '0');
                    putUSBUSART(writeBuffer, strlen(writeBuffer));
                    break;
            }
        }
    }
    gpio_update();
    CDCTxService();
}
