module mealy_overlapping_tb();
reg clk,rst,data;
wire detected;
mealy dut(.clk(clk),.rst(rst),.data(data),.detected(detected));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("mealygtk.vcd");
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
	data=0;#10;
	data=1;#10;
	data=0;#10;
	data=1;#10;
	data=0;#10;
	data=1;#10;
	#10;$finish;
end

always @(posedge clk && rst==0) begin
	$display("Data=%b | Detection=%b",data,detected);
end
endmodule

