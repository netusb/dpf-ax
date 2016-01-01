//
// Type: acme_10
// Comment: 2.4" 320x240 LCD, 2 megabytes flash, no brand or model name
//
// Status: supported
// Credit: By Boris Gjenero
// Date: 2015-01-04
//
// Url: http://www.globalshiping.com/en/usb-24-tft-16mb-digital-photo-frame-flash-can-store-32-of-your-favorite-photos.html
//
// The signature identify.py detected (OpenWin, Init, Backlight, Contrast)
// CRC: 0x30bbd596, 0xfb8b5baa, 1, 1
//
//
#define LCD_CONTROLLER_CUSTOM
#define LCD_WIDTH  320L
#define LCD_HEIGHT 240L

// Original firmware uses full brightness without ability to change that,
// but brightness can be changed using PWM.
#define LCD_DEFAULT_BRIGHTNESS_VALUE 21
#define LCD_USER_ADJUSTABLE_BRIGHTNESS   //brightness adjustable in menu
//#define LCD_MAX_BRIGHTNESS_VALUE 21      //undefine & change, if max != 21

#define LCD_DEFAULT_CONTRAST_VALUE 5
#define LCD_MAX_CONTRAST_VALUE 7
//#define LCD_USER_ADJUSTABLE_CONTRAST     //undefine to make contrast adjustable in menu

//NOTE: PWM_NONE - pwm output disabled, timer1 stopped
//      PWM_P23  - pwm output on P2.3, timer1 running
//      PWM_P40  - pwm output on P4.0, timer1 running
//#define LCD_TIMER1_PWM_NONE
#define LCD_TIMER1_PWM_P23
//#define LCD_TIMER1_PWM_P40

//NOTE: Undefine this if there are backlight-flashes on power-on
//      or if backlight stays on after menu|off
//#define LCD_P23_ACTIVE_HIGH

//NOTE: Init value for tmr1per
//      Undefine if _custom_backlighttbl2 used or lcd_custom_setbacklight initializes period
//      (pwm output on P2.3 or P4.0, timer running, period not initialized)
#define LCD_TIMER1_PERIOD 0x00ff  //standard table value

//NOTE: uncomment only one of the following 4 values!
//#define LCD_BACKLIGHT_NONE
//#define LCD_BACKLIGHT_VALUE
#define LCD_BACKLIGHT_TABLE
//#define LCD_BACKLIGHT_CUSTOM

// NOTE: uncomment only one of the following 3 values!
// Original firmware has no adjustment and its table isn't properly set up
#define LCD_CONTRAST_NONE
//#define LCD_CONTRAST_TABLE
//#define LCD_CONTRAST_CUSTOM

// NOTE: uncomment to swap the buttons for up/down menu navigation
//#define LCD_LRBUTTON_SWAP
