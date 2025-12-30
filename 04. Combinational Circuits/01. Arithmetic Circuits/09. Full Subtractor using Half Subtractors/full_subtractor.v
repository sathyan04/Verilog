`timescale 1ns / 1ps
`include "half_sub.v"
module full_sub(a,b,bin,diff,bor);
    input a,b,bin;
    output diff,bor;
    wire diff1,bor1,bor2;
    half_sub hs1(a,b,diff1,bor1);
    half_sub hs2(diff1,bin,diff,bor2);
    assign bor=bor1|bor2;
endmodule
