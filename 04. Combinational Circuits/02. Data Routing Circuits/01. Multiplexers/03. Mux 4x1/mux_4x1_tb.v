`timescale 1ns / 1ps

module mux_4x1_tb;
    reg [1:0]sel;
    reg i0,i1,i2,i3;
    wire y;
mux_4x1 dut(.sel(sel), .i0(i0), .i1(i1), .i2(i2), .i3(i3), .y(y));
    initial begin
        
        i0=0;i1=0;i2=1;i3=1;
        sel=2'b00;
        sel=2'b01;
        sel=2'b10;
        sel=2'b11;
        
        i0=1;i1=1;i2=0;i3=0;
        sel=2'b00;
        sel=2'b01;
        sel=2'b10;
        sel=2'b11;
    end
endmodule
