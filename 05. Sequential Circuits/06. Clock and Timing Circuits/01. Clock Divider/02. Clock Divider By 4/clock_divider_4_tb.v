module clock_divider_by_4_tb();
reg clk_in,rst;
wire clk_out;
clock_divider_by_4 dut(clk_in,rst,clk_out);
initial begin
	clk_in=0;
	forever #10 clk_in=~clk_in;
end
initial begin
	$dumpfile("clockgtk.vcd");
	$dumpvars(0);
	rst=1;#20;rst=0;
	#200;
	$finish;
end
endmodule
