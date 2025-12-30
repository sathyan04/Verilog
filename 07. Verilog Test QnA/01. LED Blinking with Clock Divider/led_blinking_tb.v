module led_blinking_tb();
reg clk,rst;
wire led;
led_blinking dut(clk,rst,led);
initial begin
	clk=0;
	forever #10 clk=~clk;
end
endmodule
