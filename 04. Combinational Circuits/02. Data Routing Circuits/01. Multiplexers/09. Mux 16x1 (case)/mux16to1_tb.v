module mux16to1_tb;
reg [3:0]sel;
reg [15:0]in;
wire y;
mux16to1 dut(.sel(sel),.in(in),.y(y));
initial begin
$monitor("Time=%0t | Sel=%d | y=%b",$time,sel,y);
$dumpfile("muxgtk.vcd");
$dumpvars(0);
in=16'b1011001100111000;
sel=4'd0;#10;
sel=4'd1;#10; 
sel=4'd2;#10; 
sel=4'd3;#10; 
sel=4'd4;#10; 
sel=4'd5;#10; 
sel=4'd6;#10; 
sel=4'd7;#10; 
sel=4'd8;#10; 
sel=4'd9;#10; 
sel=4'd10;#10; 
sel=4'd11;#10; 
sel=4'd12;#10; 
sel=4'd13;#10; 
sel=4'd14;#10; 
sel=4'd15;#10;
$finish;
end
endmodule 
