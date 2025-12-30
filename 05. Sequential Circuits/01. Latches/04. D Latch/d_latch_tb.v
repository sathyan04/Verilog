module d_latch_tb();
reg d,en,rst;
wire q;
d_latch dut(.d(d),.en(en),.rst(rst),.q(q));
initial begin
	$monitor("Reset=%b | Enable=%b | d=%d | q=%b | Time=%0t",rst,en,d,q,$time);
	$dumpfile("dgtk.vcd");
	$dumpvars(0);
	rst=0;
	en=1;d=0;#10;
	en=1;d=1;#10;
	en=0;d=0;#10;
    en=0;d=1;#10;

	rst=1;
	en=1;d=0;#10;
	en=1;d=1;#10; 
	en=0;d=0;#10;
	en=0;d=1;#10;

	rst=0;
	en=0;d=0;#10;
    en=0;d=1;#10;

    $finish;
end
endmodule
