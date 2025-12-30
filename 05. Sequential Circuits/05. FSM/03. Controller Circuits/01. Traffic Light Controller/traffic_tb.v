module traffi_light_controller_tb();
reg clk,rst;
wire e2_l, e2_r, e2_o, w2_l, w2_r, w2_o, n2_l, n2_r, n2_o,s2_l, s2_r, s2_o;
traffic_light_controller dut(clk, rst, e2_l, e2_r, e2_o, w2_l, w2_r, w2_o, n2_l, n2_r, n2_o,s2_l, s2_r, s2_o);
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("trafficgtk.vcd");
	$dumpvars(0);
	rst=1;#10;rst=0;
	#100;
	$finish;
end

always @(posedge clk) begin
	if(!rst) begin
		$display("");
		$display("Traffic Light Controller");
		$display("------------------------");
		$display("From East		: Left=%b | Right=%b | Opposite=%b",e2_l, e2_r, e2_o);
		$display("From West		: Left=%b | Right=%b | Opposite=%b",w2_l, w2_r, w2_o);
		$display("From North	: Left=%b | Right=%b | Opposite=%b",n2_l, n2_r, n2_o);
		$display("From South	: Left=%b | Right=%b | Opposite=%b",s2_l, s2_r, s2_o);
		$display("Time taken 	: %0t",$time);
		$display("");
	end
end
endmodule
