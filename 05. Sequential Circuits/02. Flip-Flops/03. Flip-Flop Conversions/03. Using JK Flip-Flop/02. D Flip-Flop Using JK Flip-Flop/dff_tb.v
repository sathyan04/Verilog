module d_using_jk_tb();
reg clk,rst,d;
wire q;
d_using_jk dut(.d(d),.clk(clk),.rst(rst),.q(q));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("dffgtk.vcd");
	$dumpvars(0);
	rst=1;d=0;#10;rst=0;
	d=1;#10;
	d=0;#10;
	d=1;#10;                                                            
        d=0;#10;
	d=1;#10;
        d=0;#10;
	d=1;#10;
        d=0;#10;
	d=1;#10;
        d=0;#10;
	#10;$finish;
end
always @(posedge clk && rst==0) begin
	$display("D_input=%b | Q_output=%b | Time=%0t",d,q,$time);
end
endmodule

