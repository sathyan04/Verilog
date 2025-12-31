module clock_divider_by_3(
    input  wire clk,
    input  wire rst,
    output reg  clk_out
);
reg [1:0] edge_count;
always @(posedge clk or negedge clk or posedge rst) begin
	if (rst) begin
            edge_count <= 0;
            clk_out    <= 1'b0;
        end else begin
            if (edge_count == 2) begin
                edge_count <= 0;
                clk_out    <= ~clk_out;
            end else begin
                edge_count <= edge_count + 1'b1;
            end
        end
    end

endmodule
