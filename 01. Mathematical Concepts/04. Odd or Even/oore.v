module oore(input [7:0]n, output is_even, is_odd);
assign is_even = ~n[0];
assign is_odd  = n[0];
endmodule
