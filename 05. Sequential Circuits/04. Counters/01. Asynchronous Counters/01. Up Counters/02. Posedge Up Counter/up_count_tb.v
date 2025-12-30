module async_up_counter_tb();
reg clk,rst;
wire [3:0] q;
async_up_counter dut(.clk(clk),.rst(rst),.q(q));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("countergtk2.vcd");
	$dumpvars(0);
	rst=1;#15;
	$display("");
	rst=0;
	#250;
	$finish;
end
always @(posedge clk) begin
	$display("Reset=%b | q=%d",rst,q);
end
endmodule
