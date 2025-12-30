module priority_encoder_tb();
reg [7:0] in;
wire [2:0] out;
priority_encoder dut(.in(in),.out(out));
integer i;
initial begin
	$monitor("Input = %b | Output = %b",in,out);
	$dumpfile("encodergtk.vcd");
	$dumpvars(0);
	for(i=0;i<100;i+=1) begin
		in=$random;#10;
	end
	$finish;
end
endmodule
