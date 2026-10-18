`timescale 1ns/1ns
module TB();
    parameter   BIT_RATE        = 115200; 
    parameter   CLK_HZ          =    100_000_000;


    reg clk,rst;
    reg spi_miso;
    wire spi_clk;
    wire spi_mosi;
    wire uart_data;

    System #(
         .BIT_RATE(BIT_RATE),
        .CLK_HZ(CLK_HZ)
    ) sys_inst(
        .clk(clk),
        .rst(rst),
        .spi_clk(spi_clk),
        .spi_mosi(spi_mosi),
        .spi_miso(spi_miso),
        .uart_rx(uart_data)
    );
    spi_display_emulator disp_inst(
        .sck(spi_clk),
        .mosi(spi_mosi)
    );

    ir_emulator #(
         .BIT_RATE(BIT_RATE),
        .CLK_HZ(CLK_HZ)
    )ir_inst(
        .clk(clk),
        .rst(rst),
        .uart_tx(uart_data)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 0;
        spi_miso = 0;

        @(posedge clk) rst = 1;
        @(posedge clk) rst = 0;

        #120000000;

        $stop;
    end

endmodule