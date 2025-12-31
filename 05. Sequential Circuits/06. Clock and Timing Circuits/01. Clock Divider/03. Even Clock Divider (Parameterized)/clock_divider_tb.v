module even_clock_divider_tb();
parameter N=12;
reg clk,rst;
wire out;
even_clock_divider #(N) dut(clk,rst,out);
initial begin
	clk=0;
	forever #10 clk=~clk;
end
initial begin
	$dumpfile("clockgtk.vcd");
	$dumpvars(0);
	rst=1;#20;rst=0;
	#1000;
	$finish;
end
endmodule
