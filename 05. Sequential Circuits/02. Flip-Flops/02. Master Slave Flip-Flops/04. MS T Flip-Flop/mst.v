module ms_t_ff(input t, clk, output reg q);
reg m;
initial begin 
	q=0;
end
always @(*) begin
	if(clk) begin
		m=t^q;
	end
end
always @(*) begin
	if(!clk) begin
		q=m;
	end
end
endmodule

