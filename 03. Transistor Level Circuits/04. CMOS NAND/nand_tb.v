module nand_tb;
reg a,b;
wire y;
nand1 dut(.a(a),.b(b),.y(y));
initial begin
$display("Time  A    B    Y");
$monitor("%t   a=%b b=%b y=%y",$time,a,b,y);
$dumpfile("nandgtk.vcd");
$dumpvars(0);
a=0;b=0;#10;
a=0;b=1;#10;  
a=1;b=0;#10;  
a=1;b=1;#10;  
$finish;
end
endmodule
