module sipo_tb();
reg sin,clk,rst;
wire [3:0] pout;
sipo dut(.sin(sin),.clk(clk),.rst(rst),.pout(pout));
initial begin
	clk=0;
	forever #10 clk=~clk;
end
initial begin
	$dumpfile("sipogtk.vcd");
	$dumpvars(0);
	sin=0;
	rst=1;#25;rst=0;
	@(posedge clk) sin=1;
	@(posedge clk) sin=0;
	@(posedge clk) sin=1;
	@(posedge clk) sin=0;
      	#50;
	$finish;
end
always @(negedge clk) begin
	$display("Serial_IN=%b | Parrallel_OUT=%b | Time=%0t",sin,pout,$time);
end
endmodule
