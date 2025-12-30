`timescale 1ns / 1ps

module mux_tb;
    reg [3:0] i;
    reg [1:0] sel;
    wire y;
mux_4x1 dut(.i(i),.sel(sel),.y(y));
    initial begin
        $monitor("sel=%b | in=%b | y=%b",sel,i,y);
        
        i=4'b0111;
        
        sel=2'b00;#10;
        sel=2'b01;#10;
        sel=2'b10;#10;
        sel=2'b11;#10;
        
        $finish;
    end
endmodule