module natural_tb;
reg [3:0]n;
wire [3:0]sum;
natural dut(n,sum);
initial begin
$dumpfile("naturalgtk.vcd");
$dumpvars(0);
n=3;#5;
n=4;#5;  
n=5;#5;  
n=6;#5;  
n=7;#5;  
n=8;#5;
n=9;#5;
n=10;#5;
$finish;
end
endmodule  
