module System (
    input clk,
    input rst,

    output spi_clk,
    output spi_mosi,
    input spi_miso,

    input uart_rx
);
    parameter   BIT_RATE        = 9600; 
    parameter   CLK_HZ          =    50_000_000;

    	// CPU inputs
        wire [31:0] cpu_address;
        reg [7:0] cpu_datain;
        wire [7:0] cpu_dataout;
        wire cpu_read;
        wire cpu_write;
        wire cpu_memReady;
        reg [15:0] platformInterruptSignals = 16'd0;
        wire machineExternalInterrupt;   
        reg machineTimerInterrupt = 1'b0;
        reg machineSoftwareInterrupt = 1'b0;
        reg userExternalInterrupt = 1'b0;
        reg userTimerInterrupt = 1'b0;
        reg userSoftwareInterrupt = 1'b0;
        wire interruptProcessing;

        // MEM interface
        wire memReady;
        wire [7:0] mem_dataout;
        reg cs_mem;

        // SPI interface
        wire SPIReady;
        wire [7:0] SPI_dataout;
        reg cs_SPI;
        wire SPI_interrupt;

        // UART interface
        wire UART_ready;
        wire [7:0] UART_dataout;
        reg UART_cs;
        wire UART_interrupt;

        // BUS interface
        wire [31:0] bus_address;
        wire [7:0] bus_data;
        wire bus_read;
        wire bus_write;
        reg bus_ready;

        assign bus_data = cpu_dataout;
        assign bus_read = cpu_read;
        assign bus_write = cpu_write;
        assign bus_address = cpu_address;
        assign cpu_memReady = bus_ready;



        aftab_core cpu_inst(
        .clk(clk),
        .rst(rst),
        .memReady(cpu_memReady),
        .memDataIn(cpu_datain),
        .memDataOut(cpu_dataout),
        .memRead(cpu_read),
        .memWrite(cpu_write),
        .memAddr(cpu_address),
        .machineExternalInterrupt(UART_interrupt),
        .machineTimerInterrupt(1'b0),
        .machineSoftwareInterrupt(1'b0),
        .userExternalInterrupt(1'b0),
        .userTimerInterrupt(1'b0),
        .userSoftwareInterrupt(1'b0),
        .platformInterruptSignals(16'b0),
        .interruptProcessing(interruptProcessing)
    );

    general_memory #(
        .DATAWIDTH(8),
        .ADDRESSWIDTH(16), 
		.FILE_NAME("einkfirm.hex")
    ) MEM (
		.clk(clk),
        .cs(cs_mem),
        .rd(bus_read),
        .wr(bus_write),
        .address(bus_address[15:0]),
        .datain(bus_data),
        .dataout(mem_dataout),
        .ready(memReady)
    );

    SPI_Wrapper spi_wrapper_inst(
            .clk(clk),
            .rst(rst),

            .cs(cs_SPI),
            .address(bus_address[1:0]),
            .read(bus_read),
            .write(bus_write),
            .in_data(bus_data),
            .out_data(SPI_dataout),
            .ready(SPIReady),
            .interrupt(SPI_interrupt),

            .spi_clk(spi_clk),
            .spi_miso(spi_miso),
            .spi_mosi(spi_mosi)
    );

    uart_wrapper #(
        .BIT_RATE(BIT_RATE),
        .CLK_HZ(CLK_HZ)
    ) uart_wrapper_inst (
        .clk(clk),
        .rst(rst),

        .cs(UART_cs),
        .address(bus_address[8:0]),
        .read(bus_read),
        .write(bus_write),
        .in_data(bus_data),
        .out_data(UART_dataout),
        .ready(UART_ready),
        .interrupt(UART_interrupt),
        .interrupt_processing(interruptProcessing),

            .uart_rx(uart_rx)
    );

    always@(bus_address,mem_dataout,memReady,SPI_dataout,SPIReady,UART_dataout,UART_ready) begin

        {cs_mem,cs_SPI,UART_cs} <= 0;
        {cpu_datain,bus_ready} <= 0;
        
        if(bus_address >= 32'h0000_0000 && bus_address <= 32'h0000_FFFF) begin //Memory
            cs_mem <= 1'b1;
            cpu_datain <= mem_dataout;
            bus_ready <= memReady;

        end else if(bus_address >= 32'h0001_0000 && bus_address <= 32'h0001_000F) begin //SPI
            cs_SPI <= 1'b1;
            cpu_datain <= SPI_dataout;
            bus_ready <= SPIReady;
         end else if(bus_address >= 32'h0002_0000 && bus_address <= 32'h0002_01FF) begin //UART
            UART_cs <= 1'b1;
            cpu_datain <= UART_dataout;
            bus_ready <= UART_ready;
         end
    end
    
endmodule