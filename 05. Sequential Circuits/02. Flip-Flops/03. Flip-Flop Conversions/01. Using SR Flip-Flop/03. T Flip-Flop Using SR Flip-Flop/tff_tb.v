module t_using_sr_tb();
reg clk,rst,t;
wire q;
t_using_sr dut(.t(t),.clk(clk),.rst(rst),.q(q));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("tffgtk.vcd");
	$dumpvars(0);
	rst=1;t=0;#10;rst=0;
	t=1;#10;
	t=0;#10;
	t=1;#10;
        t=0;#10;
	t=1;#10;
        t=0;#10;
	#10;$finish;
end
always @(posedge clk && rst==0) begin
	$display("T_input=%b | Q_output=%b | Time=%0t",t,q,$time);
end
endmodule

