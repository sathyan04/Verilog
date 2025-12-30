module siso(input sin,en,clk,rst, output sout,output reg [3:0]srtb);
reg [3:0] sr;
always @(posedge clk) begin
	if(rst) sr<=4'b0000;
	else if (en) begin
		sr<={sr[2:0],sin};
		srtb<=sr;
	end
end
assign sout=sr[3];
endmodule
