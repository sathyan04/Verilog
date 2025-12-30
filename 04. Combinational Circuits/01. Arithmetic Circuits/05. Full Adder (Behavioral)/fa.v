module fa(input wire a,b,cin, output reg sum,carry);
always @(*) begin
sum=a^b^cin;
carry=(a&b)|(b&cin)|(a&cin);
end
endmodule
