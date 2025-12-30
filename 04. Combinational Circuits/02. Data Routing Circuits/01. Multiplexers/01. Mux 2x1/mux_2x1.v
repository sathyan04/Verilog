`timescale 1ns / 1ps

module mux_2x1(a,b,sel,y);
    input a,b,sel;
    output reg y;
    always@(*)begin
        case(sel)
            0:y=a;
            1:y=b;
            default: y=1'bx;
        endcase
    end
endmodule
