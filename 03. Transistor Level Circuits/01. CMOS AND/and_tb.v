module and_tb;
reg a,b;
wire y;
and1 dut(.a(a),.b(b),.y(y));
initial begin
$monitor("a=%b | b=%b | y=%b",a,b,y);
$dumpfile("andgtk.vcd");
$dumpvars(0);
a=0;b=0;#10;
a=0;b=1;#10;   
a=1;b=0;#10;   
a=1;b=1;#10; 
$finish;
end
endmodule  
