module ms_sr_flip_flop(input s,r,clk,output reg q);
reg m;
always @(*) begin
        if(clk) begin
                if(!s && r) m=0;
                else if (s && !r) m=1;
                else if (s && r) m=1'bx;
        end
end
always @(*) begin
        if(!clk) begin
                if(m)
                        q=1'b1;
                else
                        q=1'b0;
        end
end
endmodule
