module rca_tb;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;
rca dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$monitor("Time=%0t | a=%b b=%b cin=%b | sum=%b carry=%b",$time,a,b,cin,sum,cout);
$dumpfile("rcagtk.vcd");
$dumpvars(0);
a=4'b0011;b=4'b0010;cin=1;#10;
a=4'b1111;b=4'b0110;cin=0;#10; 
a=4'b0001;b=4'b1000;cin=1;#10; 
a=4'b0111;b=4'b1010;cin=0;#10;  
$finish;
end
endmodule
