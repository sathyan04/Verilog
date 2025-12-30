`timescale 1ns / 1ps

module simple_alu (a,b,sel,result);
    input a,b;
    input [3:0] sel;
    output reg result;

always @(*) begin
    case (sel)
            0   : result = a & b;   // AND
            1   : result = a | b;   // OR
            2   : result = a ^ b;   // XOR
            3   : result = ~a;      // NOT A
            4   : result = ~b;     // NOT B
            5   : result = a + b;   // ADD
            6   : result = a - b;   // SUB
            7   : result = a;       // Pass A
            8   : result = b;       // Pass B
        default : result = 0;
    endcase
end

endmodule   