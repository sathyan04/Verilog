module siso_tb();
reg sin,clk,en,rst;
wire sout;
wire [3:0]srtb;
siso dut(.sin(sin),.clk(clk),.en(en),.rst(rst),.sout(sout),.srtb(srtb));
initial begin
	clk=1;
	forever #10 clk=~clk;
end
initial begin
	$monitor("En=%b | Clk=%b | Rst=%b | In=%b | Memory=%b | Out=%b | Time=%0t",en,clk,rst,sin,srtb,sout,$time);
	$dumpfile("sisogtk.vcd");
	$dumpvars(0);
	en=1;rst=0;
       	sin=0;#10;
       	sin=1;#10;
       	sin=0;#10;
       	sin=1;#10;
      	sin=1;#10; 
	sin=0;#10;
	sin=1;#10;
	sin=1;#10;
       	sin=0;#10;
	sin=1;#10;
	sin=1;#10;
	sin=1;#10;

	$finish;
end
endmodule
