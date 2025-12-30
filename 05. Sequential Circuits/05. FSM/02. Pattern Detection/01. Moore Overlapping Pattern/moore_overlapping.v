module moore_overlapping(input clk,rst,in, output q);
parameter [2:0] s0=0, s1=1, s2=2, s3=3, s4=4;
reg [2:0] state, next;

always@(posedge clk) begin
	if(rst)
		state<=s0;
	else
		state<=next;
end

always @(*) begin
	case(state)
		s0 : next = in ? s1 : s0 ;
		s1 : next = in ? s3 : s2 ;
		s2 : next = in ? s4 : s0 ;
		s3 : next = in ? s3 : s4 ;
		s4 : next = in ? s1 : s2 ;
		default: next = s0;
	endcase
end

assign q = (state == s4);

endmodule

