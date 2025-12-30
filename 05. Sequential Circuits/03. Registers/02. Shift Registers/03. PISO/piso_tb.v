module piso_tb();
reg load,clk,rst;
reg [3:0] pin;
wire sout;
piso dut(.load(load),.clk(clk),.rst(rst),.pin(pin),.sout(sout));
initial begin
	clk=0;
	forever #10 clk=~clk;
end
initial begin
	$dumpfile("pisogtk.vcd");
	$dumpvars(0);
	pin=4'b1010;
	rst=1;#25;rst=0;
	load=1;#25;
	load=0;
	#100;
	$finish;
end
always@(posedge clk) begin
	$display("Load=%b | Reset=%b | Output=%b | Time=%0t",load,rst,sout,$time);
end
endmodule
