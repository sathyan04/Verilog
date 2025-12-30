module fibo(input [4:0]n, output reg [5:0]fibon);
integer i;
reg [5:0]a,b,temp;
always@(*) begin
if(n==0)
fibon=0;
else if (n==1)
fibon=1;
else begin
a=0;
b=1;
for(i=2;i<=n;i+=1) begin
temp=a+b;
a=b;
b=temp;
end
fibon=b;
end
end
endmodule

