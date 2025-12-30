module bsr_piso_tb();
reg [3:0] pin;
reg clk,mode,rst,load;
wire sout;
bsr_piso dut(.pin(pin),.clk(clk),.load(load),.mode(mode),.rst(rst),.sout(sout));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("bsrgtk.vcd");
	$dumpvars(0);
	pin=4'b1011;
	rst=1;#20;rst=0;
	load=1;#20;load=0;
	mode=1;//left shift
	#50;
	pin=4'b0111;
        load=1;#10;load=0;
	mode=0;//right shift
	#50;	
	$finish;
end
always @(posedge clk) begin
	$display("Reset=%b | Mode=%b | Parallel_in=%b | Serial_out=%b | Time=%0t",rst,mode,pin,sout,$time);
end
endmodule
