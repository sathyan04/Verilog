module bsr_tb();
reg sin,clk,mode,rst;
wire sout;
wire [3:0]srtb;
bsr dut(.sin(sin),.clk(clk),.mode(mode),.rst(rst),.sout(sout),.srtb(srtb));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("sisogtk.vcd");
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
	$display("Reset=%b | Mode=%b | Serial_in=%b | Value=%b | Serial_out=%b | Time=%0t",rst,mode,sin,srtb,sout,$time);
end
endmodule
