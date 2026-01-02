//1Hz clock using 50MHz clock input
module clock(input clk,rst, output reg out);
localparam integer count_max=25000000-1;
integer count;
always @(posedge clk or posedge rst) begin
	if(rst)
		count<=0;
	else if (count == count_max) begin
		count<=0;
		out=~out;
	end
	else
		count<=count+1;
end
endmodule
