module bsr(input sin,mode,clk,rst, output reg sout,output reg [3:0]srtb);
reg [3:0] sr;
always @(posedge clk) begin
	if(rst) sr<=4'b0000;
	else if (mode) begin //left shift
		sr<={sr[2:0],sin};
		srtb<=sr;
		sout<=sr[3];
	end
	else if (!mode) begin
                sr<={sin,sr[3:1]};
                srtb<=sr;
                sout<=sr[0];
        end
end
endmodule	
