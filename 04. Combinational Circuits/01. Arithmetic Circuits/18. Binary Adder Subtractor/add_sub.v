`timescale 1ns / 1ps

`include "full_add.v"

module add_sub(a,b,cin,sum,cout);

    input [3:0]a,b;
    input cin;
    output [3:0] sum;
    output cout;

    wire [3:0] b_xor;
    wire c1,c2,c3;

    assign b_xor[0]=b[0]^cin;
    assign b_xor[1]=b[1]^cin;
    assign b_xor[2]=b[2]^cin;
    assign b_xor[3]=b[3]^cin;
    
    full_add fa1(a[0],b_xor[0],cin,sum[0],c1);
    full_add fa2(a[1],b_xor[1],c1,sum[1],c2);
    full_add fa3(a[2],b_xor[2],c2,sum[2],c3);
    full_add fa4(a[3],b_xor[3],c3,sum[3],cout);
   
endmodule
