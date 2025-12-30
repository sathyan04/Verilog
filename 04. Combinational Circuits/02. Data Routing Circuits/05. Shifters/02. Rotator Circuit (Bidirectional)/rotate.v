module rotate(input [3:0] in, input d, output reg [3:0] r);
always @(*) begin
	case(d)
		1'b0: r={in[0],in[3:1]};
		1'b1: r={in[2:0],in[3]};
	endcase
end
endmodule
