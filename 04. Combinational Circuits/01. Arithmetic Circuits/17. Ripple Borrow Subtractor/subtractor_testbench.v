`timescale 1ns / 1ps

module sub_tb;
    reg [3:0] a,b;
    reg bin;
    wire [3:0] diff;
    wire bor;
ripple_borrow dut(.a(a),.b(b),.bin(bin),.diff(diff),.bor(bor));
    initial begin
        $monitor("a=%b b=%b bin=%b | diff=%b bor=%b",a,b,bin,diff,bor);
        a=4'b0001;b=4'b1000;bin=0;#10;
        a=4'b0011;b=4'b1100;bin=1;#10;
        a=4'b0111;b=4'b1110;bin=0;#10;
        a=4'b1111;b=4'b1111;bin=1;#10;
        $finish;
    end
endmodule
