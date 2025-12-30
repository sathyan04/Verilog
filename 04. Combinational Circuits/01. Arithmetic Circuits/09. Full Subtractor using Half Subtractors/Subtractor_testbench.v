`timescale 1ns / 1ps

module full_sub_tb;
    reg a,b,bin;
    wire diff,bor;
full_sub uut(.a(a),.b(b),.bin(bin),.diff(diff),.bor(bor));
    initial begin
        $monitor("A=%b B=%b Bin=%b | Diff=%b Bor=%b",a,b,bin,diff,bor);
        a=0;b=0;bin=0;#10;
        a=0;b=0;bin=1;#10;
        a=0;b=1;bin=0;#10;
        a=0;b=1;bin=1;#10;
        a=1;b=0;bin=0;#10;
        a=1;b=0;bin=1;#10;
        a=1;b=1;bin=0;#10;
        a=1;b=1;bin=1;#10;
        $finish;
    end
endmodule
