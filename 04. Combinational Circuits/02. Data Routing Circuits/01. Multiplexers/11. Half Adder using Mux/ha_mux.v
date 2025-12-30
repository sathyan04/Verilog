module fum(input a,b, output reg sum, output reg carry);
always @(*) begin
sum=a?~b:b;
carry=a?b:1'b0;
end
endmodule
