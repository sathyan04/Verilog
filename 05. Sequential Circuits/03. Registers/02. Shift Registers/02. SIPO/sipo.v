module sipo(input sin,clk,rst, output [3:0] pout);
reg [3:0] sr;
always @(negedge clk) begin
	if(rst) sr<=4'b0000;
	else	sr<={sr[2:0],sin};	
end
assign pout=sr;
endmodule
