module com_tb();
reg [1:0] in;
wire e,g,l;
com dut(.in(in),.e(e),.g(g),.l(l));
initial begin
       	$monitor("Input=%b | Equal=%b | Greater=%b | Lesser=%b",in,e,g,l);
       	$dumpfile("comgtk.vcd");
       	$dumpvars(0);
       	in=2'd0;#10;
       	in=2'd1;#10;
       	in=2'd2;#10;
       	in=2'd3;#10;
       	$finish;
end
endmodule
