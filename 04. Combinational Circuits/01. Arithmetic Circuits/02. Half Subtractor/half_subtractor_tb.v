`timescale 1ns / 1ps

module half_subtractor_tb;
reg a,b;
wire d,bo;

half_subtractor uut(.a(a),.b(b),.d(d),.bo(bo));
    initial begin
        $display("A B | D Bo"); // A,B - inputs; D - Difference, Bo - Borrow - outputs
        $monitor("%b %b | %b %b",a,b,d,bo);
        a=0;b=0;#10;
        a=0;b=1;#10;
        a=1;b=0;#10;
        a=1;b=1;#10;
        $finish;
    end
endmodule
