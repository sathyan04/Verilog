module clock_divider_by_3_tb();
reg clk,rst;
wire clk_out;
clock_divider_by_3 dut(clk,rst,clk_out);
initial begin
	clk=1;
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
