module jkff(input j,k,clk,rst, output reg q);
always @(posedge clk) begin
	if(rst) begin
		q<=0;
	end
	else begin
		case({j,k})
			2'b00: q<=q;
			2'b01: q<=1'b0;
			2'b10: q<=1'b1;
			2'b11: q<=~q;
			default: q<=1'b0;
		endcase
	end
end
endmodule

module sr_using_jk(input s,r,clk,rst, output q);
wire j,k;
assign j=s;
assign k=r;
jkff jk1(.j(j),.k(k),.clk(clk),.rst(rst),.q(q));
endmodule
