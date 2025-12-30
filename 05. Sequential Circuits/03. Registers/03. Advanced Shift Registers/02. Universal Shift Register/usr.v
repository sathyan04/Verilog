module universal_shift_register(input clk,rst, input [3:0] in, input [1:0] sel,output reg [3:0] out);
always @(posedge clk) begin
	if(rst) begin
		out<=4'b0000;
	end
	else begin
		case(sel)
			2'b00: out<=out;		
			2'b01: out<={out[2:0],1'b1}; //left shift
			2'b10: out<={1'b0,out[3:1]}; //right shift
			2'b11: out<=in;
			default: out<=out;
		endcase
	end
end
endmodule
