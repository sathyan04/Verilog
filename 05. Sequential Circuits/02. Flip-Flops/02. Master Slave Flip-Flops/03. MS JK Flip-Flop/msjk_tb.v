module ms_jk_ff_tb();
reg j,k,clk;
wire q;
ms_jk_ff dut(.j(j),.k(k),.clk(clk),.q(q));
initial begin
	clk=1;
	forever #20 clk=~clk;
end
initial begin
	$monitor("Clock=%b | j=%b | k=%b | q=%b | Time=%0t",clk,j,k,q,$time);
	$dumpfile("msjkgtk.vcd");
	$dumpvars(0);
	j=0;k=0;#10;
	j=0;k=1;#10;
	j=0;k=0;#10;
	j=1;k=0;#10;
	j=0;k=0;#10;
	j=1;k=1;#10;
	j=0;k=0;#10;
	j=0;k=1;#10;
	j=0;k=0;#10;
	j=1;k=0;#10;
	j=0;k=0;#10;
	j=1;k=1;#10;
	j=0;k=0;#10;
	j=0;k=1;#10;
	$finish;
end
endmodule
