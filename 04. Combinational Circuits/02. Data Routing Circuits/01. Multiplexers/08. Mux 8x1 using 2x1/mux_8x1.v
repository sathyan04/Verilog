`timescale 1ns / 1ps
`include "mux_2x1.v"
module mux_8x1(
    input [7:0]in,
    input [2:0]sel,
    output y
    );
    wire w1,w2,w3,w4,w5,w6;
    mux_2x1 m1(.a(in[0]),.b(in[1]),.sel(sel[0]),.y(w1));
    mux_2x1 m2(.a(in[2]),.b(in[3]),.sel(sel[0]),.y(w2));
    mux_2x1 m3(.a(in[4]),.b(in[5]),.sel(sel[0]),.y(w3));
    mux_2x1 m4(.a(in[6]),.b(in[7]),.sel(sel[0]),.y(w4));
    mux_2x1 m5(.a(w1),.b(w2),.sel(sel[1]),.y(w5));
    mux_2x1 m6(.a(w3),.b(w4),.sel(sel[1]),.y(w6));
    mux_2x1 m7(.a(w5),.b(w6),.sel(sel[2]),.y(y));
endmodule