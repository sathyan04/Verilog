module mealy_non_overlapping(input clk,rst,in, output out);
parameter [2:0] s0=0, s1=1, s2=2, s3=3, s4=4;
reg [2:0] state,next;

always @(posedge clk or posedge rst) begin
	if(rst)
		state<=s0;
	else
		state<=next;
end

always @(*) begin
	case (state)
		s0 : next = in ? s1 : s0 ;
		s1 : next = in ? s1 : s2 ;
		s2 : next = in ? s4 : s3 ;
		s3 : next = in ? s0 : s0 ;
		s4 : next = in ? s1 : s0 ;
		default : next = s0;
	endcase
end

assign out = (((state==s3) && (in==1)) || ((state==s4) && (in==0)));

endmodule
