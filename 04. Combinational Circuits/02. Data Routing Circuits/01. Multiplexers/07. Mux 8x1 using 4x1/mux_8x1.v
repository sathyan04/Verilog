`timescale 1ns / 1ps
`include"mux_2x1.v"
`include"mux_4x1.v"
module mux_8x1(
    input [7:0] in,
    input [2:0] sel,
    output y
    );
    wire w1,w2;
    mux_4x1 m1(.sel(sel[2:1]),.in(in[7:4]),.y(w1));
    mux_4x1 m2(.sel(sel[2:1]),.in(in[3:0]),.y(w2));
    mux_2x1 m3(.sel(sel[0]),.a(w1),.b(w2),.y(y));
endmodule
