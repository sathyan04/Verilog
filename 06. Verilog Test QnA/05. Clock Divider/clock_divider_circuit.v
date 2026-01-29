//100Hz clock using 50MHz clock input
module clock(input clk50m, rst, output reg clk100);
localparam integer count_max = 250000 - 1;
integer count;
always @(posedge clk50m or posedge rst) begin
	if (rst)
		count <= 0;
	else if (count==count_max) begin
		count <= 0;
		clk100 <= ~clk100;
	end
	else
		count<=count+1;
end
endmodule
