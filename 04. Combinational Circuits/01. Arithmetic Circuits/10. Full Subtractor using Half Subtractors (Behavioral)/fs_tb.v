module fs_tb;
reg a,b,c;
wire diff,bor;
fs dut(.a(a),.b(b),.c(c),.diff(diff),.bor(bor));
initial begin
$monitor("Time=%0t | a=%b b=%b c=%b | diff=%b bor=%b",$time,a,b,c,diff,bor);
$dumpfile("fsgtk.vcd");
$dumpvars(0);
a=0;b=0;c=0;#10;
a=0;b=0;c=1;#10; 
a=0;b=1;c=0;#10; 
a=0;b=1;c=1;#10; 
a=1;b=0;c=0;#10; 
a=1;b=0;c=1;#10; 
a=1;b=1;c=0;#10; 
a=1;b=1;c=1;#10;
$finish;
end
endmodule 
