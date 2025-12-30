module t_latch(input t,en,rst, output reg q);
always @(*) begin
	if(rst) q=0;
	else if (en) q=~t;
end
endmodule
