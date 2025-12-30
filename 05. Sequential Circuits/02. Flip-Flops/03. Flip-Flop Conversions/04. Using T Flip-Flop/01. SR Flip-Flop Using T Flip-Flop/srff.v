module tff(input t, clk, rst, output reg q);
always @(posedge clk) begin
	if(rst) q<=0;
	else q<=~t;
end
endmodule

module sr_using_tff(input s,r,clk,rst, output q);
wire t;
tff t1(.t(t),.clk(clk),.rst(rst),.q(q));
assign t = r | ((~s)&(~q));
endmodule
