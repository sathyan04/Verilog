module fs(input a,b,c, output diff,output reg bor);
wire d1,b1,b2;
hs hs1(.a(a),.b(b),.diff(d1),.bor(b1));
hs hs2(.a(d1),.b(c),.diff(diff),.bor(b2));
always @(*) begin
bor=b1|b2;
end
endmodule
