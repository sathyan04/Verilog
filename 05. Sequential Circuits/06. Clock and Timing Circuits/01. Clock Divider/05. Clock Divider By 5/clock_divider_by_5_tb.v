module clock_divider_by_5_tb();
reg clk,rst;
wire out;
clock_divider_by_5 dut(clk,rst,out);
initial begin
	clk=1;
	forever #10 clk=~clk;
end
initial begin
	$dumpfile("clockgtk.vcd");
	$dumpvars(0);
	rst=1;#20;rst=0;
	#500;
	$finish;
end
endmodule
