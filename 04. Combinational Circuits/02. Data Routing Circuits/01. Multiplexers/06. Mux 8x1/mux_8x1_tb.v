`timescale 1ns / 1ps

module mux_8x1_tb;
    reg [7:0] in;
    reg [2:0] sel;
    wire y;
mux_8x1 dut(.in(in),.sel(sel),.y(y));
    initial begin
        $monitor("sel=%b | in=%b | y=%b",sel,in,y);
        
        in=8'b01101011;
        
        sel=3'b000;#10;
        sel=3'b001;#10;
        sel=3'b010;#10;
        sel=3'b011;#10;
        sel=3'b100;#10;
        sel=3'b101;#10;
        sel=3'b110;#10;
        sel=3'b111;#10;
        $finish;
    end
endmodule
