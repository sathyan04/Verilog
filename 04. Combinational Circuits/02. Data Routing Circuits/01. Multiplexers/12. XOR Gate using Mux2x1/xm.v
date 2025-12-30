module xm(input a,b, output reg y);
always @(*) begin
case(a)
1'b0: y=b;
1'b1: y=~b;
endcase
end
endmodule

