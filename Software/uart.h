#include <stdint.h>
#define UART_CTRL_REG 0x00020000
#define UART_STAT_REG 0x00020001
#define UART_BYTECNT_REG 0x00020002
#define UART_BUFFER_ADDR 0x00020003

#define MAX_RECIEVED_BYTES 256
uint8_t recieved_bytes[MAX_RECIEVED_BYTES] = {0};
size_t recieved_bytes_num = 0;
bool uart_new_command = false;

__attribute__((interrupt("machine"))) void uart_interrupt_handler(void)
{
    // Disable interrupts
    asm volatile("csrc mstatus, %0" : : "r"(0x8));

    recieved_bytes_num = *(uint8_t *)UART_BYTECNT_REG;

    for (int i = 0; i < MAX_RECIEVED_BYTES; i++)
    {
        if (i < recieved_bytes_num)
            recieved_bytes[i] = *(uint8_t *)(UART_BUFFER_ADDR + i);
        else
            recieved_bytes[i] = 0;
    }

    // Enable interrupts
    asm volatile("csrs mstatus, %0" : : "r"(0x8));

    uart_new_command = true;

    return;
}

size_t read_uart(uint8_t *buffer)
{
    *(uint8_t *)UART_CTRL_REG = 0b00000011;

    while (!uart_new_command);
    uart_new_command = false;

    memcpy(buffer, recieved_bytes, recieved_bytes_num);

    return recieved_bytes_num;
}
