module led_shift_register_tb();
reg clk,rst,shift_in;
wire [3:0] led;
integer i;
led_shift_register dut(clk,rst,shift_in,led);
initial begin
	clk=0;
	forever #10 clk=~clk;
end
initial begin
	rst=1;#20;rst=0;
	for(i=0;i<100;i+=1) begin
		shift_in=$random%2;#50000000;
	end
	#1000000000;
	$finish;
end
endmodule
