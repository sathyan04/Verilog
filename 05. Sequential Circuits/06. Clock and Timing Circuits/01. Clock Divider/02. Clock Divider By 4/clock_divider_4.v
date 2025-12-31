module clock_divider_by_4(input clk_in,rst, output reg clk_out);
reg count;
always @(posedge clk_in or posedge rst) begin
	if(rst) begin
		count<=0;
		clk_out<=0;
	end
	else if (count==1) begin
		count<=0;
		clk_out<=~clk_out;
	end
	else
		count<=count+1;
end
endmodule
