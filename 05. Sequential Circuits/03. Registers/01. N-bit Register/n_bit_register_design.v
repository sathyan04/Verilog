module n_bit_register #(parameter N=4)(
	input clk,
	input [N-1:0] in, 
	output reg [N-1:0] out);
always @(posedge clk)
	out<=in;
endmodule

