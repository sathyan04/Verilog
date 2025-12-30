module factorial(input [3:0]n, output reg [31:0]fact);
integer i;
always @(*) begin
fact=1;
for(i=1;i<=n;i+=1)
fact=fact*i;
end 
endmodule

 
