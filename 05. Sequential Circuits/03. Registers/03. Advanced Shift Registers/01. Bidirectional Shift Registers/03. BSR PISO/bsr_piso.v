module bsr_piso(input mode,load,clk,rst, input [3:0] pin, output reg sout);
reg [3:0] shift;
always @(posedge clk) begin
	if(rst) begin
		sout<=1'b0;
		shift<=4'b0000;
	end
	else if(load) begin
		shift<=pin;
	end
	else begin
		if(mode) begin //left shift
			sout<=shift[3];
			shift<={shift[2:0],1'b0};
		end
		else if(!mode) begin //right shift
			sout<=shift[0];
                        shift<={1'b0,shift[3:1]};
		end
	end
end
endmodule
