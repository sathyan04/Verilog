module d_ff_tb();
reg d,clk,rst;
wire q;
d_ff dut(.d(d),.clk(clk),.rst(rst),.q(q));
always #5 clk = ~clk;
initial begin
	$monitor("Clock=%b | Reset=%b | d=%b | q=%b | Time=%0t",clk,rst,d,q,$time);
	$dumpfile("dffgtk.vcd");
	$dumpvars(0);
	clk=0;
	rst=0;
	d=0;#10;
	d=1;#10;
	rst=1;
	d=0;#10;
	d=1;#10;
	$finish;
end
endmodule
