module n_bit_register_tb();
reg clk;
reg [3:0] in;
wire [3:0] out;
n_bit_register #(4) dut(.clk(clk),.in(in),.out(out));
initial begin
	clk=0;
	forever #10 clk=~clk;
end
initial begin
	$monitor("Clock=%b | in=%b | out=%b",clk,in,out);
	$dumpfile("nrgtk.vcd");
	$dumpvars(0);
	in=4'b0000;#10;
	in=4'b0001;#10;
	in=4'b0011;#10;
	in=4'b1110;#10; 
	$finish;
end
endmodule
