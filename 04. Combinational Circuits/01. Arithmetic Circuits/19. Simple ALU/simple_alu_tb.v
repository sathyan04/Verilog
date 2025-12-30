`timescale 1ns / 1ps

module simple_alu_tb;
reg a,b;
reg [3:0] sel;
wire result;
simple_alu dut(.a(a), .b(b), .sel(sel), .result(result));
    initial begin
        a=0;
        b=1;
        sel=0;#10;$display("Operation = AND     , A=%0b , B=%0b , Result=%0b",a,b,result);
        sel=1;#10;$display("Operation = OR      , A=%0b , B=%0b , Result=%0b",a,b,result);
        sel=2;#10;$display("Operation = XOR     , A=%0b , B=%0b , Result=%0b",a,b,result);
        sel=3;#10;$display("Operation = NOT A   , A=%0b , B=%0b , Result=%0b",a,b,result);
        sel=4;#10;$display("Operation = NOT B   , A=%0b , B=%0b , Result=%0b",a,b,result);
        sel=5;#10;$display("Operation = ADD     , A=%0b , B=%0b , Result=%0b",a,b,result);
        sel=6;#10;$display("Operation = SUB     , A=%0b , B=%0b , Result=%0b",a,b,result);
        sel=7;#10;$display("Operation = PASS A  , A=%0b , B=%0b , Result=%0b",a,b,result);
        sel=8;#10;$display("Operation = PASS B  , A=%0b , B=%0b , Result=%0b",a,b,result);
        $finish;
    end
endmodule