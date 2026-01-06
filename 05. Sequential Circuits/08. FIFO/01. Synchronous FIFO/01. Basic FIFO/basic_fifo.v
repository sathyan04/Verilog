module fifo_basic(
	input clk, rst, w_en, r_en, 
	input wire [7:0] in_data,
	output reg [7:0] out_data
);
reg [7:0] memory [3:0];
reg [1:0] w_ptr,r_ptr;

always @(posedge clk) begin
	if(rst) begin
		w_ptr<=0;
		r_ptr<=0;
		out_data<=0;
	end
	else begin
		if(w_en) begin
			memory[w_ptr]<=in_data;
			w_ptr<=w_ptr+1;
		end
		else if (r_en) begin
			out_data<=memory[r_ptr];
			r_ptr<=r_ptr+1;
		end
	end
end
endmodule	
