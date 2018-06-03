#include <xc.h>
#include "hw.h"
#include "disp.h"
#include <stdint.h>

#include <stdlib.h>
#include <plib.h>        /* PIC32 peripheral library */
#include <xc.h>            
#include <sys/attribs.h>  

#define _IPC7_PMPIS_POSITION                     0x00000010
#define _IPC7_PMPIS_MASK                         0x00030000
#define _IPC7_PMPIS_LENGTH                       0x00000002

#define _IPC7_PMPIP_POSITION                     0x00000012
#define _IPC7_PMPIP_MASK                         0x001C0000
#define _IPC7_PMPIP_LENGTH                       0x00000003

// PMP defines
#define PMP_EXT_ADDR		0x8000		// the external memory device address


#define PMP_CONTROL	(PMP_ON | PMP_MUX_OFF | PMP_WRITE_EN |\
             		PMP_CS2_CS1_OFF | PMP_WRITE_POL_LO)

#define PMP_MODE        (PMP_IRQ_READ_WRITE | PMP_AUTO_ADDR_OFF | PMP_DATA_BUS_8 | PMP_MODE_MASTER2 |\
                     PMP_WAIT_BEG_3 | PMP_WAIT_MID_7 | PMP_WAIT_END_3 )


static unsigned char* volatile	pCurrDmaSrc;		// current DMA source buffer pointer
static unsigned char* volatile	pCurrDmaDst;		// current DMA destination buffer pointer
static volatile int		dmaPmpWrite;		// telling the ISR the transfer direction
static volatile int		dmaTxferDone = 1;		// transfer done flag

static int			dmaChn;			// the DMA channel to use

static const unsigned int dmaFullSize = 256 * 240 * 2;
// we want screen size to be a multiple of dmaChunkSize and dmaChunkSize to fit the remaining RAM
// this refers to 16b data after palettizing
static const unsigned int dmaChunkSize = 256 * 240 / 5 * 2;
// this refers to 8b data straight from framebuffer
static const unsigned int dataChunkSize = 256 * 240 / 5;
static uint8_t palChunk[256 * 240 / 5 * 2]; 

static unsigned int dmaRemSize = 0;

extern uint16_t myPalette[256];

// this needs to be further optimized!
static inline void disp_apply_palette(uint8_t * buf)
{
    register int i;
    register int j= dataChunkSize * 2 - 1;
    register uint16_t tmp = 0;

    for (i=dataChunkSize; i; i--)
    {
        tmp = myPalette[buf[i]];
        palChunk[j--] = tmp & 0x0f;
        palChunk[j--] = tmp >> 8;
    }
}


void __ISR(_DMA0_VECTOR, IPL5AUTO) DmaIntHandler(void)
{
	// another block is done
	if(dmaRemSize != 0)
	{	
		dmaRemSize-=dmaChunkSize;
        pCurrDmaSrc+=dataChunkSize;
        
        disp_apply_palette(pCurrDmaSrc);

        DmaChnSetTxfer(dmaChn, palChunk, pCurrDmaDst, dmaChunkSize, 1, 1);

		DmaChnEnable(dmaChn);
		DmaChnForceTxfer(dmaChn);
	}
    // we're done, last block was transferred
    else
    {
        dmaTxferDone=1;
    }

	DmaChnClrEvFlags(dmaChn, DMA_EV_BLOCK_DONE);
	DmaChnClrIntFlag(dmaChn);
}

void disp_pmp_dma_init(uint8_t * srcBuff)
{
    // setup the PMP
    mPMPOpen(PMP_CONTROL, PMP_MODE, PMP_PEN_ALL, PMP_INT_OFF);
    
	dmaChn=0;		// set the DMA channel to use

	// Open the desired DMA channel. We use priority 0.
	DmaChnOpen(dmaChn, 0, DMA_OPEN_DEFAULT);
    PMAEN = 0; // do not use address bytes

	// set the transfer event control: what event is to start the DMA transfer
	DmaChnSetEventControl(dmaChn, DMA_EV_START_IRQ(_PMP_IRQ));

	// init the variables that the ISR needs
	pCurrDmaDst=(void*)&PMDIN;
	//dmaPmpWrite=1;	// transfer direction

	// set the transfer parameters: source & destination address, source & destination size, number of bytes per event
	//DmaChnSetTxfer(dmaChn, palChunk, pCurrDmaDst, dmaChunkSize, 1, 1);

	// set the DMA events to generate an interrupt, the interrupt priority and sub-priority. Enable the DMA interrupt.
	DmaChnSetEvEnableFlags(dmaChn, DMA_EV_BLOCK_DONE);
	DmaChnIntEnable(dmaChn);
    IPC10bits.DMA0IP = 5;
    IPC10bits.DMA0IS = 3;
    

	// globally enable the interrupts
	//INTEnableSystemMultiVectoredInt();

	// once we configured the DMA channel we can enable it
	// now it's ready and waiting for an event to occur...
	//DmaChnEnable(dmaChn);
	// force the first transfer, the PMP is quiet
	//DmaChnForceTxfer(dmaChn);

}

void tft_fill_area (uint16_t x, uint16_t y, uint16_t xlen, uint16_t ylen, uint16_t back)
{
    uint32_t i,j;
    tft_set_write_area(x,y,xlen-1,ylen-1);
    TFT_24_7789_Write_Command(0x2C);
    //FIXME: Why do I need these +1 adjustments. Off-by-one in tft_set_write_area?
    for (i=0; i<((xlen)*(ylen)); i++)
    {
        TFT_24_7789_Write_Data33(back);
    }
}





inline void tft_writebuf (uint8_t *buf)
{
    // still busy displaying last frame, skip this one
    if (!dmaTxferDone)
        return;
    
    PMCONbits.ON = 0;
    
    const uint16_t xlen = 256, ylen = 240;
    tft_set_write_area((320-xlen)/2, (240-ylen)/2, xlen-1, ylen-1);
    TFT_24_7789_Write_Command(0x2C);
    
    PMCONbits.ON = 1;
    
    disp_apply_palette(buf);
    dmaTxferDone = 0;
    pCurrDmaSrc = buf;
    dmaRemSize = dmaFullSize - dmaChunkSize;
    DmaChnSetTxfer(dmaChn, palChunk, pCurrDmaDst, dmaChunkSize, 1, 1);
    DmaChnEnable(dmaChn);
    DmaChnForceTxfer(dmaChn);

}

inline void tft_set_write_area (uint16_t x, uint16_t y, uint16_t xlen, uint16_t ylen)
	{
	TFT_24_7789_Write_Command(0x002A);
	TFT_24_7789_Write_Data((x>>8)&0xFF);
	TFT_24_7789_Write_Data((x>>0)&0xFF);
	TFT_24_7789_Write_Data(((x+xlen)>>8)&0xFF);
	TFT_24_7789_Write_Data(((x+xlen)>>0)&0xFF);
	TFT_24_7789_Write_Command(0x2B);
	TFT_24_7789_Write_Data((y>>8)&0xFF);
	TFT_24_7789_Write_Data((y>>0)&0xFF);
	TFT_24_7789_Write_Data(((y+ylen)>>8)&0xFF);
	TFT_24_7789_Write_Data(((y+ylen)>>0)&0xFF);
	}



/*******************************************************************************/
void TFT_24_7789_Write_Command(uint16_t command)
	{
	LCD_RD = 1;
	LCD_DC = 0;
	LCD_WR_CLR;
	LCD_PORT = command;
	LCD_WR_SET;
	LCD_DC = 1;
	}
/*******************************************************************************/
inline void TFT_24_7789_Write_Data(uint16_t data1)
	{
	LCD_WR_CLR;
	LCD_PORT = data1;
	LCD_WR_SET;
	}

inline void TFT_24_7789_Write_Data3(uint16_t data1,uint16_t data2, uint16_t data3)
	{
	LCD_WR_CLR;
	LCD_PORT = data1;
	LCD_WR_SET;
	LCD_WR_CLR;
	LCD_PORT = data2;
	LCD_WR_SET;
	LCD_WR_CLR;
	LCD_PORT = data3;
	LCD_WR_SET;
	}

inline void TFT_24_7789_Write_Data33(uint16_t data)
	{
	LCD_WR_CLR;
	LCD_PORT = (data >> 8);
	LCD_WR_SET;
	LCD_WR_CLR;
	LCD_PORT = (data & 0xff);
	LCD_WR_SET;
	}

/*******************************************************************************/
void TFT_24_7789_Init(void)
	{
    int i;
    
	LCD_RES = 0;
	LCD_RD = 1;
	LCD_WR = 1;
	LCD_RES = 1;
    i = 0;
    while (i < 200000)
    {
        i++;
        asm volatile("nop");
    }
	TFT_24_7789_Write_Command(0x0029);//exit SLEEP mode
    i = 0;
    while (i < 200000)
    {
        i++;
        asm volatile("nop");
    }
	TFT_24_7789_Write_Command(0x0036);
	TFT_24_7789_Write_Data(0x70);//MADCTL: memory data access control
	TFT_24_7789_Write_Command(0x003A);
	//TFT_24_7789_Write_Data(0x0066);//COLMOD: Interface Pixel format
    TFT_24_7789_Write_Data(0x0055);//COLMOD: Interface Pixel format
	TFT_24_7789_Write_Command(0x00B2);
	TFT_24_7789_Write_Data(0x0C);
	TFT_24_7789_Write_Data(0x0C);
	TFT_24_7789_Write_Data(0x00);
	TFT_24_7789_Write_Data(0x33);
	TFT_24_7789_Write_Data(0x33);//PORCTRK: Porch setting
	TFT_24_7789_Write_Command(0x00B7);
	TFT_24_7789_Write_Data(0x0035);//GCTRL: Gate Control
	TFT_24_7789_Write_Command(0x00BB);
	TFT_24_7789_Write_Data(0x002B);//VCOMS: VCOM setting
	TFT_24_7789_Write_Command(0x00C0);
	TFT_24_7789_Write_Data(0x002C);//LCMCTRL: LCM Control
	TFT_24_7789_Write_Command(0x00C2);
	TFT_24_7789_Write_Data(0x0001);
	TFT_24_7789_Write_Data(0xFF);//VDVVRHEN: VDV and VRH Command Enable
	TFT_24_7789_Write_Command(0x00C3);
	TFT_24_7789_Write_Data(0x0011);//VRHS: VRH Set
	TFT_24_7789_Write_Command(0x00C4);
	TFT_24_7789_Write_Data(0x0020);//VDVS: VDV Set[10]
	TFT_24_7789_Write_Command(0x00C6);
	TFT_24_7789_Write_Data(0x000F);//FRCTRL2: Frame Rate control in normal mode
	TFT_24_7789_Write_Command(0x00D0);
	TFT_24_7789_Write_Data(0x00A4);
	TFT_24_7789_Write_Data(0xA1);//PWCTRL1: Power Control 1
	TFT_24_7789_Write_Command(0x00E0);
	TFT_24_7789_Write_Data(0x00D0);
	TFT_24_7789_Write_Data(0x0000);
	TFT_24_7789_Write_Data(0x0005);
	TFT_24_7789_Write_Data(0x000E);
	TFT_24_7789_Write_Data(0x0015);
	TFT_24_7789_Write_Data(0x000D);
	TFT_24_7789_Write_Data(0x0037);
	TFT_24_7789_Write_Data(0x0043);
	TFT_24_7789_Write_Data(0x0047);
	TFT_24_7789_Write_Data(0x0009);
	TFT_24_7789_Write_Data(0x0015);
	TFT_24_7789_Write_Data(0x0012);
	TFT_24_7789_Write_Data(0x0016);
	TFT_24_7789_Write_Data(0x0019);//PVGAMCTRL: Positive Voltage Gamma control
	TFT_24_7789_Write_Command(0x00E1);
	TFT_24_7789_Write_Data(0x00D0);
	TFT_24_7789_Write_Data(0x0000);
	TFT_24_7789_Write_Data(0x0005);
	TFT_24_7789_Write_Data(0x000D);
	TFT_24_7789_Write_Data(0x000C);
	TFT_24_7789_Write_Data(0x0006);
	TFT_24_7789_Write_Data(0x002D);
	TFT_24_7789_Write_Data(0x0044);
	TFT_24_7789_Write_Data(0x0040);
	TFT_24_7789_Write_Data(0x000E);
	TFT_24_7789_Write_Data(0x001C);
	TFT_24_7789_Write_Data(0x0018);
	TFT_24_7789_Write_Data(0x0016);
	TFT_24_7789_Write_Data(0x0019);//NVGAMCTRL: Negative Voltage Gamma control
	TFT_24_7789_Write_Command(0x002A);
	TFT_24_7789_Write_Data(0x0000);
	TFT_24_7789_Write_Data(0x0000);
	TFT_24_7789_Write_Data(0x0001);
	TFT_24_7789_Write_Data(0x003F);//X address set
	TFT_24_7789_Write_Command(0x002B);
	TFT_24_7789_Write_Data(0x0000);
	TFT_24_7789_Write_Data(0x0000);
	TFT_24_7789_Write_Data(0x0000);
	TFT_24_7789_Write_Data(0x00EF);//Y address set
	TFT_24_7789_Write_Command(0x11);
	TFT_24_7789_Write_Command(0x38);
	TFT_24_7789_Write_Command(0x13);

	}
/*******************************************************************************/

