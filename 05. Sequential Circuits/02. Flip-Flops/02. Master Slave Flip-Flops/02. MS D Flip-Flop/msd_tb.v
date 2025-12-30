module ms_d_ff_tb();
reg d,clk;
wire q;
ms_d_ff dut(.d(d),.clk(clk),.q(q));
initial begin
	clk=1;
	forever #20 clk=~clk;
end
initial begin
	$monitor("Clock=%b | d=%b | q=%b | Time=%0t",clk,d,q,$time);
	$dumpfile("msdgtk.vcd");
	$dumpvars(0);
	d=0;#10;
	d=1;#10;
	d=0;#10;
	d=1;#10; 
	d=0;#10;
	d=1;#10; 
	$finish;
end
endmodule
