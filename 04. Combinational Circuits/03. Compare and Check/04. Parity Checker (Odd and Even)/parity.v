module parity(input wire [4:0] d, output reg epc, opc);
always @(*) begin
epc=d[4]^d[3]^d[2]^d[1]^d[0];
opc=~epc;
end
endmodule
