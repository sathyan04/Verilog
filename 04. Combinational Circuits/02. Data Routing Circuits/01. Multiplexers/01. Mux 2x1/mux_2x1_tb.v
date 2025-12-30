`timescale 1ns / 1ps

module mux_2x1_tb;
    reg a,b,sel;
    wire y;
mux_2x1 dut(.a(a),.b(b),.sel(sel),.y(y));
    initial begin
        $display("~ ~ ~ MUX - 2 : 1 ~ ~ ~");
        $monitor("sel=%b | a=%b b=%b | y=%b",sel,a,b,y);
        
        a=0; b=0; sel=0; #10;
        a=0; b=1; sel=0; #10;
        a=1; b=0; sel=0; #10;
        a=1; b=1; sel=0; #10;
        
        a=0; b=0; sel=1; #10;
        a=0; b=1; sel=1; #10;
        a=1; b=0; sel=1; #10;
        a=1; b=1; sel=1; #10;
        
        $finish;
    end
endmodule