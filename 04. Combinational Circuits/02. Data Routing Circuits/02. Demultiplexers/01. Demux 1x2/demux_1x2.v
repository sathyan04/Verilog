module demux_1x2(
    input in,
    input sel,
    output reg y0,
    output reg y1
);
    always @(*) begin
        case(sel)
            1'b0: begin
                y0 = in;
                y1 = 0;
            end
            1'b1: begin
                y0 = 0;
                y1 = in;
            end
            default: begin
                y0=0;
                y1=0;
            end
        endcase
    end
endmodule