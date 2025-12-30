module srff(input s,r,clk,rst, output reg q);
always @(posedge clk) begin
	if(rst) begin
		q<=0;
	end
	else begin
		case({s,r})
			2'b00: q<=q;
			2'b01: q<=1'b0;
			2'b10: q<=1'b1;
			2'b11: q<=1'bx;
			default: q<=1'b0;
		endcase
	end
end
endmodule

module d_using_sr(input d,clk,rst, output q);
wire s,r;
assign s=d;
assign r=~d;
srff s1(.s(s),.r(r),.clk(clk),.rst(rst),.q(q));
endmodule
