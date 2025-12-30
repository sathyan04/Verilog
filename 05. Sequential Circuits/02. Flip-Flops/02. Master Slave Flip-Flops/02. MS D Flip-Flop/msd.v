module ms_d_ff(input d, clk, output reg q);
reg m;
always @(*) begin
if(clk) begin
m=d;
end
end
always @(*) begin
if(!clk) begin
q=m;
end
end
endmodule
