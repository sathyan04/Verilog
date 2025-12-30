//1010 mealy overlapping sequence detection
module mealy (input clk,rst,data, output reg detected);
parameter [1:0] s0=0, s1=1, s2=2, s3=3;
reg [1:0] state, next;

always @(posedge clk) begin
	if(rst) 
		state<=s0;
	else
		state<=next;
end

always @(*) begin
	case(state)
		s0 : next = data ? s1 : s0;
		s1 : next = data ? s1 : s2;
		s2 : next = data ? s3 : s0;
		s3 : next = data ? s1 : s2;
		default : next = s0;
	endcase
end

always @(posedge clk) begin
	if(state==s3 && data==1'b0) begin
		detected=1'b1;
	end
	else detected = 1'b0;
end
endmodule
