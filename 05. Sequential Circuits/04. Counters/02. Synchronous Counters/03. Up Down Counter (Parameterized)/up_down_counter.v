module up_down_counter #(parameter integer N=5, parameter integer width=$clog2(N))(input clk,rst,mode, output reg [width-1:0] q);
always @(posedge clk) begin
	if(mode) begin
		if(rst) begin
			q<={width{1'b0}};
		end
		else if (q==N-1) begin
			q<={width{1'b0}};
		end
		else begin
			q<=q+1;
		end
	end
	else if (!mode) begin
		if(rst) begin
			q<=N-1;
		end
		else if (q=={width{1'b0}}) begin
			q<=N-1;
		end
		else begin
			q<=q-1;
		end
	end
end
endmodule
