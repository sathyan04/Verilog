module gate_tb;
reg a,b;
wire and1,or1,nand1,nor1,xor1,xnor1;
gate dut(a,b,and1,or1,nand1,nor1,xor1,xnor1);
initial begin
$monitor("a=%b b=%b | and=%b | or=%b | nand=%b | nor=%b | xor=%b | xnor=%b",a,b,and1,or1,nand1,nor1,xor1,xnor1);
$dumpfile("gategtk.vcd");
$dumpvars(0);
a=0;b=0;#10; 
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule
