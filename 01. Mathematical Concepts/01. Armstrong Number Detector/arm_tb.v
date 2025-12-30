module arm_tb();
reg [9:0] N;
wire armstrong;
arm dut(.N(N),.armstrong(armstrong));
initial begin
$monitor("Input=%d | Is armstrong=%b",N,armstrong);
$dumpfile("armgtk.vcd");
$dumpvars(0);
N=10'd153;#10;
N=10'd202;#10; 
N=10'd370;#10; 
N=10'd777;#10; 
N=10'd371;#10; 
N=10'd100;#10; 
N=10'd407;#10; 
N=10'd022;#10;
$finish;
end
endmodule 
