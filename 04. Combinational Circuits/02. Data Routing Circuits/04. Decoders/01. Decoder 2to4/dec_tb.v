module dec_tb();
reg a1,a0;
wire y0,y1,y2,y3;

dec dut(a1,a0,y0,y1,y2,y3);
initial begin
$monitor("a1=%b a0=%b | y0=%b y1=%b y2=%b y3=%b | Time=%0t",a1,a0,y0,y1,y2,y3,$time);
$dumpfile("decgtk.vcd");
$dumpvars(0);
a1=0;a0=0;#10;
a1=0;a0=1;#10;  
a1=1;a0=0;#10;  
a1=1;a0=1;#10;  
$finish;
end
endmodule
