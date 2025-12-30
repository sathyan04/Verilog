module decode_tb();
reg [2:0] a;
wire [7:0] y;
decode dut(.a(a),.y(y));
initial begin
$monitor("a=%b | y=%b | Time=%0t",a,y,$time);
$dumpfile("decodegtk.vcd");
$dumpvars(0);
a[2]=0;a[1]=0;a[0]=0;#10;
a[2]=0;a[1]=0;a[0]=1;#10;
a[2]=0;a[1]=1;a[0]=0;#10;
a[2]=0;a[1]=1;a[0]=1;#10;
a[2]=1;a[1]=0;a[0]=0;#10;
a[2]=1;a[1]=0;a[0]=1;#10;
a[2]=1;a[1]=1;a[0]=0;#10;
a[2]=1;a[1]=1;a[0]=1;#10;
$finish;
end
endmodule
