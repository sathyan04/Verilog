module fibo_tb;
reg [4:0]n;
wire [5:0]fibon;
fibo dut(n,fibon);
initial begin
$dumpfile("fibogtk.vcd");
$dumpvars(0);
n=3;#10;
n=4;#10;
n=5;#10;
$finish;
end
endmodule
