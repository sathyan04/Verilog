module jk_latch(input j,k,en,rst, output reg q);
always @(*) begin
if(rst) q=0;
else if (en) begin
if (!j && k) q=0;
else if (j && !k) q=1;
else if (j && k) q=~q;
end
end
endmodule
