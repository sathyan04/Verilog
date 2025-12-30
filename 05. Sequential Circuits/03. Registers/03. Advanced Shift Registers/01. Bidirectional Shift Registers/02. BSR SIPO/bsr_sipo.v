module bsr(input sin,mode,clk,rst, output reg [3:0]pout);
reg [3:0] sr;
always @(posedge clk) begin
	if(rst) sr<=4'b0000;
	else if (mode) begin //left shift
		sr<={sr[2:0],sin};
		pout<=sr;
	end
	else if (!mode) begin
                sr<={sin,sr[3:1]};
                pout<=sr;
        end
end
endmodule	
