module pn(input [15:0]num, output reg perfect);
integer j;
reg [15:0] p;
always @(*) begin
	p=0;
	for(j=1;j<=(num/2);j++) begin
	if(num%j==0) p=p+j;
end
if(num==p) begin 
	perfect=1;
end
else perfect=0;
end
endmodule
