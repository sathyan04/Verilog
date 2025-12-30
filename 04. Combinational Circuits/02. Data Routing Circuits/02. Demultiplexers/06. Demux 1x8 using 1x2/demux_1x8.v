`timescale 1ns / 1ps
`include "demux_1x2.v"
module demux_1x8(
    input in,
    input [2:0]sel,
    output y0,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7
    );
    wire w1,w2,w3,w4,w5,w6;
    demux_1x2 d1(.in(in),.sel(sel[2]),.y0(w1),.y1(w2));
    demux_1x2 d2(.in(w1),.sel(sel[1]),.y0(w3),.y1(w4));
    demux_1x2 d3(.in(w2),.sel(sel[1]),.y0(w5),.y1(w6));
    demux_1x2 d4(.in(w3),.sel(sel[0]),.y0(y0),.y1(y1));
    demux_1x2 d5(.in(w4),.sel(sel[0]),.y0(y2),.y1(y3));
    demux_1x2 d6(.in(w5),.sel(sel[0]),.y0(y4),.y1(y5));
    demux_1x2 d7(.in(w6),.sel(sel[0]),.y0(y6),.y1(y7));
endmodule
