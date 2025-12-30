module ripple_carry_adder_tb();
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;
ripple_carry_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
	$monitor("A=%b B=%b C=%b | Sum=%b | Carry=%b\n",a,b,cin,sum,cout);
	$dumpfile("ripplegtk.vcd");
	$dumpvars(0);
	a=0;b=0;cin=0;#10;
	a=0;b=0;cin=1;#10;
	a=0;b=1;cin=0;#10;
	a=0;b=1;cin=1;#10;
	a=1;b=0;cin=0;#10;
	a=1;b=0;cin=1;#10;
	a=1;b=1;cin=0;#10;
	a=1;b=1;cin=1;#10;
	$finish;
end
endmodule
