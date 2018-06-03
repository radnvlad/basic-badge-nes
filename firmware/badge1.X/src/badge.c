#include <xc.h>
#include "badge.h"
#include <plib.h>
#include <stdlib.h>


/************ Defines ****************************/
#define STDIO_LOCAL_BUFF_SIZE	25

//Prompt handling defines
#define COMMAND_MAX 32
#define TEXT_LEFT	4
#define PROMPT_Y	15
#define CRACK_Y		17
#define VERSION_X	33
#define VERSION_Y	18
#define CRACK_TIMEOUT 4000
//Menu color values
#define MENU_FRAME_FG	12
#define MENU_FRAME_BG	0
#define MENU_BANNER_FG	0
#define MENU_BANNER_BG	15
#define MENU_HEADER_FG	15
#define MENU_HEADER_BG	8
#define MENU_ENTRY_FG	15
#define MENU_ENTRY_BG	9
#define MENU_DEFAULT_FG 15
#define MENU_DEFAULT_BG 0
#define MENU_VERSION_FG	8
#define MENU_SECRET_COLOR 10
#define MENU_CRACK_COLOR 14
/********** End Defines **************************/

//B_BDG005
void wake_return(void)
	{
	//By default, this will be called after waking from sleep. It should do
	//noting. This is a placeholder for user programs to set the function pointer.
	return;
	}

//housekeeping stuff. call this function often
void loop_badge(void)
	{
	if (K_PWR==0)
		{
		while (K_PWR==0);
		//wait_ms(100);
		hw_sleep();
		//wait_ms(30);
		while (K_PWR==0);
		//wait_ms(300);
		}
}

