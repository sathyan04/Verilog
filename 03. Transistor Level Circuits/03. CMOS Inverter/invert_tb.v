module invert_tb;
reg in;
wire out;
cmos1 dut(.in(in),.out(out));
initial begin
$monitor("in=%b | out=%b",in,out);
$dumpfile("invertergtk.vcd");
$dumpvars(0);
in=0;#10;
in=1;#10;
$finish;
end
endmodule
