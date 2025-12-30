module prime_number #(parameter N=8)(input [N-1:0]num, output reg prime);
integer i;
always @(*) begin
if (num<2) prime=0;
else begin
prime=1;
for(i=2;i*i<=num;i++) begin
if(num%i==0) prime=0;
end
end
end
endmodule
