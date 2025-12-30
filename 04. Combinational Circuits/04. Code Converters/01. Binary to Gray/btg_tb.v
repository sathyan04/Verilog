module btg_tb();
reg [3:0] bin;
wire [3:0] gray;
btg dut(.bin(bin),.gray(gray));
initial begin
$monitor("Binary=%b | gray=%b | time=%0t",bin,gray,$time);
$dumpfile("btggtk.vcd");
$dumpvars(0);
bin=4'd0;#10;
bin=4'd1;#10;
bin=4'd2;#10;
bin=4'd3;#10;
bin=4'd4;#10;
bin=4'd5;#10;
bin=4'd6;#10;
bin=4'd7;#10;
bin=4'd8;#10;
bin=4'd9;#10;
bin=4'd10;#10;
bin=4'd11;#10;
bin=4'd12;#10;
bin=4'd13;#10;
bin=4'd14;#10;
bin=4'd15;#10;
$finish;
end
endmodule
