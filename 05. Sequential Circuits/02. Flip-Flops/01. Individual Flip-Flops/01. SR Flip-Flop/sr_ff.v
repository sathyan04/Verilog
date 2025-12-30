module sr_ff(input s,r,clk,rst,output reg q);
always @(posedge clk or posedge rst) begin
	if(rst) q<=0;
	else begin
		if (!s && r) q<=0;
		else if (s && ~r) q<=1;
		else if (s && r) q<=1'bx;
	end
end
endmodule
