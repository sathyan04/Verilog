`timescale 1ns / 1ps

module demux_tb;
    reg in;
    reg [1:0]sel;
    wire y0,y1,y2,y3;
    demux_1x4 dut(.in(in),.sel(sel),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
    initial begin
        $monitor("in=%b | sel=%b | y0=%b y1=%b y2=%b y3=%b",in,sel,y0,y1,y2,y3);
        
        in=0;
        sel=2'b00; #10;
        sel=2'b01; #10;
        sel=2'b10; #10;
        sel=2'b11; #10;
        
        in=1;
        sel=2'b00; #10;
        sel=2'b01; #10;
        sel=2'b10; #10;
        sel=2'b11; #10;
        
        $finish;
    end
endmodule