module palindrome_tb();
reg [15:0] num;
wire pal;
integer i;
palindrome dut(.num(num),.pal(pal));
initial begin
	$monitor("Number=%d | is Palindrome=%b | Time=%0t",num,pal,$time);
	$dumpfile("palindromegtk.vcd");
	$dumpvars(0);
	for(i=0;i<=9999;i++) begin
		num=i;
		#10;
	end
end
endmodule
