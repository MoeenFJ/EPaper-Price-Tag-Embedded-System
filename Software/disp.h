#include "spi.h"
#include "font.h"


void set_pixel(uint32_t x,uint32_t y, uint8_t value)
{
    spi_write_byte(0x00);
    spi_write_short(x);
    spi_write_short(y);
    spi_write_byte(value);
    return;
}
void clear_screen()
{
    spi_write_byte(0x01);
}

void draw_char(uint32_t x, uint32_t y,uint8_t chr, uint32_t size)
{
    
        uint32_t row,col;
        for(row  =  0; row < 7 ; row++)
        {
            for(col = 0; col < 5 ; col++)
            {
                if(FONT[chr][row][col])
                {
                    for(uint8_t xs  =  0; xs < size ; xs++)
                    {
                        for(uint8_t ys = 0; ys < size; ys++)
                        {
                            set_pixel(x + col*size + xs, y + row*size + ys,1);
                        }
                    }
                }
            }
        }
    return;
}

void draw_text(uint32_t x, uint32_t y, uint8_t* text, uint32_t size)
{
    uint32_t i = 0;
    uint32_t cx = x;
    while(text[i] != '\0')
    { 
        draw_char(cx,y,text[i],size);
        cx += 6*size;
        i++;
    }
}