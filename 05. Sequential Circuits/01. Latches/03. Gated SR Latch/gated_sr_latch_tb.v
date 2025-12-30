module gated_sr_latch_tb();
reg s,r,en;
wire q,qbar;
assign qbar=~q;
gated_sr_latch dut(.s(s),.r(r),.en(en),.q(q));
initial begin
	$monitor("S=%b | R=%b || Q=%b | ~Q=%b",s,r,q,qbar);
	$dumpfile("gatedsrgtk.vcd");
	$dumpvars(0);
	en=1;
	$display("Enable = 1");
	s=0;r=1;#10;
	s=0;r=0;#10;
	s=1;r=0;#10;
	s=0;r=0;#10; 
	s=1;r=1;#10;
	s=0;r=0;#10;
	en=0;
	$display("Enable = 0"); 
	s=0;r=0;#10; 
	s=0;r=1;#10;
       	s=1;r=0;#10;
	s=1;r=1;#10;        
	$finish;
end
endmodule
