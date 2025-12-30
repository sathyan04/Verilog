module full_adder_tb();
parameter N=16;
reg [N-1:0] a,b;
reg cin;
wire [N-1:0] sum;
wire cout;
full_adder #(N) dut(a,b,cin,sum,cout);
initial begin
	$monitor("a=%b b=%b c=%b | sum=%b | carry=%b",a,b,cin,sum,cout);
	$dumpfile("addergtk.vcd");
	$dumpvars(0);
	a=1;b=2;cin=0;#10;
	a=2;b=3;cin=0;#10;
	a=3;b=4;cin=0;#10;
	a=4;b=5;cin=0;#10;
	a=5;b=7;cin=0;#10;
	a=6;b=8;cin=1;#10;
	a=7;b=9;cin=1;#10;
	a=8;b=10;cin=1;#10;
	a=9;b=11;cin=1;#10;
	a=10;b=12;cin=1;#10;
	a=11;b=13;cin=1;#10;
	$finish;
end
endmodule
