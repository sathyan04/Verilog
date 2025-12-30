`timescale 1ns / 1ps
`include "full_sub.v"

module ripple_borrow(a,b,bin,diff,bor);
    
    input [3:0] a,b;
    input bin;
    output [3:0] diff;
    output bor;
    wire b1,b2,b3;
    
    full_sub fs1(a[0],b[0],bin,diff[0],b1);
    full_sub fs2(a[1],b[1],b1,diff[1],b2);
    full_sub fs3(a[2],b[2],b2,diff[2],b3);
    full_sub fs4(a[3],b[3],b3,diff[3],bor);
    
endmodule
