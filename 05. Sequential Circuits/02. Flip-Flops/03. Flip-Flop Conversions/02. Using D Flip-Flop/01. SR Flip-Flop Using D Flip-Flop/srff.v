module dff(input d,clk,rst, output reg q);
always @(posedge clk) begin
	if(rst) q<=0;
	else q<=d;
end
endmodule

module srff(input s,r,clk,rst, output q);
wire d;
dff d1(.d(d),.clk(clk),.rst(rst),.q(q));
assign d=s|(q&(~r));
endmodule
