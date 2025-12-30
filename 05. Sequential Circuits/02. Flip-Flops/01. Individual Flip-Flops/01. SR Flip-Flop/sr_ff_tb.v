module sr_ff_tb();
reg s,r,clk,rst;
wire q;
sr_ff dut(.s(s),.r(r),.clk(clk),.rst(rst),.q(q));
always #20 clk=~clk;
initial begin
	$monitor("Clock=%b | Reset=%b | s=%b | r=%b | q=%b | Time=%0t",clk,rst,s,r,q,$time);
	$dumpfile("srgtk.vcd");
	$dumpvars(0);
	clk=0;

	rst=0;
	s=0;r=1;#10;
	s=0;r=0;#10;
	s=1;r=0;#10;
	s=0;r=0;#10; 
	s=1;r=1;#10;
       	s=0;r=0;#10;
	s=0;r=1;#10;
	s=0;r=0;#10;

	rst=1;
	s=1'bx;r=1'bx;#10;

	rst=0;
	s=1;r=0;#10; 
	s=0;r=0;#10;
	$finish;
end
endmodule
