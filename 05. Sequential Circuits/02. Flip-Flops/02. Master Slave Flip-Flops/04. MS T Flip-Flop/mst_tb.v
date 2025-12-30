module ms_t_ff_tb();
reg t,clk;
wire q;
ms_t_ff dut(.t(t),.clk(clk),.q(q));
initial begin
	clk=1;
	forever #20 clk=~clk;
end
initial begin
	$monitor("Clock=%b | t=%b | q=%b | Time=%0t",clk,t,q,$time);
	$dumpfile("mstgtk.vcd");
	$dumpvars(0);
	t=0;#40;
	t=1;#40;
	t=0;#40;
	t=1;#40;
	t=0;#40;
	t=1;#40;
	t=0;#40;
	t=1;#40;
	t=0;#40;
	t=1;#40;
	t=0;#40;
	t=1;#40;
       $finish;
end
endmodule
