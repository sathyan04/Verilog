module jk_ff(input j,k,clk,rst,output reg q);
always @(posedge clk or posedge rst) begin
        if(rst) q<=0;
        else begin
                if (!j && k) q<=0;
                else if (j && ~k) q<=1;
                else if (j && k) q<=~q;
        end
end
endmodule

