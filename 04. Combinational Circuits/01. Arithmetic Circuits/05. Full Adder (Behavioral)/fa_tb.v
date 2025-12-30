module fa_tb;
reg a,b,cin;
wire sum,carry;
fa dut(a,b,cin,sum,carry);
initial begin
$monitor("a=%b b=%b c=%b | Sum=%b Carry=%b",a,b,cin,sum,carry);
$dumpfile("fagtk.vcd");
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
