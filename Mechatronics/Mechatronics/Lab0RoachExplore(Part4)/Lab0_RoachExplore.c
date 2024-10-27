#include <BOARD.h>
#include <xc.h>
#include <roach.h>
#include<stdio.h>

int main(void) {
    BOARD_Init();
    Roach_Init();

    printf("\r\nTestharness started");
    uint16_t batVolt;
    batVolt = Roach_BatteryVoltage();
    printf("\r\nBattery voltage is %d", batVolt);

    //Bar graph
    
    
    //led flasher
    printf("\r\nLED Test");
    for (int x = 0; x < 5; x++) {
        //flash led bar
        Roach_LEDSSet(0xFFF);

        //Delay loop
        for (int i = 0; i < 183000; i++) {
            asm("nop");
        }
        Roach_LEDSSet(0x000);
        for (int i = 0; i < 183000; i++) {
            asm("nop");
        }
    }


    while (1) {
        //Testing bumper press
        if (Roach_ReadFrontRightBumper() == BUMPER_TRIPPED) {
            printf("Front right bumper was tripped \n ");
            Roach_LeftMtrSpeed(50);
            Roach_RightMtrSpeed(50);
        }
        if (Roach_ReadFrontLeftBumper() == BUMPER_TRIPPED) {
            printf("Front left bumper was tripped \n ");
            Roach_LeftMtrSpeed(0);
            Roach_RightMtrSpeed(0);
        }
        if (Roach_ReadRearRightBumper() == BUMPER_TRIPPED) {
            printf("Back right bumper was tripped \n ");
            Roach_LeftMtrSpeed(-50);
            Roach_RightMtrSpeed(-50);
        }
        if (Roach_ReadRearLeftBumper() == BUMPER_TRIPPED) {
            printf("Back left bumper was tripped \n ");
        }

        if (Roach_LightLevel() == 530) {
            printf("IM IN THE DARK\n");
        }


    }
}
