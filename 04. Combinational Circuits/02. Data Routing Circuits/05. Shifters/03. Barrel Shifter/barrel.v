module barrel_shifter(	input d,
			input [1:0] sel,
			input [3:0] in,
			output reg [3:0] out);

always @(*) begin
	case(d)
		1'b0: begin //Rotate right mode
			case(sel)
				2'b00: out=in;
				2'b01: out={in[0],in[3:1]};
				2'b10: out={in[1:0],in[3:2]};
				2'b11: out={in[2:0],in[3]};
				default: $display("Invalid");
			endcase
		end
		1'b1: begin
			case(sel)
			       	2'b00: out=in; 
                                2'b01: out={in[2:0],in[3]};
                                2'b10: out={in[1:0],in[3:2]};
                                2'b11: out={in[0],in[3:1]};
                                default: $display("Invalid");
                        endcase
                end
	endcase
end
endmodule
