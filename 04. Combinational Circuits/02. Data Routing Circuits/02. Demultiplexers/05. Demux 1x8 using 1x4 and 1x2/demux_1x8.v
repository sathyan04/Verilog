`timescale 1ns / 1ps
`include "demux_1x2.v"
`include "demux_1x4.v"

module demux_1x8(
    input in,
    input [2:0] sel,
    output y0,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7
    );
    wire w1,w2;
    demux_1x2 d1(.in(in),.sel(sel[0]),.y0(w1),.y1(w2));
    demux_1x4 d2(.in(w1),.sel(sel[2:1]),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
    demux_1x4 d3(.in(w2),.sel(sel[2:1]),.y0(y4),.y1(y5),.y2(y6),.y3(y7));
endmodule
