module mod_n_counter_tb();
reg clk,rst;
wire [3:0] q;
mod_n_counter dut(.clk(clk),.rst(rst),.q(q));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("modcountergtk.vcd");
	$dumpvars(0);
	rst=1;#15;
	$display("");
	rst=0;
	#250;
	$finish;
end
always @(negedge clk) begin
	$display("Reset=%b | q=%d",rst,q);
end
endmodule 
