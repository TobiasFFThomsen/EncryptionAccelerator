#include <machine/patmos.h>
#include <stdio.h>
#include <stdlib.h>

#define SHA3_STATUS             (PATMOS_IO_SHA3)
#define SHA3_INPUT              (PATMOS_IO_SHA3)
#define SHA3_M_LEN              (PATMOS_IO_SHA3+80)
#define SHA3_DATA               (PATMOS_IO_SHA3+4)

#define SHA3_ROUND_COUNT        (PATMOS_IO_SHA3+72)
#define SHA3_BUFFER_COUNT       (PATMOS_IO_SHA3+76)
#define SHA3_STATE_REG          (PATMOS_IO_SHA3+80)


static volatile _IODEV int *sha3_status         = (volatile _IODEV int *)SHA3_STATUS;
static volatile _IODEV int *sha3_state_reg      = (volatile _IODEV int *)SHA3_STATE_REG;
static volatile _IODEV int *sha3_buffer_count   = (volatile _IODEV int *)SHA3_BUFFER_COUNT;
static volatile _IODEV int *sha3_input          = (volatile _IODEV int *)SHA3_INPUT;
static volatile _IODEV int *sha3_message_len    = (volatile _IODEV int *)SHA3_M_LEN;
static volatile _IODEV int *sha3_round_count    = (volatile _IODEV int *)SHA3_ROUND_COUNT;
static volatile _IODEV int *sha3_data_0         = (volatile _IODEV int *)(SHA3_DATA);
static volatile _IODEV int *sha3_data_1         = (volatile _IODEV int *)(SHA3_DATA+4);
static volatile _IODEV int *sha3_data_2         = (volatile _IODEV int *)(SHA3_DATA+8);
static volatile _IODEV int *sha3_data_3         = (volatile _IODEV int *)(SHA3_DATA+12);
static volatile _IODEV int *sha3_data_4         = (volatile _IODEV int *)(SHA3_DATA+16);
static volatile _IODEV int *sha3_data_5         = (volatile _IODEV int *)(SHA3_DATA+20);
static volatile _IODEV int *sha3_data_6         = (volatile _IODEV int *)(SHA3_DATA+24);
static volatile _IODEV int *sha3_data_7         = (volatile _IODEV int *)(SHA3_DATA+28);
static volatile _IODEV int *sha3_data_8         = (volatile _IODEV int *)(SHA3_DATA+32);
static volatile _IODEV int *sha3_data_9         = (volatile _IODEV int *)(SHA3_DATA+36);
static volatile _IODEV int *sha3_data_10        = (volatile _IODEV int *)(SHA3_DATA+40);
static volatile _IODEV int *sha3_data_11        = (volatile _IODEV int *)(SHA3_DATA+44);
static volatile _IODEV int *sha3_data_12        = (volatile _IODEV int *)(SHA3_DATA+48);
static volatile _IODEV int *sha3_data_13        = (volatile _IODEV int *)(SHA3_DATA+52);
static volatile _IODEV int *sha3_data_14        = (volatile _IODEV int *)(SHA3_DATA+56);
static volatile _IODEV int *sha3_data_15        = (volatile _IODEV int *)(SHA3_DATA+60);




void sha_3(int *input, int block_length, int *result);

int main() 
{
    (*sha3_message_len) = 2;

    (*sha3_input) = 0x11111111;     //1
    (*sha3_input) = 0x11111111;     //2
    (*sha3_input) = 0x11111111;     //3
    (*sha3_input) = 0x11111111;     //4
    (*sha3_input) = 0x11111111;     //5
    (*sha3_input) = 0x11111111;     //6
    (*sha3_input) = 0x11111111;     //7
    (*sha3_input) = 0x11111111;     //8
    (*sha3_input) = 0x11111111;     //9
    (*sha3_input) = 0x11111111;     //10
    (*sha3_input) = 0x11111111;     //11
    (*sha3_input) = 0x11111111;     //12
    (*sha3_input) = 0x11111111;     //13
    (*sha3_input) = 0x11111111;     //14
    (*sha3_input) = 0x11111111;     //15
    (*sha3_input) = 0x11111111;     //16
    (*sha3_input) = 0x11111111;     //17
    (*sha3_input) = 0x11111111;     //18


    while(*(sha3_status)!=4){}

    (*sha3_input) = 0x00000006;     //1
    (*sha3_input) = 0x00000000;     //2
    (*sha3_input) = 0x00000000;     //3
    (*sha3_input) = 0x00000000;     //4
    (*sha3_input) = 0x00000000;     //5
    (*sha3_input) = 0x00000000;     //6
    (*sha3_input) = 0x00000000;     //7
    (*sha3_input) = 0x00000000;     //8
    (*sha3_input) = 0x00000000;     //9
    (*sha3_input) = 0x00000000;     //10
    (*sha3_input) = 0x00000000;     //11
    (*sha3_input) = 0x00000000;     //12
    (*sha3_input) = 0x00000000;     //13
    (*sha3_input) = 0x00000000;     //14
    (*sha3_input) = 0x00000000;     //15
    (*sha3_input) = 0x00000000;     //16
    (*sha3_input) = 0x00000000;     //17
    (*sha3_input) = 0x80000000;     //18
    
    while(*(sha3_status)!=2){}
    
    printf("1. run: \n");
    /*
    printf("%x\n",*(sha3_data_0));
    printf("%x\n",*(sha3_data_1));
    printf("%x\n",*(sha3_data_2));
    printf("%x\n",*(sha3_data_3));
    printf("%x\n",*(sha3_data_4));
    printf("%x\n",*(sha3_data_5));
    printf("%x\n",*(sha3_data_6));
    printf("%x\n",*(sha3_data_7));
    printf("%x\n",*(sha3_data_8));
    printf("%x\n",*(sha3_data_9));
    printf("%x\n",*(sha3_data_10));
    printf("%x\n",*(sha3_data_11));
    printf("%x\n",*(sha3_data_12));
    printf("%x\n",*(sha3_data_13));
    printf("%x\n",*(sha3_data_14));
    */
    printf("%x\n",*(sha3_data_15));
    

    /*
    while(*(sha3_status)!=2){
        printf("s: %d, s_state: %d\n",*(sha3_status),*(sha3_state_reg));
    }

    */


   // printf("Buffer counter: %d\n", (*sha3_buffer_count));

    (*sha3_message_len) = 1;
    printf("l: %d\n", (*sha3_message_len));
    
    (*sha3_input) = 0x0000000d;     //1
    (*sha3_input) = 0x00000000;     //2
    (*sha3_input) = 0x00000000;     //3
    (*sha3_input) = 0x00000000;     //4
    (*sha3_input) = 0x00000000;     //5
    (*sha3_input) = 0x00000000;     //6
    printf("c: %d, s: %d, state_reg: %d \n",*(sha3_buffer_count),*(sha3_status), *(sha3_state_reg));
    (*sha3_input) = 0x00000000;     //7
    (*sha3_input) = 0x00000000;     //8
    (*sha3_input) = 0x00000000;     //9
    (*sha3_input) = 0x00000000;     //10
    (*sha3_input) = 0x00000000;     //11
    (*sha3_input) = 0x00000000;     //12
    (*sha3_input) = 0x00000000;     //13
    (*sha3_input) = 0x00000000;     //14
    (*sha3_input) = 0x00000000;     //15
    (*sha3_input) = 0x00000000;     //16
    (*sha3_input) = 0x00000000;     //17
    printf("c: %d \n",*(sha3_buffer_count));
    (*sha3_input) = 0x80000000;     //18
    
   // printf("2. run: \n");

    while(*(sha3_status)!=2){
        printf("s: %d, c: %d, s_reg: %d \n",*(sha3_status),*(sha3_buffer_count),(*sha3_state_reg));
    }

    printf("%x\n",*(sha3_data_0));
    printf("%x\n",*(sha3_data_1));
    printf("%x\n",*(sha3_data_2));
    printf("%x\n",*(sha3_data_3));
    printf("%x\n",*(sha3_data_4));
    printf("%x\n",*(sha3_data_5));
    printf("%x\n",*(sha3_data_6));
    printf("%x\n",*(sha3_data_7));
    printf("%x\n",*(sha3_data_8));
    printf("%x\n",*(sha3_data_9));
    printf("%x\n",*(sha3_data_10));
    printf("%x\n",*(sha3_data_11));
    printf("%x\n",*(sha3_data_12));
    printf("%x\n",*(sha3_data_13));
    printf("%x\n",*(sha3_data_14));
    printf("%x\n",*(sha3_data_15));

    
}
