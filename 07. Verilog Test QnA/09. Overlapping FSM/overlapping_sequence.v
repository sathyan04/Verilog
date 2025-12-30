module overlapping(input clk,rst,data, output detected);
parameter [2:0] s0=0, s1=1, s2=2, s3=3, s4=4, s5=5, s6=6;
reg [2:0] state, next;
always @(posedge clk) begin
	if(rst)
		state<=0;
	else
		state<=next;
end
always @(*) begin
	case(state)
		s0: next = data ? s4 : s1 ;
		s1: next = data ? s4 : s2 ;
		s2: next = data ? s4 : s3 ;
		s3: next = data ? s4 : s1 ;
		s4: next = data ? s5 : s1 ;
		s5: next = data ? s6 : s1 ;
		s6: next = data ? s4 : s1 ;
		default: next = s0;
	endcase
end
assign detected = (state == s3 || state == s6);
endmodule
