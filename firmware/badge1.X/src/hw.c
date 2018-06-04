#include <xc.h>
#include "hw.h"
#include <plib.h>
#include <peripheral/pps.h>
#include <stdint.h>
#include <nesinput.h>

// DEVCFG3
// USERID = No Setting
#pragma config FSRSSEL = PRIORITY_7     // Shadow Register Set Priority Select (SRS Priority 7)
#pragma config PMDL1WAY = OFF           // Peripheral Module Disable Configuration (Allow multiple reconfigurations)
#pragma config IOL1WAY = OFF            // Peripheral Pin Select Configuration (Allow multiple reconfigurations)

// DEVCFG2
#pragma config FPLLIDIV = DIV_1//DIV_2         // PLL Input Divider (2x Divider)
#pragma config FPLLMUL = MUL_15//MUL_24         // PLL Multiplier (24x Multiplier)
#pragma config FPLLODIV = DIV_1//DIV_2         // System PLL Output Clock Divider (PLL Divide by 2)

// DEVCFG1
#pragma config FNOSC = FRCPLL           // Oscillator Selection Bits (Fast RC Osc with PLL)
#pragma config FSOSCEN = OFF            // Secondary Oscillator Enable (Disabled)
#pragma config IESO = ON                // Internal/External Switch Over (Enabled)
#pragma config POSCMOD = OFF            // Primary Oscillator Configuration (Primary osc disabled)
#pragma config OSCIOFNC = OFF           // CLKO Output Signal Active on the OSCO Pin (Disabled)
#pragma config FPBDIV = DIV_1           // Peripheral Clock Divisor (Pb_Clk is Sys_Clk/1)
#pragma config FCKSM = CSDCMD           // Clock Switching and Monitor Selection (Clock Switch Disable, FSCM Disabled)
#pragma config WDTPS = PS1048576        // Watchdog Timer Postscaler (1:1048576)
#pragma config WINDIS = OFF             // Watchdog Timer Window Enable (Watchdog Timer is in Non-Window Mode)
#pragma config FWDTEN = OFF             // Watchdog Timer Enable (WDT Disabled (SWDTEN Bit Controls))
#pragma config FWDTWINSZ = WINSZ_25     // Watchdog Timer Window Size (Window Size is 25%)

// DEVCFG0
#pragma config DEBUG = OFF              // Background Debugger Enable (Debugger is Disabled)
#pragma config JTAGEN = OFF             // JTAG Enable (JTAG Disabled)
#pragma config ICESEL = ICS_PGx1        // ICE/ICD Comm Channel Select (Communicate on PGEC1/PGED1)
#pragma config PWP = OFF                // Program Flash Write Protect (Disable)
#pragma config BWP = OFF                // Boot Flash Write Protect bit (Protection Disabled)
#pragma config CP = OFF                 // Code Protect (Protection Disabled)

void hw_sleep (void)
	{
    PMCONbits.ON = 0;
    set_led_word(0);
	T1CONbits.TON = 0;
	T2CONbits.TON = 0;
	T3CONbits.TON = 0;
	T4CONbits.TON = 0;
	T5CONbits.TON = 0;
	SPI1CONbits.ON = 0;
	U3MODEbits.ON = 0;
	LCD_PWR = 1;
	LCD_BKLT = 1;
	LCD_PORT = 0;
	LCD_DC = 0;
	LCD_RD = 0;
	LCD_RES = 0;
	LCD_WR = 0;
	GEN_0_PIN = 0;
	GEN_1_PIN = 0;
	GEN_2_PIN = 0;
	TRISBbits.TRISB0 = 0;
	TRISBbits.TRISB1 = 0;
	TRISG = 0;
	TRISGbits.TRISG9 = 1;
	TRISGbits.TRISG6 = 1;
	TRISC = 0;
	LATC = 0x8000;
	TRISD = 0X0;
	LATD = 0;
	TRISDbits.TRISD9 = 1;
	TRISDbits.TRISD10 = 1;
    CNPUDbits.CNPUD10 = 1;
    CNPUDbits.CNPUD9 = 1;
	TRISE = 0;
	LATE = 0;	
	TRISF = 0;
	K_R1 = 1;
	K_R2 = 1;
	K_R3 = 1;
	K_R4 = 1;
	K_R5 = 1;
	PMD1 = 0xFFFFFFFF;
	PMD2 = 0xFFFFFFFF;
	PMD3 = 0xFFFFFFFF;
	PMD4 = 0xFFFFFFFF;
	PMD5 = 0xFFFFFFFF;
	PMD6 = 0xFFFFFFFF;
	SYSKEY = 0x0;            // Write invalid key to force lock
	SYSKEY = 0xAA996655;     // Write Key1 to SYSKEY
	SYSKEY = 0x556699AA;     // Write Key2 to SYSKEY
	OSCCONSET = 0x10; // set Power-Saving mode to Slee
	SYSKEY = 0x0; // Write invalid key to force lock

	IFS0bits.INT2IF = 0;
	IEC0bits.INT2IE = 1;
	IPC2bits.INT2IP = 4;
	asm volatile("wait"); 
	IEC0bits.INT2IE = 0;
	PMD1 = 0;
	PMD2 = 0;
	PMD3 = 0;
	PMD4 = 0;
	PMD5 = 0;
	PMD6 = 0;
    
	start_after_wake();
	}



void hw_init (void)
	{
    SYSTEMConfigPerformance(SYS_CLK);
    OSCCONbits.FRCDIV = 0b000;
	ANSELB = 0;
	ANSELC = 0;
	ANSELD = 0;
	ANSELE = 0;
	ANSELF = 0;
	ANSELG = 0;
	TRISD = 0;
	TRISDbits.TRISD9 = 1;
	TRISDbits.TRISD10 = 1;
    TRISE = 0;
    TRISG = 0;
	TRISGbits.TRISG6 = 1;
	TRISGbits.TRISG9 = 1;
    TRISF = 0;
	TRISFbits.TRISF5 = 1;
    TRISB = 0x0FFF; 
    CNPUB = 0x0FFF;
    CNPUDbits.CNPUD10 = 1;
    CNPUDbits.CNPUD9 = 1;
	TRISCbits.TRISC12 = 0;
	TRISDbits.TRISD8 = 0;
	FLASH_WP = 1;
	FLASH_HOLD = 1;
	CS_FLASH = 1;
    /*
    MOSI	F3	
    MISO	F5	
    SCK		F6	
			C13	
			C14	
     */
    PPSUnLock;
    PPSOutput(4, RPF3, SDO1);	//MOSI for FLASH
	PPSInput(1, SDI1, RPF5);	//MISO for FLASH
								//SCK is fixed
	PPSInput(1, U3RX, RPC13);	//RX pin
	PPSOutput(1, RPC14, U3TX);	//TX pin
	PPSInput(3, INT2, RPG6);	//power on/off, tie to external interrupt2
    PPSLock;

	U3MODEbits.ON = 1;
//	U1MODEbits.STSEL = 1;
    U3STAbits.URXEN = 1;
    U3STAbits.UTXEN = 1;
    U3BRG = ((PB_CLK)/(16*19200)) - 1;
//    INTEnable(INT_SOURCE_UART_RX(UART3), INT_ENABLED);
//    IPC7bits.U3IP = 6;
    U3STAbits.OERR=0;

	SPI1CONbits.MSTEN = 1;
    SPI1CONbits.CKP = 0;
    SPI1CONbits.SMP = 0;
    SPI1CONbits.CKE = 1;
    SPI1BRG = 1;
    SPI1CONbits.ON = 1;
    
//    TRISBbits.TRISB13 = 0;
    LCD_BKLT = 1;
    LCD_PWR = 0;
	TRISCbits.TRISC15 = 0;

    INTEnableSystemMultiVectoredInt();
	
	//wait_ms(50);
    TFT_24_7789_Init();
	tft_fill_area(0,0,320,240,0);	//fill with black color
	//wait_ms(80);					//wait a moment to avoid flicker
	LCD_BKLT = 0;					//turn backlight on
	//fl_rst_pb();

	//if reset is after POR or manual reset, forget LED state
	if ((RCONbits.BOR)|(RCONbits.EXTR)|(RCONbits.POR))
		{
		RCON = 0;
		}	
	set_led_word(0);
  	}

extern nesinput_t kb_input;

void set_led_word (uint8_t val)
	{
	if (val&0x01) LED_R = 1;
		else LED_R = 0;
	if (val&0x02) LED_G = 1;
		else LED_G = 0;
	if (val&0x04) LED_B = 1;
		else LED_B = 0;
	}

void fast_nes_input(bool first_call)
{
    static uint8_t up_state = 1, dn_state = 1, lt_state = 1, 
            rt_state = 1, a_state = 1, b_state = 1, 
            sel_state = 1, st_state = 1;
    uint8_t key_state;
    
    if (first_call)
    {
        K_R1 = 0;
        K_R2 = 0;
        K_R3 = 0;
        K_R4 = 0;
        K_R5 = 0;
        
        up_state = 1;
        dn_state = 1;
        lt_state = 1;
        rt_state = 1;
        a_state = 1;
        b_state = 1;
        sel_state = 1;
        st_state = 1;
    }
    
    K_R5 = 1;
    
    // DOWN key
    key_state = K_C1;
    if (dn_state != key_state)
    {
        dn_state = key_state;
        input_event(&kb_input, (key_state&1)?INP_STATE_BREAK:INP_STATE_MAKE, INP_PAD_DOWN);
    }

    // RIGHT key  
    key_state = K_C2;
    if (rt_state != key_state)
    {
        rt_state = key_state;
        input_event(&kb_input, (key_state&1)?INP_STATE_BREAK:INP_STATE_MAKE, INP_PAD_RIGHT);
    }

    // LEFT key
    key_state = K_C3;
    if (lt_state != key_state)
    {
        lt_state = key_state;
        input_event(&kb_input, (key_state&1)?INP_STATE_BREAK:INP_STATE_MAKE, INP_PAD_LEFT);
    }

    // UP key
    key_state = K_C5;
    if (up_state != key_state)
    {
        up_state = key_state;
        input_event(&kb_input, (key_state&1)?INP_STATE_BREAK:INP_STATE_MAKE, INP_PAD_UP);
    }

    // A key, -" 
    key_state = K_C10;
    if (a_state != key_state)
    {
        a_state = key_state;
        input_event(&kb_input, (key_state&1)?INP_STATE_BREAK:INP_STATE_MAKE, INP_PAD_A);
    }

    // B key, DEL
    key_state = K_C6;
    if (b_state != key_state)
    {
        b_state = key_state;
        input_event(&kb_input, (key_state&1)?INP_STATE_BREAK:INP_STATE_MAKE, INP_PAD_B);
    }

    // START key, BKSP
    key_state = K_C9;
    if (st_state != key_state)
    {
        st_state = key_state;
        input_event(&kb_input, (key_state&1)?INP_STATE_BREAK:INP_STATE_MAKE, INP_PAD_START);
    }

    K_R5 = 0;
    
    // SELECT key, BRK/COL
    key_state = KEY_BRK;
    if (sel_state != key_state)
    {
        sel_state = key_state;
        input_event(&kb_input, (key_state&1)?INP_STATE_BREAK:INP_STATE_MAKE, INP_PAD_SELECT);
    }
}
