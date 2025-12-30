module parity(input [3:0] d, output reg ep, op);
always @(*) begin
ep=d[3]^d[2]^d[1]^d[0];
op=~ep;
end
endmodule
