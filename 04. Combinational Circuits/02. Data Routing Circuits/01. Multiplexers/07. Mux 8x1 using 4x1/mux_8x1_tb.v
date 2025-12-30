`timescale 1ns / 1ps

module mux_8x1_tb;
    reg [7:0] in;
    reg [2:0] sel;
    wire y;
       
mux_8x1 dut(.in(in), .sel(sel), .y(y));
    initial begin
        $monitor("input=%b | select=%b | y=%b",in,sel,y);
        
        in=8'b10101010;
        
        sel= 3'b000;#10;
        sel= 3'b001;#10;
        sel= 3'b010;#10;
        sel= 3'b011;#10;
        sel= 3'b100;#10;
        sel= 3'b101;#10;
        sel= 3'b110;#10;
        sel= 3'b111;#10;
       
        $finish;
    end
endmodule