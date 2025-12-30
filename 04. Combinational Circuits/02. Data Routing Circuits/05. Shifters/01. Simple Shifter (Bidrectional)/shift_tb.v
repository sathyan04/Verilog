module shift_tb();
reg [7:0] num;
reg d;
reg [7:0] s;
wire [7:0] y;
shift dut(.num(num),.d(d),.s(s),.y(y));
initial begin
	$dumpfile("shiftergtk.vcd");
	$dumpvars(0);
	
	num=10;d=0;s=1;#10;
	$display("Right Shifting:"); //divide by 2
	$display("Number before shifting = %d",num);
	$display("Number after shifting  = %d",y);
	
	$display("");

	num=5;d=1;s=1;#10;
	$display("Left Shifting:"); //multiply by 2
	$display("Number before shifting = %d",num);
	$display("Number after shifting  = %d",y);  
	
	$finish;
end
endmodule
