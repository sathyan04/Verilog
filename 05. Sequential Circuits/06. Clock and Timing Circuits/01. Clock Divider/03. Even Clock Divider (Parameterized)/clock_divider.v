module even_clock_divider #(parameter N=6) (input clk,rst, output reg out);
reg [$clog2(N)-1:0] count;
parameter s=(N/2)-1;
always @(posedge clk or posedge rst) begin
	if (N%2==0) begin
		if(rst) begin
			count<=0;
			out<=0;
		end
		else if (count == s) begin
			count<=0;
			out<=~out;
		end
		else
			count<=count+1;
	end
	else
		out<=1'bx;
end
endmodule
