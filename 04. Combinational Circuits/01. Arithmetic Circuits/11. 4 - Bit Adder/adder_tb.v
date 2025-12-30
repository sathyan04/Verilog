module adder_tb;
reg [3:0] a,b;
wire [4:0] sum;
adder dut (.a(a),.b(b),.sum(sum));
initial begin
$monitor("%t | a=%d | b=%d || sum=%d",$time,a,b,sum);
$dumpfile("addergtk.vcd");
$dumpvars(0);
a=4'd5;b=4'd10;#5;
a=4'd4;b=4'd12;#5; 
a=4'd7;b=4'd9;#5; 
$finish;
end
endmodule
