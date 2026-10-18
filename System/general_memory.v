// **************************************************************************************
// Filename: general_memory.v
// Project: AFTAB
// Version: 1.0
// Date:
//
// Description:
//
// Dependencies:
//
// File content description:
// a general memory (instruction + data memory)
//
// **************************************************************************************

module general_memory #(
    parameter DATAWIDTH = 8,
    parameter ADDRESSWIDTH = 14,
	parameter FILE_NAME = "mem.hex"
    //parameter cycle = 25 // ns
)
(
	input clk,
	input cs,
    input rd,
    input wr,
    input [ADDRESSWIDTH-1:0] address,
    input [DATAWIDTH-1:0] datain,
    output reg [DATAWIDTH-1:0] dataout,
    output ready
);

	reg [DATAWIDTH-1:0] mem [0:(2**ADDRESSWIDTH)-1];
	
	always @(address, rd, cs) begin
		if (cs == 1'b1 && rd == 1'b1)
			dataout <= mem[address];
		else
			dataout <= {DATAWIDTH{1'bz}};
	end
	
	always @(posedge clk) begin
		if (cs == 1'b1 && wr == 1'b1)
			mem[address] <= datain;
	end

    assign ready = 1'b1;
	
	initial begin
		$readmemh( FILE_NAME, mem );
	end

endmodule