module moore_non_overlapping_tb();
reg clk,rst,data;
wire generated;
moore_non_overlapping dut(.clk(clk),.rst(rst),.data(data),.generated(generated));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("mooregtk.vcd");
	$dumpvars(0);
	rst=1;data=0;#10;
	rst=0;

	data=1;#10;
	data=0;#10;
	data=1;#10;
	data=0;#10;
	data=1;#10;
	data=0;#10;
	data=1;#10;
	data=0;#10;
	data=1;#10;
	data=0;#10;
	data=1;#10;
	data=0;#10;
	data=1;#10;
	#10;$finish;
end

always @(posedge clk && rst==0) begin
	$display("State=%b | Input=%b | Detected=%b | Time=%0t",dut.state,data,generated,$time);
end
endmodule

