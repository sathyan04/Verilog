module mealy_non_overlapping_tb();
reg clk,rst,in;
wire out;
mealy_non_overlapping dut(.clk(clk),.rst(rst),.in(in),.out(out));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
integer i;
initial begin
	$dumpfile("mealygtk.vcd");
	$dumpvars(0);
	rst=1;in=0;#10;rst=0;
	for(i=0;i<100;i++) begin
		in=$random;#10;
	end
	#10;$finish;
end
always @(posedge clk) begin
	if(!rst) begin
		$display("Data=%b | Output=%b | Time=%0t",in,out,$time);
	end
end
endmodule
