module universal_shift_register_tb();
reg clk,rst;
reg [3:0] in;
reg [1:0] sel;
wire [3:0] out;
universal_shift_register dut(.clk(clk),.rst(rst),.in(in),.sel(sel),.out(out));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("usrgtk.vcd");
	$dumpvars(0);
	rst=1;#10;rst=0;
	in=4'b1011;
	@(negedge clk) sel=2'b11;
	@(negedge clk) sel=2'b01;
	@(negedge clk) sel=2'b10; 
	@(negedge clk) sel=2'b00;
	#20;
	$finish;
end
always @(posedge clk) begin
	$display("Reset=%b | Input=%b | Mode=%d | Output=%b | Time=%0t",rst,in,sel,out,$time);
end
endmodule
