module overlapping_tb();
reg clk,rst,data;
wire detected;
integer i;
overlapping dut(clk,rst,data,detected);
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("mooregtk.vcd");
	$dumpvars(0);
	rst=1;data=0;#10;rst=0;
	for(i=0;i<100;i++) begin
		data=$random;#10;
	end
	$finish;
end
always @(posedge clk) begin
	if(!rst)
		$display("Data=%b | Output Detection=%b",data,detected);
end
endmodule
