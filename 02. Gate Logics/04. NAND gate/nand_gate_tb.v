`timescale 1ns / 1ps

module nand_gate_tb;
  
reg a,b;
wire y;

nand_gate uut(.a(a), .b(b), .y(y));
initial begin
$display("a  b | y");
$monitor("%b %b | %b",a,b,y); 
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
end
endmodule
