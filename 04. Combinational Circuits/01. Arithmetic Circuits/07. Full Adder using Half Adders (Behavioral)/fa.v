module fa(input a,b,cin, output su,output reg carry);
wire s1,c1,c2;
ha ha1(.a(a),.b(b),.sum(s1),.carry(c1));
ha ha2(.a(s1),.b(cin),.sum(su),.carry(c2));
always @(*) begin
carry=c1|c2;
end
endmodule
