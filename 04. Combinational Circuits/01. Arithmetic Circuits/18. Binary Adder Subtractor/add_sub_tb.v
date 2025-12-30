`timescale 1ns / 1ps

module add_sub_tb;
    reg [3:0]a,b;
    reg cin;
    wire [3:0]sum;
    wire cout;
    
add_sub dut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    initial begin
        $monitor("A=%b B=%b Cin=%b | Sum=%b Cout=%b",a,b,cin,sum,cout);
        a=4'b0001;b=4'b1000;cin=0;#10; 
        a=4'b0011;b=4'b1100;cin=0;#10;
        a=4'b0111;b=4'b1110;cin=0;#10;
        a=4'b0001;b=4'b1000;cin=1;#10;
        a=4'b0011;b=4'b1100;cin=1;#10;
        a=4'b0111;b=4'b1110;cin=1;#10;
        $finish;
    end
endmodule
