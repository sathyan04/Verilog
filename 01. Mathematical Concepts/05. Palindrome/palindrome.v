module palindrome(input wire [15:0] num, output reg pal);
reg [3:0] d3,d2,d1,d0;
always @(*) begin
d3=(num/1000)%10;
d2=(num/100)%10;
d1=(num/10)%10;
d0=num%10;
if ((d3==d0)&&(d2==d1)) pal=1;
else pal=0;
end
endmodule
