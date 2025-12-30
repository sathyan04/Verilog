module t_latch_tb();
reg t,en,rst;
wire q;
t_latch dut(.t(t),.en(en),.rst(rst),.q(q));
initial begin
	$monitor("Enable=%b | Reset=%b | t=%b | q=%b",en,rst,t,q);
	$dumpfile("tgtk.vcd");
	$dumpvars(0);
	rst=0;
	en=1;
	t=1;#10;
	t=0;#10;
	$display("");
	en=0;
        t=1;#10;
        t=0;#10;
	$display("");
	rst=1;
	en=0;
	t=1;#10;
	t=0;#10;
	$display("");
	en=1;
        t=1;#10;
        t=0;#10;

	$finish;
end
endmodule
