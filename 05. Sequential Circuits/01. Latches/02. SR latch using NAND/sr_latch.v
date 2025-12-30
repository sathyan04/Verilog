module sr_latch(input s,r, output reg q);
always @(*) begin
	if (s==0 && r==0) q=1'bx;
	else if (s==0 && r==1) q=1'b0;
	else if (s==1 && r==0) q=1'b1;
end
endmodule
