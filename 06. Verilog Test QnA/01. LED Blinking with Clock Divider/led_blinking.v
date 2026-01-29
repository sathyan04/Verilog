module led_blinking(input clk,rst, output reg led);
localparam integer count_max=25000000-1;
integer count;
always @(posedge clk or posedge rst) begin
	if(rst)
		count<=0;
	else if (count == count_max) begin
		count<=0;
		led=~led;
	end
	else
		count<=count+1;
end
endmodule
