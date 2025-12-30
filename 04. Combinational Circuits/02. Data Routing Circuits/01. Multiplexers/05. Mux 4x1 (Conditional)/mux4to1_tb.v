module mux4to1_tb;
reg i0,i1,i2,i3,s0,s1;
wire y;
mux4to1 dut(i0,i1,i2,i3,s0,s1,y);
initial begin
$monitor("Time=%0t | s1=%b s0=%b | y=%b",$time,s1,s0,y);
$dumpfile("muxgtk.vcd");
$dumpvars(0);
s1=0;s0=0;i0=0;i1=1;i2=0;i3=1;#10;
s1=0;s0=1;i0=0;i1=1;i2=0;i3=1;#10;
s1=1;s0=0;i0=0;i1=1;i2=0;i3=1;#10;
s1=1;s0=1;i0=0;i1=1;i2=0;i3=1;#10;
$finish;
end
endmodule
