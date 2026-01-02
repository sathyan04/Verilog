module clock_divider_circuit_tb();
parameter N=8;
reg clk,rst;
wire out;
clock_divider_circuit #(N) dut(clk,rst,out);
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
