module com(input [1:0]in, output reg e,g,l);
always @(*) begin
if (in[1]==in[0])
e=1;
else
e=0;
if (in[1]>in[0])
g=1;
else
g=0;
if (in[1]<in[0])
l=1;
else
l=0;
end
endmodule
