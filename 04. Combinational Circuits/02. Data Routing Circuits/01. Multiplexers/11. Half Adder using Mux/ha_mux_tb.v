module fum_tb;
reg a,b;
wire sum,carry;
fum dut(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
$monitor("a=%b b=%b | sum=%b carry=%b",a,b,sum,carry);  
$dumpfile("fumgtk.vcd");
$dumpvars(0);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule
