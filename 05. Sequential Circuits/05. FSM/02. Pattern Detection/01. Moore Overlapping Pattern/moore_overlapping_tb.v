module moore_overlapping_tb();
reg clk,rst,in;
wire q;
moore_overlapping dut(.clk(clk),.rst(rst),.in(in),.q(q));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
integer i;
initial begin
	$dumpfile("mooregtk.vcd");
	$dumpvars(0);
	rst=1;in=0;#10;rst=0;
	for(i=0;i<100;i++) begin
		in=$random;#10;
	end
	#10;$finish;
end
always @(posedge clk && rst==0) begin
	$display("Data=%b | Output=%b | Time=%0t",in,q,$time);
end
endmodule
