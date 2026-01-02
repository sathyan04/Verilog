module clock_tb();
reg clk,rst;
wire out;
clock dut(clk,rst,out);
initial begin
	clk=0;
	forever #10 clk=~clk;
end
initial begin
	rst=1;#10;rst=0;
	#2000000000;
	$finish;
end
endmodule
