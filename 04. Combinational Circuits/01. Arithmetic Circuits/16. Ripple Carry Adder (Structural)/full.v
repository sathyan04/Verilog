module full(input wire a,b,cin, output sum, output reg carry);
wire s1,c1,c2;
half h1(.a(a),.b(b),.sum(s1),.carry(c1));
half h2(.a(s1),.b(cin),.sum(sum),.carry(c2));
always @(*) begin
carry=c1|c2;
end
endmodule
