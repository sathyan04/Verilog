module async_down_counter_tb();
reg clk,rst;
wire [3:0] q;
async_down_counter dut(.clk(clk),.rst(rst),.q(q));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("downcountergtk.vcd");
	$dumpvars(0);
	rst=1;
	#10;
	rst=0;
	#200;
	$finish;
end
always @(posedge clk) begin
	$display("Reset=%b | Count=%d | Time=%0t ",rst,q,$time);
end
endmodule
