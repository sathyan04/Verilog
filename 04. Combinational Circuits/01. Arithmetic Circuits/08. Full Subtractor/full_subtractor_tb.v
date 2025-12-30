`timescale 1ns / 1ps

module full_subtractor_tb;
    reg a,b,c;
    wire diff,bor;
full_subtractor uut(.a(a),.b(b),.c(c),.diff(diff),.bor(bor));
    initial begin
        $monitor("a=%b b=%b c=%b | diff=%b bor=%b",a,b,c,diff,bor);
        a=0;b=0;c=0;#10;
        a=0;b=0;c=1;#10;
        a=0;b=1;c=0;#10;
        a=0;b=1;c=1;#10;
        a=1;b=0;c=0;#10;
        a=1;b=0;c=1;#10;
        a=1;b=1;c=0;#10;
        a=1;b=1;c=1;#10;
        $finish;
    end
endmodule
