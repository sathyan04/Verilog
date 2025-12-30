module t_ff_tb();
reg t,clk,rst;
wire q;
t_ff dut(.t(t),.clk(clk),.rst(rst),.q(q));
initial begin
	forever #10 clk=~clk;
end
initial begin
	$monitor("Clock=%b | Reset=%b | t=%b | q=%b",clk,rst,t,q);
	$dumpfile("tffgtk.vcd");
	$dumpvars(0);
	clk=0;

	rst=0;
	t=0;#10;
	t=1;#10;

	rst=1;
	t=0;#10;
	t=1;#10;

	rst=0;
	t=0;#10;
	t=1;#10;

	$finish;
end
endmodule
