module ripple_tb();
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;
ripple dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$monitor("A=%b B=%b C=%b | Sum=%b Carry=%b | Time=%0t",a,b,cin,sum,cout,$time);
$dumpfile("ripplegtk.vcd");
$dumpvars(0);
a=4'b0011;b=4'b1010;cin=0;#10;
a=4'b1100;b=4'b1000;cin=1;#10; 
a=4'b0010;b=4'b0010;cin=0;#10; 
a=4'b1011;b=4'b1111;cin=1;#10; 
$finish;
end
endmodule
