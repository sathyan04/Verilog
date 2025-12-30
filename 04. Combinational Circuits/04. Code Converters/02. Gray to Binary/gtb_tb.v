module gtb_tb();
reg [3:0] gray;
wire [3:0] bin;
gtb dut(.gray(gray),.bin(bin));
initial begin
$monitor("Gray=%b | Binary=%b | Time=%0t",gray,bin,$time);
$dumpfile("gtbgtk.vcd");
$dumpvars(0);
gray=4'd0;#10;
gray=4'd1;#10;
gray=4'd3;#10;
gray=4'd2;#10;
gray=4'd6;#10;
gray=4'd7;#10;
gray=4'd5;#10;
gray=4'd4;#10;
gray=4'd12;#10;
gray=4'd13;#10;
gray=4'd15;#10;
gray=4'd14;#10;
gray=4'd10;#10;
gray=4'd11;#10;
gray=4'd9;#10;
gray=4'd8;#10;
$finish;
end
endmodule
