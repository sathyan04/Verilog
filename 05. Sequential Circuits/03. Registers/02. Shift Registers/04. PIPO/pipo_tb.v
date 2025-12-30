module pipo_tb();
reg clk,load,rst;
reg [3:0] pin;
wire [3:0] pout;
pipo dut(.clk(clk),.load(load),.rst(rst),.pin(pin),.pout(pout));
initial begin
	clk=0;
	forever #10 clk=~clk;
end
initial begin
	$dumpfile("pipogtk.vcd");
	$dumpvars(0);
	pin=1101;
	rst=1;#20;rst=0;
	load=1;#20;
	load=0;#20;
	rst=1;#30;
	$finish;
end
always @(posedge clk) begin
	$display("Load=%b | Reset=%b | Output=%b | Time=%0t",load,rst,pout,$time);
end
endmodule
