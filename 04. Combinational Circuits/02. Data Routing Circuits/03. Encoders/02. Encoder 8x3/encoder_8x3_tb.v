`timescale 1ns / 1ps

module encoder_8x3_tb;
    reg [7:0] in;
    wire [2:0] out;
    encoder_8x3 dut(.in(in),.out(out));
    initial begin
        $monitor("Time=%0t | in=%b | out=%b",$time,in,out);
        in=8'b00000001; #10;
        in=8'b00000010; #10;
        in=8'b00000100; #10;
        in=8'b00001000; #10;
        in=8'b00010000; #10;
        in=8'b00100000; #10;
        in=8'b01000000; #10;
        in=8'b10000000; #10;
        
        #20;
        
        in=8'b00000000; #10;
        in=8'b10110000; #10;
        in=8'b10011100; #10;
        in=8'b11111111; #10; 
        $finish;
    end
endmodule
