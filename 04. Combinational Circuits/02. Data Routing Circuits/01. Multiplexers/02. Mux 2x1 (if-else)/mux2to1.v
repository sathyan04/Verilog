module mux1(input wire a,b,sel, output reg y);
always @(*) begin
    if(sel) begin
        y=b;
    end
    else begin
        y=a;
    end
end
endmodule
