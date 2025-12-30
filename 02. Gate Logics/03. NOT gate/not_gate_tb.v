`timescale 1ns / 1ps

module not_gate_tb;
reg a;
wire y;

not_gate uut(.a(a),.y(y));
    initial begin
        $display("a | y");
        a=0;#10;
        $display("%b | %b",a,y);
        a=1;#10;
        $display("%b | %b",a,y);
        $finish;
    end
endmodule
