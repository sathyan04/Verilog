module down_counter(input clk,rst, output reg [3:0] q);
always @(posedge clk or posedge rst) begin
	if (rst) q<=15;
	else q<=q-1;
end
endmodule
