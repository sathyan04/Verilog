module pipo(input clk,load,rst, input [3:0] pin, output reg [3:0] pout);
always @(posedge clk) begin
	if (rst) begin
		pout<=4'b0000;
	end
	else if (load) begin
		pout<=pin;
	end
end
endmodule
