module up_counter_tb();
reg clk,rst;
wire [3:0] q;
up_counter dut(.clk(clk),.rst(rst),.q(q));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("upcountergtk.vcd");
	$dumpvars(0);
	rst=1;#15;rst=0;
	#200;
	$finish;
end
always @(posedge clk) begin
	$display("Reset=%b | Output=%d",rst,q);
end
endmodule
