`timescale 1ns / 1ps

module full_subtractor(a,b,c,diff,bor);
    input a,b,c;
    output diff,bor;
    assign diff = a^b^c;
    assign d=~a;
    assign bor=(d&b)|(b&c)|(d&c); 
endmodule
