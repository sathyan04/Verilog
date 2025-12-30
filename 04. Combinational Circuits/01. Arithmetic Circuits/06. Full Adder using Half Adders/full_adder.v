`timescale 1ns / 1ps
`include "half_adder.v"

module full_adder(a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;
    wire sum1, carry1, carry2;

    half_adder ha1(a,b,sum1,carry1);
    half_adder ha2(sum1,cin,sum,carry2);

    assign cout = carry1 | carry2; 
endmodule
