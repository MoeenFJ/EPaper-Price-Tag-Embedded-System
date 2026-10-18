#include <stdint.h>

#define SPI_CTRL_REG 0x00010000
#define SPI_STAT_REG 0x00010001
#define SPI_TX_REG 0x00010002
#define SPI_RX_REG 0x00010003


void spi_write_byte(uint8_t byte)
{
    *((uint8_t*)SPI_TX_REG) = byte;
    return;
}
void spi_write_short(uint16_t data)
{
    *((uint8_t*)SPI_TX_REG) = (data&0xFF00)>>8;
    *((uint8_t*)SPI_TX_REG) = data&0x00FF;
    return;
}