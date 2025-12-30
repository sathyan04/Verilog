module mux1_tb;
reg [7:0] in;
reg [2:0] sel;
wire y;
mux1 dut(.in(in),.sel(sel),.y(y));
initial begin
$monitor("Time=%0t | sel=%b in=%b | y=%b",$time,sel,in,y);
$dumpfile("muxgtk.vcd");
$dumpvars(0,mux1_tb);
in=8'b00110011;
sel=3'b000;#10;
sel=3'b001;#10;      
sel=3'b010;#10;      
sel=3'b011;#10;  
sel=3'b100;#10;  
sel=3'b101;#10;
sel=3'b110;#10;  
sel=3'b111;#10;
$finish;
end
endmodule      

