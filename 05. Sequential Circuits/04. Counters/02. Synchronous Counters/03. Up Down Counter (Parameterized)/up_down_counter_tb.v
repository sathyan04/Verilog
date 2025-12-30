module up_down_counter_tb();
parameter N=10;
reg clk,rst,mode;
wire [$clog2(N)-1:0] q;
up_down_counter #(.N(N)) dut(.clk(clk),.rst(rst),.mode(mode),.q(q));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("updowngtk.vcd");
	$dumpvars(0);
	rst=1;
	mode=1;
	#15;rst=0;
	#150;
	$display("");
	rst=1;
        mode=0;
        #15;rst=0;
        #150;
	$finish;
end
always @(posedge clk && rst==0) begin
	$display("Mode=%b | Count=%d",mode,q);
end
endmodule
