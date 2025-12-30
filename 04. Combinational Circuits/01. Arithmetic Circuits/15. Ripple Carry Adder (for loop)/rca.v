module rca(input [3:0] a, input [3:0] b, input cin, output reg [3:0] sum, output reg cout);
integer i;
reg [4:0] carry;
always @(*) begin
carry[0]=cin;
for(i=0;i<4;i+=1) begin
sum[i]=a[i]+b[i]+carry[i];
carry[i+1]=(a[i]&b[i])|(b[i]&carry[i])|(a[i]&carry[i]);
end
cout=carry[4];
end
endmodule
