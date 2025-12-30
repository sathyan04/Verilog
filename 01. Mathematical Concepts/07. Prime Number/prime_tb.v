module prime_no_tb();
parameter N=8;
reg [N-1:0] num;
wire prime;
integer i;
prime_number #(N) dut(.num(num),.prime(prime));
initial begin
$monitor("Number=%d | Is Prime=%b | Time=%0t",num,prime,$time);
$dumpfile("primegtk.vcd");
$dumpvars(0);
num=100;#10;
num=125;#10;
num=177;#10;
num=13;#10;
$finish;
end
endmodule
