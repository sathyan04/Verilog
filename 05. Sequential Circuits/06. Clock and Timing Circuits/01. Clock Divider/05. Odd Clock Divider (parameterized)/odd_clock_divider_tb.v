module odd_clock_divider_tb();
parameter N=7;
reg clk,rst;
wire out;
odd_clock_divider #(N) dut(clk,rst,out);
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
