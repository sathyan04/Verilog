module decode(input wire [2:0] a, output reg [7:0] y);
integer i;
always @(*) begin
for(i=0;i<8;i+=1) begin
y[i]=0;
end
case(a)
3'b000: y[0]=1;
3'b001: y[1]=1;
3'b010: y[2]=1;
3'b011: y[3]=1;
3'b100: y[4]=1;
3'b101: y[5]=1;
3'b110: y[6]=1;
3'b111: y[7]=1; 
endcase
end
endmodule
