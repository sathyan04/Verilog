module comp(input [3:0] a,b, output reg e,g,l);
always @(*) begin
e=0;g=0;l=0;
if (a>b)
g=1;
else if (a<b)
l=1;
else
e=1;
end
endmodule
