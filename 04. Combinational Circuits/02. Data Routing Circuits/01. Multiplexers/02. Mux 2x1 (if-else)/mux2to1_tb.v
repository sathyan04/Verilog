module mux_tb();
reg a,b,sel;
wire y;
mux1 dut(a,b,sel,y);
initial begin
    $monitor("sel=%b a=%b b=%b | y=%b",sel,a,b,y);
    $dumpfile("muxgtk.vcd");
    $dumpvars(0);
    sel=0;a=0;b=1;#10;
    sel=1;a=0;b=1;#10;
    $finish;
end
endmodule
