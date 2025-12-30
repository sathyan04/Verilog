module ms_jk_ff(input j,k,clk,output reg q);
reg m;
always @(*) begin
	if(clk) begin
		m=(j & ~q) | (~k & q);
	end
end
always @(*) begin
	if(!clk) begin
		q=m;
	end
end
endmodule
