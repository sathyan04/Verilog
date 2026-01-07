`timescale 1ns / 1ps

module mux_tb;
    reg [7:0] in;
    reg [2:0] sel;
    wire y;
mux_8x1 dut(.in(in), .sel(sel), .y(y));   
    initial begin
        $monitor("input=%b | sel=%b | y=%b",in,sel,y);
        in=8'b11001100;
        
        sel=3'b000;#10;
        sel=3'b001;#10;
        sel=3'b010;#10;
        sel=3'b011;#10;
        sel=3'b100;#10;
        sel=3'b101;#10;
        sel=3'b110;#10;
        sel=3'b111;#10;
        
        in=8'b00110011;
        
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