module comp_tb();
reg [3:0]a,b;
wire e,g,l;
comp dut(a,b,e,g,l);
initial begin
$monitor("a=%b b=%b | Equal=%b | Greater=%b | Lesser=%b",a,b,e,g,l);
$dumpfile("compgtk.vcd");
$dumpvars(0);
a=4'd4;b=4'd10;#10;
a=4'd12;b=4'd12;#10;
a=4'd11;b=4'd3;#10;
$finish;
end
endmodule
