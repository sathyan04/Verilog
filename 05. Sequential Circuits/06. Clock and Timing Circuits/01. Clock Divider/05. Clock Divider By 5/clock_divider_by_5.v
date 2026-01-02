module clock_divider_by_5(input clk,rst, output reg out);
reg [4:0] count;
always @(posedge clk or negedge clk or posedge rst) begin
	if(rst) begin
		count<=0;
		out<=0;
	end
	else if (count==4) begin
		count<=0;
		out<=~out;
	end
	else
		count<=count+1;
end
endmodule
