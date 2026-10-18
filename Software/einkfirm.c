#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "disp.h"
#include "qr/qrtiny.c"
#include "uart.h"

#define DISP_WIDTH 296
#define DISP_HEIGHT 152

#define NAME_Y 10
#define NAME_X 10
#define NAME_FONT_SIZE 2
#define MAX_NAME_LEN 20
#define DESC_FONT_SIZE 1
#define MAX_DESC_LEN 50

#define PRICE_FONT_SIZE 4
#define MAX_PRICE_LEN 10

#define OLD_PRICE_FONT_SIZE 2
#define MAX_OLD_PRICE_LEN 10

#define MAX_URL_SIZE 53

#define MAX_DATA_PACKET_SIZE 256

#define QRCODE_VERSION 3

uint8_t name_buffer[MAX_NAME_LEN] = {0};
uint8_t desc_buffer[MAX_DESC_LEN] = {0};
uint8_t price_buffer[MAX_PRICE_LEN] = {0};
uint8_t old_price_buffer[MAX_OLD_PRICE_LEN] = {0};
uint8_t url_buffer[MAX_URL_SIZE] = {0};
uint8_t new_data_buffer[MAX_DATA_PACKET_SIZE] = {0};

uint8_t qr_buffer[QRTINY_BUFFER_SIZE];


int main()
{
    //Enable interrupts
    asm volatile("csrs mstatus, %0" : : "r"(0x8)); 
    asm volatile("csrs mie, %0" : : "r"(0x800));

    while (1)
    {

        size_t new_data_len = read_uart(new_data_buffer);
        char *new_data_ptr = strtok(new_data_buffer, "|");
        uint8_t buff_select = 0;
        while (new_data_ptr != NULL)
        {
            switch (buff_select)
            {
            case 0:
                strcpy(name_buffer, new_data_ptr);
                break;
            case 1:
                strcpy(desc_buffer, new_data_ptr);
                break;
            case 2:
                strcpy(price_buffer, new_data_ptr);
                break;
            case 3:
                strcpy(old_price_buffer, new_data_ptr);
                break;
            case 4:
                strcpy(url_buffer, new_data_ptr);
                break;

            default:
                break;
            }
            buff_select++;
            new_data_ptr = strtok(NULL, "|");
        }


       clear_screen();

        size_t payloadLength = 0;
        payloadLength += QrTinyWriteAlphanumeric(qr_buffer, payloadLength, url_buffer);
        uint16_t formatInfo = QRTINY_FORMATINFO_MASK_000_ECC_LOW;
        QrTinyGenerate(qr_buffer, payloadLength, formatInfo);

        uint32_t qr_size = QRTINY_DIMENSION;
        uint8_t qr_scale = 4;
        for (uint8_t scale = 4; scale >= 0; scale--)
        {
            if (qr_size * scale <= 104)
            {
                qr_scale = scale;
                break;
            }
        }
        uint32_t qr_x = (104 - qr_size * qr_scale) / 2;
        uint32_t qr_y = 152 - qr_size * qr_scale - (104 - qr_size * qr_scale) / 2;

        for (int y = 0; y < QRTINY_DIMENSION; y++)
        {
            for (int x = 0; x < QRTINY_DIMENSION; x++)
            {
                int module = QrTinyModuleGet(qr_buffer, formatInfo, x, y);
                if (module)
                {
                    for (uint32_t dy = 0; dy < qr_scale; dy++)
                        for (uint32_t dx = 0; dx < qr_scale; dx++)
                            set_pixel(qr_x + x * qr_scale + dx, qr_y + y * qr_scale + dy, module);
                }
            }
        }
        // Make and Render QR Code
        draw_text(NAME_X, NAME_Y, name_buffer, NAME_FONT_SIZE);

        uint32_t desc_y = 5 + 7 * NAME_FONT_SIZE + NAME_Y;
        draw_text(NAME_X, desc_y, desc_buffer, DESC_FONT_SIZE);

        uint32_t name_line_y = 5 + desc_y + DESC_FONT_SIZE * 7;
        for (uint32_t x = 0; x < DISP_WIDTH; x++)
            set_pixel(x, name_line_y, 1);
        for (uint32_t y = name_line_y; y < 152; y++)
            set_pixel(104, y, 1);

        uint32_t price_width = strlen(price_buffer) * 6 * PRICE_FONT_SIZE - PRICE_FONT_SIZE;
        uint32_t price_width_half = price_width / 2;
        uint32_t price_offset = 192 / 2 - price_width_half;
        uint32_t price_x = 104 + price_offset;
        draw_text(price_x, 152 - 70, price_buffer, PRICE_FONT_SIZE);

        uint8_t old_price_len = strlen(old_price_buffer);
        if (old_price_len > 0)
        {
            uint32_t old_price_width = old_price_len * 6 * OLD_PRICE_FONT_SIZE - OLD_PRICE_FONT_SIZE;
            uint32_t old_price_width_half = old_price_width / 2;
            uint32_t old_price_offset = 192 / 2 - old_price_width_half;
            uint32_t old_price_x = 104 + old_price_offset;
            uint32_t old_price_y = 152 - 10 - 7 * OLD_PRICE_FONT_SIZE;
            draw_text(old_price_x, old_price_y, old_price_buffer, OLD_PRICE_FONT_SIZE);
            for (uint32_t x = old_price_x - 5; x < old_price_x + old_price_width + 5; x++)
                set_pixel(x, old_price_y + 4 * OLD_PRICE_FONT_SIZE, 1);
        }
    }
    return 0;
}
