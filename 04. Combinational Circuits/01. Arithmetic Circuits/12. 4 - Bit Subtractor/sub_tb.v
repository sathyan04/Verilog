module sub_tb;
reg [3:0]a,b;
wire [4:0]diff;
sub dut(.a(a),.b(b),.diff(diff));
initial begin
$monitor("%t | a=%d | b=%d | difference=%d",$time,a,b,diff);
$dumpfile("subgtk.vcd");
$dumpvars(0);
a=4'd10;b=4'd5;#10;
a=4'd9;b=4'd5;#10;   
a=4'd8;b=4'd5;#10;   
a=4'd7;b=4'd5;#10;   
a=4'd6;b=4'd5;#10;   
a=4'd5;b=4'd5;#10;   
a=4'd4;b=4'd5;#10;   
a=4'd3;b=4'd5;#10;  
a=4'd2;b=4'd5;#10;   
a=4'd1;b=4'd5;#10;  
a=4'd0;b=4'd5;#10;
$finish;
end
endmodule     
