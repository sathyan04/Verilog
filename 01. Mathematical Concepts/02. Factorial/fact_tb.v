module fact_tb;
reg [3:0]n;
wire [31:0]fact;
factorial dut(.n(n),.fact(fact));
initial begin
$dumpfile("factgtk.vcd");
$dumpvars(0);
n=1;#10;
n=2;#10; 
n=3;#10; 
n=4;#10; 
n=5;#10; 
n=6;#10; 
n=7;#10; 
n=8;#10; 
n=9;#10; 
n=10;#10;
$finish;
end
endmodule 
