module hs(input a,b, output reg diff,bor);
always @(*) begin
diff=a^b;
bor=~a&b;
end
endmodule
