module bsr_tb();
reg sin,clk,mode,rst;
wire [3:0] pout;
bsr dut(.sin(sin),.clk(clk),.mode(mode),.rst(rst),.pout(pout));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("bsrgtk.vcd");
	$dumpvars(0);
	rst=1;#20;rst=0;
	sin=0;
	mode=1;//left shift
	@(negedge clk) sin=1;
	@(negedge clk) sin=0;
	@(negedge clk) sin=1;
	@(negedge clk) sin=0;
	@(negedge clk) sin=1;
	$display("----------");
	rst=1;#20;rst=0;
	$display("----------");
	mode=0;//right shift
	@(negedge clk) sin=1; 
	@(negedge clk) sin=0;
	@(negedge clk) sin=0;
	@(negedge clk) sin=1;
	#100;	
	$finish;
end
always @(posedge clk) begin
	$display("Reset=%b | Mode=%b | Serial_in=%b | Parallel_out=%b | Time=%0t",rst,mode,sin,pout,$time);
end
endmodule
