`timescale 1ns / 1ps

module xor_gate_tb;
reg p,q;
wire r;
xor_gate uut(.a(p),.b(q),.y(r));
    initial begin
        $display("a b | y");
        $monitor("%b %b | %b",p,q,r);
        p = 0; q = 0; #10;
        p = 0; q = 1; #10;
        p = 1; q = 0; #10;
        p = 1; q = 1; #10;
        $finish;
     end
endmodule
