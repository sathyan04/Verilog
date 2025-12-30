module tff_tb();
reg t,clk,rst;
wire q;
tff dut(.t(t),.clk(clk),.rst(rst),.q(q));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("tgtk.vcd");
	$dumpvars(0);
	rst=1;t=0;#10;rst=0;
	t=0;#10;
	t=1;#10;
	t=0;#10;
	t=1;#10;
	t=0;#10;
	t=1;#10;
	t=0;#10;
	t=1;#10;
	t=0;#10;
	t=1;#10;
	t=0;#10;
	t=1;#10;
	t=0;#10;
	$finish;
end
always @(posedge clk && rst==0) begin
	$display("T_input=%b | Q_output=%b | Time=%0t",t,q,$time);
end
endmodule
