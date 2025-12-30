module jk_ff_tb();
reg j,k,clk,rst;
wire q;
jk_ff dut(.j(j),.k(k),.clk(clk),.rst(rst),.q(q));
always #20 clk=~clk;
initial begin
        $monitor("Clock=%b | Reset=%b | j=%b | k=%b | q=%b | Time=%0t",clk,rst,j,k,q,$time);
        $dumpfile("jkgtk.vcd");
        $dumpvars(0);
        clk=0;

        rst=0;
        j=0;k=1;#10;
        j=0;k=0;#10;
        j=1;k=0;#10;
        j=0;k=0;#10;
        j=1;k=1;#10;
        j=0;k=0;#10;
        j=0;k=1;#10;
        j=0;k=0;#10;

        rst=1;
        j=1'bx;k=1'bx;#10;

        rst=0;
        j=1;k=0;#10;
        j=0;k=0;#10;
        $finish;
end
endmodule   
