module uart_wrapper(
    input clk,
    input rst,

    input cs,
    input [8:0]address,
    input read,
    input write,
    input [7:0] in_data,
    output reg [7:0] out_data,
    output ready,
    output reg interrupt,
    input interrupt_processing,

    input uart_rx
);
    parameter   BIT_RATE        = 9600; 
    parameter   CLK_HZ          =    50_000_000;
    parameter  TIMEOUT_VALUE = 10_000;

    reg interrupt_en;
    reg bytes_available;

    //UART Reciever
    wire [7:0] uart_rx_data;
    wire uart_rx_valid;
    reg uart_rx_en;

    // From https://github.com/ben-marshall/uart
    uart_rx #(
        .BIT_RATE(BIT_RATE),
        .CLK_HZ(CLK_HZ)
    ) uart_rx_inst (
        .clk(clk),
        .resetn(~rst),
        .uart_rxd(uart_rx),
        .uart_rx_en(uart_rx_en),
        .uart_rx_data(uart_rx_data),
        .uart_rx_valid(uart_rx_valid),
        .uart_rx_break()
    );

    reg [7:0] rx_buffer[0:255];

    reg [7:0] byte_count;
    wire byte_counter_init;
    wire byte_counter_en;
    always@(posedge clk) begin
        if(rst) begin
            byte_count <= 8'd0;
        end else if(byte_counter_init) begin
            byte_count <= 8'd0;
        end else if(byte_counter_en) begin
            byte_count <= byte_count + 1;
        end
    end

    reg [13:0] timer_count;
    wire timer_init;
    wire timer_en;
    wire timeout;
    always@(posedge clk) begin
        if(rst) begin
            timer_count <= 14'd0;
        end else if(timer_init) begin
            timer_count <= TIMEOUT_VALUE;
        end else if(timer_en) begin
            timer_count <= timer_count - 1;
        end
    end




    // CTRL
    reg [7:0] bytes_ready;

    reg timeout_strobe;
    assign byte_counter_en = uart_rx_valid; //Increase the counter on new byte
    assign timer_init = uart_rx_valid;
    assign timer_en = |timer_count; //If not zero count down
    assign timeout = ~|timer_count;
    assign byte_counter_init = timeout_strobe;
    
    assign bytes_available = |bytes_ready;
    assign ready = 1'b1;

    parameter  op_A = 2'b00, op_B = 2'b01, op_C = 2'b10;
    reg [1:0] op_ps,op_ns;
    always @(posedge clk, posedge rst) begin
        if(rst)
            op_ps <= op_A;
        else
            op_ps <= op_ns;
    end

    always @(op_ps,timeout) begin
        timeout_strobe = 0;
        op_ns <= op_A;
        case (op_ps)
            op_A : begin
                op_ns <= timeout ? op_B : op_A;
                timeout_strobe = 0;
            end
            op_B : begin
                op_ns <= op_C;
                timeout_strobe = 1;
            end
            op_C : begin
                op_ns <= timeout ? op_C : op_A;
                timeout_strobe = 0;
            end
            default:  begin
                op_ns <= 2'bXX;
                timeout_strobe = 1'bX;
            end
        endcase
    end

    
    always @(posedge clk) begin
        if(uart_rx_valid)
            rx_buffer[byte_count] <= uart_rx_data;
    end
    always @(posedge clk) begin
        if(timeout_strobe)
            bytes_ready <= byte_count;
    end

    always @(posedge clk, posedge rst) begin
        if(rst) begin
            interrupt <= 1'b0;
        end else begin
            if(interrupt_en)begin
                if(timeout_strobe)
                    interrupt<=1'b1;
                else if(interrupt && interrupt_processing)
                    interrupt<=1'b0;
                else
                    interrupt<= interrupt;
            end
        end

    end




    //  Memory Mapped Registers
    // Regs:
    // 0 : CTRL
    // 1 : STATUS
    // 2 : BYTECOUNT


    //Write
    always@(posedge clk, posedge rst) begin
        if(rst) begin
            interrupt_en <= 0;
            uart_rx_en <= 1;
        end else begin
            if(cs && write) begin
                if(address == 9'h0) //CTRL
                begin
                    uart_rx_en <= in_data[0];
                    interrupt_en <= in_data[1];
                end
            end
        end
    end

    //Read
    always@(address,bytes_ready,rx_buffer,bytes_available,cs) begin
        out_data <= 0;
        if(cs)begin
            if(address == 9'h1) //STATUS
            begin
                out_data <= {7'b0,bytes_available};
            end 
            else if(address == 9'h2) //BYTECOUNT
            begin
                out_data <= bytes_ready;
            end
            else if(address >=  9'h3)
            begin
                out_data <= rx_buffer[address-9'h3];
            end
        end
    end

endmodule