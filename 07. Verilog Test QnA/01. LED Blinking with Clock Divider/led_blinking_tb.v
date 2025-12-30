module led_blinking_tb();
reg clk,rst;
wire led;
led_blinking dut(clk,rst,led);
initial begin
	clk=0;
	forever #10 clk=~clk;
end
initial begin
	rst=1;#10;rst=0;
endmodule
