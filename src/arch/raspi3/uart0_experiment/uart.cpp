/*
 * Copyright (C) 2018 bzt (bztsrc@github)
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use, copy,
 * modify, merge, publish, distribute, sublicense, and/or sell copies
 * of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 */

#include <def.h>
#include <io/gpio/GPIO.h>
#include "gpio.h"
#include "mbox.h"
#include <new>
#include <io/uart/PL011.h>

/* PL011 UART registers */
#define UART0_DR        reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00201000)
#define UART0_FR        reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00201018)
#define UART0_IBRD      reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00201024)
#define UART0_FBRD      reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00201028)
#define UART0_LCRH      reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x0020102C)
#define UART0_CR        reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00201030)
#define UART0_IMSC      reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00201038)
#define UART0_ICR       reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00201044)

/**
 * Set baud rate and characteristics (115200 8N1) and map to GPIO
 */
void uart_init()
{
//    register unsigned int r;
	uint32_t r=0;
	(void)r;
    
    /* initialize UART */
    *UART0_CR = 0;         // turn off UART0

    /* set up clock for consistent divisor values */
    mbox[0] = 8*4;
    mbox[1] = MBOX_REQUEST;
    mbox[2] = MBOX_TAG_SETCLKRATE; // set clock rate
    mbox[3] = 12;
    mbox[4] = 8;
    mbox[5] = 2;           // UART clock
    mbox[6] = 4000000;     // 4Mhz
    mbox[7] = MBOX_TAG_LAST;
    mbox_call(MBOX_CH_PROP);

    /* map UART0 to GPIO pins */
//    r=*GPFSEL1;
//    r&=~((7<<12)|(7<<15)); // gpio14, gpio15
//    r|=(4<<12)|(4<<15);    // alt0
//    *GPFSEL1 = r;
//    *GPPUD = 0;            // enable pins 14 and 15
//    r=150; while(r--) { asm volatile("nop"); }
//    *GPPUDCLK0 = (1<<14)|(1<<15);
//    r=150; while(r--) { asm volatile("nop"); }
//    *GPPUDCLK0 = 0;        // flush GPIO setup

    // 用自写的GPIO替代 -- 正确
	new (&gpio) GPIO(GPIO_BASE);
//	// 设置GPIO 14,15为ALT_0
	gpio.selectAltFunction(14, GPIO::ALT_0);
	gpio.selectAltFunction(15, GPIO::ALT_0);


    // 分解成两步 -- 可行
//    uint32_t pins[]={14,15};
//    for(size_t i=0;i!=arrsizeof(pins);++i)
//    {
//    	r=*GPFSEL1;
//    }
//	r=*GPFSEL1;
//	r&=~((7<<12)); // gpio14, gpio15
//	r|=(4<<12);    // alt0
//	*GPFSEL1 = r;
//	*GPPUD = 0;            // enable pins 14 and 15
//	r=150; while(r--) { asm volatile("nop"); }
//	*GPPUDCLK0 = (1<<14);
//	r=150; while(r--) { asm volatile("nop"); }
//	*GPPUDCLK0 = 0;        // flush GPIO setup

//	r=*GPFSEL1;
//	r&=~((7<<15)); // gpio14, gpio15(7<<15)
//	r|=(4<<15);    // alt0
//	*GPFSEL1 = r;
//	*GPPUD = 0;            // enable pins 14 and 15
//	r=150; while(r--) { asm volatile("nop"); }
//	*GPPUDCLK0 = (1<<15);
//	r=150; while(r--) { asm volatile("nop"); }
//	*GPPUDCLK0 = 0;        // flush GPIO setup

	// 用自写的PL011替代
	new (&pl011) PL011(UART0_BASE);
	pl011.init();

//    *UART0_ICR = 0x7FF;    // clear interrupts
//    *UART0_IBRD = 2;       // 115200 baud
//    *UART0_FBRD = 0xB;
//    *UART0_LCRH = 0b11<<5; // 8n1
//    *UART0_CR = 0x301;     // enable Tx, Rx, FIFO
}

/**
 * Send a character
 */
void uart_send(unsigned int c) {
    /* wait until we can send */
    do{asm volatile("nop");}while(*UART0_FR&0x20);
    /* write the character to the buffer */
    *UART0_DR=c;
}

/**
 * Receive a character
 */
char uart_getc() {
    char r;
    /* wait until something is in the buffer */
    do{asm volatile("nop");}while(*UART0_FR&0x10);
    /* read it and return */
    r=static_cast<char>(*UART0_DR);
    /* convert carrige return to newline */
    return r=='\r'?'\n':r;
}

/**
 * Display a string
 */
void uart_puts(const char *s) {
    while(*s) {
        /* convert newline to carrige return + newline */
        uart_send(*s++);
    }
}

/**
 * Display a binary value in hexadecimal
 */
void uart_hex(unsigned int d) {
    unsigned int n;
    int c;
    for(c=28;c>=0;c-=4) {
        // get highest tetrad
        n=(d>>c)&0xF;
        // 0-9 => '0'-'9', 10-15 => 'A'-'F'
        n+=n>9?0x37:0x30;
        uart_send(n);
    }
}