// 3 bit 101 - moore model - non-overlapping generation using 4 states
module moore_non_overlapping(input clk,rst,data, output generated);
parameter [1:0] s0=0, s1=1, s2=2, s3=3;
reg [1:0] state,next;

always@(posedge clk) begin //present state logic
	if(rst)
		state<=s0;
	else
		state<=next;
end

always @(*) begin //next state logic
	case(state)
		s0 : next = data ? s1 : s0;
		s1 : next = data ? s1 : s2;
		s2 : next = data ? s3 : s0;
		s3 : next = data ? s1 : s0;
		default : next = s0;
	endcase
end

assign generated = (state == s3); //output logic
endmodule
