module arm(input [9:0] N,output reg armstrong);

reg [3:0] a,b,c;
reg [9:0] sum;

always @(*) begin
a=N/100;
b=(N/10)%10;
c=N%10;
sum=(a*a*a)+(b*b*b)+(c*c*c);
if (N==sum) begin
armstrong=1;
end
else begin
armstrong=0;
end
end
endmodule
