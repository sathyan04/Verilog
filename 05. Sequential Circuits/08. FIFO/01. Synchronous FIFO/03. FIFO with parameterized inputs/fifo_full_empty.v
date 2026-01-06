module fifo_full_and_empty #(parameter width=4, depth=16) (
	input clk, rst, w_en, r_en,
	input [width-1:0] in_data,
	output reg [width-1:0] out_data,
	output wire full, empty
);
reg [width-1:0] memory [depth-1:0];
parameter bit = $clog2(depth);
reg [bit:0] w_ptr, r_ptr;

always @(posedge clk) begin
	if(rst) begin
		w_ptr<=0;
		r_ptr<=0;
	end
	else begin
		if (w_en && !full) begin
			memory[w_ptr[bit-1:0]] <= in_data;
			w_ptr <= w_ptr+1;
		end
		else if (r_en && !empty) begin
			out_data<=memory[r_ptr[bit-1:0]];
			r_ptr <= r_ptr+1;
		end
	end
end

assign full = (w_ptr[bit]!=r_ptr[bit]) && (w_ptr[bit-1:0]==r_ptr[bit-1:0]);
assign empty = (w_ptr == r_ptr);
endmodule
