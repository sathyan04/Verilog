module fifo_full_and_empty (
	input clk, rst, w_en, r_en,
	input [7:0] in_data,
	output reg [7:0] out_data,
	output wire full, empty
);
reg [7:0] memory [3:0];
reg [4:0] w_ptr, r_ptr;

always @(posedge clk) begin
	if(rst) begin
		w_ptr<=0;
		r_ptr<=0;
	end
	else begin
		if (w_en && !full) begin
			memory[w_ptr[3:0]] <= in_data;
			w_ptr <= w_ptr+1;
		end
		else if (r_en && !empty) begin
			out_data<=memory[r_ptr[3:0]];
			r_ptr <= r_ptr+1;
		end
	end
end

assign full = (w_ptr[4]!=r_ptr[4]) && (w_ptr[3:0]==r_ptr[3:0]);
assign empty = (w_ptr == r_ptr);
endmodule
