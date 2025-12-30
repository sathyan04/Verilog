module shift(
	input [7:0] num,
	input d,
	input [7:0] s,
	output reg [7:0] y);
always @(*) begin
	case(d)
		1'b0: y=num>>s;
		1'b1: y=num<<s;
	endcase
end
endmodule

