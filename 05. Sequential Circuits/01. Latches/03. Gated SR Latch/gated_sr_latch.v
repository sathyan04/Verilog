module gated_sr_latch(input s,r,en, output reg q);
always @(*) begin
	if(en) begin
		if (!s && r) q=1'b0;
		else if (s && !r) q=1'b1;
		else if (s && r) q=1'bx;
	end
end
endmodule
