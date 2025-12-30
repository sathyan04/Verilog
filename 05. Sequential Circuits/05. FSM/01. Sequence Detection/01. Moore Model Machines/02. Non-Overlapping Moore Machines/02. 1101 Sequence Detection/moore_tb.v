module moore_non_overlapping_tb();
reg clk,rst,data;
wire detected;
moore dut(.clk(clk),.rst(rst),.data(data),.detected(detected));
initial begin
	clk=0;
	forever #5 clk=~clk;
end

initial begin
	$dumpfile("mooregtk.vcd");
	$dumpvars(0);
	rst=1;
	data=0;
	#10;rst=0;
	data=1;#10;
	data=1;#10;
	data=0;#10;
	data=1;#10;
	data=1;#10;
	data=0;#10;
	data=1;#10;
	data=1;#10;
	data=0;#10;
	data=1;#10;
	data=1;#10;
	data=0;#10;
	data=1;#10;
	data=1;#10;
	data=1;#10;
	data=0;#10;
	data=1;#10;
	data=1;#10;
	data=1;#10;
	data=0;#10;
	data=1;#10;
	$finish;
end

always @(posedge clk && !rst) begin
	$display("State=%b | data=%b | detected?=%b",dut.state,data,detected);
end
endmodule
