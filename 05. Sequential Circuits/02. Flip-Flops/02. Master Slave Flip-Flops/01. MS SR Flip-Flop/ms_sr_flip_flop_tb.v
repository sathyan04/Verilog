module ms_sr_flip_flop_tb();
reg s,r,clk;
wire q;
ms_sr_flip_flop dut(.s(s),.r(r),.clk(clk),.q(q));
always #10 clk=~clk;
initial begin
        $monitor("Clock=%b | s=%b | r=%b || q=%b",clk,s,r,q);
        $dumpfile("mssrgtk.vcd");
        $dumpvars(0);
        clk=1;
        s=0;r=1;#10;
        s=0;r=0;#10;
        s=1;r=0;#10;
        s=0;r=0;#10;
        s=1;r=1;#10;
        s=0;r=0;#10;
        s=0;r=1;#10;
        s=0;r=0;#10;

        s=0;r=1;#10;
        s=0;r=0;#10;
        s=1;r=0;#10;
        s=0;r=0;#10;
        s=1;r=1;#10;
        s=0;r=0;#10;
        s=0;r=1;#10;
        s=0;r=0;#10;
        $finish;
end
endmodule
