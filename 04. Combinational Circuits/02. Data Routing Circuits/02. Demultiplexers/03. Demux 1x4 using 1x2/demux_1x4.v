`timescale 1ns / 1ps
`include "demux_1x2.v"
module demux_1x4(
    input in,
    input [1:0]sel,
    output wire y0,
    output wire y1,
    output wire y2,
    output wire y3
    );
    wire w1,w2;
    demux_1x2 d1(.in(in),.sel(sel[0]),.y0(w1),.y1(w2));
    demux_1x2 d2(.in(w1),.sel(sel[1]),.y0(y0),.y1(y1));
    demux_1x2 d3(.in(w2),.sel(sel[1]),.y0(y2),.y1(y3));
endmodule