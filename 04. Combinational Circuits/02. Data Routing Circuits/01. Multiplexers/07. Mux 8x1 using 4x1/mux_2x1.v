`timescale 1ns / 1ps

module mux_2x1(
    input a,b,sel,
    output reg y
    );
    always@(*)begin
        case(sel)
            1'b0: y=a;
            1'b1: y=b;
            default: y=1'bx;
        endcase
    end
endmodule