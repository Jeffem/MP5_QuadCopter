#ifndef _MYIPLOGO_C_
#define _MYIPLOGO_C_

#include "defines.h"
#if (USE_NETWORK == 1) && (NETWORK_USE_LOGO == 1)

#include "TCPIP_Stack/TCPIP.h"
#include "MyIpData.h"
#include "MyIpLOGO.h"
#include "euler_angles.h"
#include "MyIpHelpers.h"

//////////////////////////
// Module Variables
char MyIpfp_high_byte;
unsigned char MyIpfp_checksum;


void MyIpsio_newMsg(unsigned char);
void MyIpsio_fp_data( unsigned char inchar ) ;
void MyIpsio_fp_checksum( unsigned char inchar ) ;

void (* MyIpsio_parse ) ( unsigned char inchar ) = &MyIpsio_newMsg ;


void MyIpOnConnect_LOGO(const BYTE s)
{
    // Print any one-time connection annoucement text
    StringToSocket(s, "\r\nYou've connected to LOGO on "); // 33 chars
    StringToSocket(s, ID_LEAD_PILOT); // 15ish chars
    StringToSocket(s, "'s aircraft. More info at "); // 26 chars
    StringToSocket(s, ID_DIY_DRONES_URL); // 45ish chars
    StringToSocket(s, "\r\n"); // 2 chars
    MyIpData[s].sendPacket = TRUE; // send right away
}

void MyIpInit_LOGO(const BYTE s)
{
    // This gets called once for every socket we're configured to use for this module.
}

void MyIpService_LOGO(const BYTE s)
{
    
}

BOOL MyIpThreadSafeSendPacketCheck_LOGO(const BYTE s, const BOOL doClearFlag)
{
    // since this data comes from, and goes to, the idle thread we
    // don't need to deal with any thread issues
    BOOL sendpacket = MyIpData[s].sendPacket;
    if (doClearFlag)
    {
        MyIpData[s].sendPacket = FALSE;
    }
    return sendpacket;
}

int MyIpThreadSafeReadBufferHead_LOGO(const BYTE s)
{
    // since this data comes from, and goes to, the idle thread we
    //  don't need to deal with any thread issues
    return MyIpData[s].buffer_head;
}

void MyIpProcessRxData_LOGO(const BYTE s)
{
    BYTE rxchar;
    BOOL successfulRead;

    do
    {
        if (eTCP == MyIpData[s].type)
        {
            successfulRead = TCPGet(MyIpData[s].socket, &rxchar);
        }
        else //if (eUDP == MyIpData[s].type)
        {
            successfulRead = UDPGet(&rxchar);
        }

        if (successfulRead)
        {
            (* MyIpsio_parse) ( rxchar ) ; // parse the input byte
        }
    } while (successfulRead);
}

void MyIpsio_newMsg(const unsigned char inchar)
{
    switch (inchar)
    {
#if ( FLIGHT_PLAN_TYPE == FP_LOGO )
    case 'L':
#else
    case 'W':
#endif
        MyIpfp_high_byte = -1 ; // -1 means we don't have the high byte yet (0-15 means we do)
        MyIpfp_checksum = 0 ;
        MyIpsio_parse = &MyIpsio_fp_data ;
        flightplan_live_begin() ;
        break;
    }

}
void MyIpsio_fp_data(const unsigned char inchar )
{
    if (inchar == '*')
    {
        MyIpfp_high_byte = -1 ;
        MyIpsio_parse = &MyIpsio_fp_checksum ;
    }
    else
    {
        char hexVal = MyIphex_char_val(inchar) ;
        if (hexVal == -1)
        {
            MyIpsio_parse = &MyIpsio_newMsg ;
            return ;
        }
        else if (MyIpfp_high_byte == -1)
        {
            MyIpfp_high_byte = hexVal * 16 ;
        }
        else
        {
            flightplan_live_received_byte(MyIpfp_high_byte + hexVal) ;
            MyIpfp_high_byte = -1 ;
        }
        MyIpfp_checksum += inchar ;
    }
}


void MyIpsio_fp_checksum(const unsigned char inchar )
{
    char hexVal = MyIphex_char_val(inchar) ;
    if (hexVal == -1)
    {
        MyIpsio_parse = &MyIpsio_newMsg ;
    }
    else if (MyIpfp_high_byte == -1)
    {
        MyIpfp_high_byte = hexVal * 16 ;
    }
    else
    {
        unsigned char v = MyIpfp_high_byte + hexVal ;
        if (v == MyIpfp_checksum)
        {
            flightplan_live_commit() ;
        }
        MyIpsio_parse = &MyIpsio_newMsg ;
    }
}



#endif // #if (USE_NETWORK == 1)
#endif // _MYIPLOGO_C_
