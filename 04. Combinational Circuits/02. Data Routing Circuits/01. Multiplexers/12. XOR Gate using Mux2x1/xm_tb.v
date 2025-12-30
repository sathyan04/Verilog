module xm_tb;
reg a,b;
wire y;
xm dut(.a(a),.b(b),.y(y));
initial begin
$monitor("Time=%0t | a=%b b=%b | y=%b",$time,a,b,y);
$dumpfile("xmgtk.vcd");
$dumpvars(0);
a=0;b=0;#1;
a=0;b=1;#1; 
a=1;b=0;#1;
a=1;b=1;#1;
$finish;
end
endmodule
