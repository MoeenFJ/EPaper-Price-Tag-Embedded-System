module SPI_Wrapper
(
    input clk,
    input rst,
    
    input cs,
    input [1:0]address,
    input read,
    input write,
    input [7:0] in_data,
    output reg [7:0] out_data,
    output ready,
    output reg interrupt,

    output spi_clk,
    input spi_miso,
    output spi_mosi
);
    //Regs:
    // 0 : CTRL
    // 1 : STATUS
    // 2 : TX DATA
    // 3 : RX DATA


    wire [7:0] TX_Byte;
    wire TX_DV;
    wire TX_Ready;

    wire RX_DV;
    wire [7:0] RX_Byte;

    reg interrupt_en;

    reg update_configuration;

    // From : https://github.com/nandland/spi-master
    SPI_Master #(
        .SPI_MODE(0),
        .CLKS_PER_HALF_BIT(6)
    ) 
    spi_inst
    (
        .i_Rst_L(~rst),
        .i_Clk(clk),

        .i_TX_Byte(TX_Byte),
        .i_TX_DV(TX_DV),
        .o_TX_Ready(TX_Ready),

        .o_RX_DV(RX_DV),
        .o_RX_Byte(RX_Byte),

        .o_SPI_Clk(spi_clk),
        .i_SPI_MISO(spi_miso),
        .o_SPI_MOSI(spi_mosi)
    );

    assign ready = TX_Ready;
    assign  TX_Byte = in_data;


    always@(posedge clk, posedge rst) begin
        if(rst) begin
            interrupt_en <= 0;

        end else begin
            if(interrupt_en)
                interrupt <= RX_DV;

            if(cs) begin
                if(address == 2'h0) //CTRL
                begin
                    interrupt_en <= in_data[0];
                end
                else if(address == 2'h1) //STATUS
                begin
                    out_data <= 8'b0; 
                end 
            end

        end
    end
    assign TX_DV = cs&write&TX_Ready&(address == 2'h2);

    always@(address,RX_Byte) begin
        out_data <= 0;
        if(address == 2'h3) //RX
        begin
            out_data <= RX_Byte;
        end
    end

endmodule