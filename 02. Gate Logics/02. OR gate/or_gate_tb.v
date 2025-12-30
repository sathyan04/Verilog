`timescale 1ns / 1ps

module or_gate_tb;

reg a;
reg b;
wire y;

// Instantiate the OR gate
or_gate uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $display("a b | y");

    a = 0; b = 0; #10;
    $display("%b %b | %b", a, b, y);
    
    a = 0; b = 1; #10;
    $display("%b %b | %b", a, b, y);
    
    a = 1; b = 0; #10;
    $display("%b %b | %b", a, b, y);
    
    a = 1; b = 1; #10;
    $display("%b %b | %b", a, b, y);
    
    $finish;
end

endmodule
