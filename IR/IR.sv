`timescale 1ns / 1ns

module ir_emulator (
    input  wire clk,
    input  wire rst,     
    output wire uart_tx   
);
       parameter   BIT_RATE        = 9600; 
    parameter   CLK_HZ          =    50_000_000;
     parameter string TEST_STRING1 = "Delicious Coffee|Very good Coffee, like the best one ever|12.99$|15.99$|www.coffee.com"; 
     parameter string TEST_STRING2= "Tea|The only tea that tastes like tea|999.99$|1499.99$|www.tea.com";

    byte char_queue [$];


    wire        tx_busy;
    logic       tx_en;
    logic [7:0] tx_data;
    wire        resetn = ~rst;


    uart_tx #(
        .BIT_RATE(BIT_RATE),
        .CLK_HZ(CLK_HZ)
    ) i_uart_tx (
        .clk          (clk),
        .resetn       (resetn),
        .uart_txd     (uart_tx),
        .uart_tx_busy (tx_busy),
        .uart_tx_en   (tx_en),
        .uart_tx_data (tx_data)
    );


    initial begin
        for (int i = 0; i < TEST_STRING1.len(); i++) begin
            char_queue.push_back(TEST_STRING1[i]);
        end
        #140_000_000
        for (int i = 0; i < TEST_STRING2.len(); i++) begin
            char_queue.push_back(TEST_STRING2[i]);
        end
    end


    always @(posedge clk or negedge resetn) begin
        if (!resetn) begin
            tx_en   <= 1'b0;
            tx_data <= 8'd0;
        end else begin

            tx_en <= 1'b0;


            if (!tx_busy && !tx_en && (char_queue.size() > 0)) begin
                tx_data <= char_queue.pop_front();
                tx_en   <= 1'b1;
            end
        end
    end

endmodule