module parity_tb();
reg [3:0] d;
wire ep,op;
parity dut(.d(d),.ep(ep),.op(op));
initial begin
$monitor("Input=%b | Even Parity=%b | Odd Parity=%b | Time=%0t",d,ep,op,$time);
$dumpfile("paritygtk.vcd");
$dumpvars(0);
d=4'd0;#10;
d=4'd1;#10;
d=4'd2;#10;
d=4'd3;#10;
d=4'd4;#10;
d=4'd5;#10;
d=4'd6;#10;
d=4'd7;#10;
d=4'd8;#10;
d=4'd9;#10;
d=4'd10;#10;
d=4'd11;#10;
d=4'd12;#10;
d=4'd13;#10;
d=4'd14;#10;
d=4'd15;#10;
$finish;
end
endmodule
