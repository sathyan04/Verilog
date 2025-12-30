module oore_tb;
reg [7:0]n;
wire is_even,is_odd;
oore dut(n,is_even,is_odd);
initial begin
$monitor("n=%d | is_even=%b | is_odd=%b",n,is_even,is_odd);
$dumpfile("ooregtk.vcd");
$dumpvars(0);
n=1;#10;
n=2;#10;     
n=3;#10;     
n=4;#10;     
n=5;#10;     
n=6;#10;     
n=7;#10;     
n=8;#10;     
n=9;#10;     
n=10;#10;     
$finish;
end
endmodule     
