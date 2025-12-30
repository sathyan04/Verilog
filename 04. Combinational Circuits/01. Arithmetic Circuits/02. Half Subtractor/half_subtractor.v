`timescale 1ns / 1ps

module half_subtractor(
    input a,b,
    output d,bo
    );
    xor(d,a,b);
    and(bo,~a,b);
endmodule
