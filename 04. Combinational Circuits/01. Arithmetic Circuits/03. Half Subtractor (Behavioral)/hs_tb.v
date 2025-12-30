module hs_tb;
reg a,b;
wire diff,bor;
hs dut(.a(a),.b(b),.diff(diff),.bor(bor));
initial begin
$monitor("time=%ot | a=%b b=%b | diff=%b bor=%b",$time,a,b,diff,bor);
$dumpfile("hsgtk.vcd");
$dumpvars(0);
a=0;b=0;#10;
a=0;b=1;#10; 
a=1;b=0;#10; 
a=1;b=1;#10; 
$finish;
end
endmodule
