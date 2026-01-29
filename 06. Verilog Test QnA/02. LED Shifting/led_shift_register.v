module led_shift_register(input clk,rst, shift_in, output reg [3:0] led);
localparam count_max=25000000-1;
integer count;
always @(posedge clk or posedge rst) begin
	if(rst)
		count<=0;
		led<=4'b0000;
	else if (count=count_max) begin
		count<=0;
		led<={led[2:0],shift_in};
	end
	else
		count<=count+1;
end
endmodule
