module clock_tb();
reg clk50m,rst;
wire clk100;
clock dut(clk50m,rst,clk100);
initial begin
	clk50m=0;
	forever #10 clk50m = ~clk50m;
end
initial begin
	rst=1;#20;rst=0;
end
endmodule
