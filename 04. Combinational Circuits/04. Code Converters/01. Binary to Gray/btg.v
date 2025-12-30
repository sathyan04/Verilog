module btg(input wire [3:0] bin, output reg [3:0]gray);
integer i;
always @(*) begin
gray[3]=bin[3];
for(i=2;i>=0;i-=1) begin
gray[i]=bin[i+1]^bin[i];
end
end
endmodule
