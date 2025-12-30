module jk_using_sr_tb();
reg j,k,clk,rst;
wire q;
jk_using_sr dut(.j(j),.k(k),.clk(clk),.rst(rst),.q(q));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("jkgtk.vcd");
	$dumpvars(0);
	rst=1;{j,k}=2'b00;#10;rst=0;
	{j,k}=2'b01;#10;
	{j,k}=2'b00;#10;
	{j,k}=2'b10;#10;
	{j,k}=2'b00;#10;
	{j,k}=2'b11;#10;
	{j,k}=2'b00;#10;
	{j,k}=2'b01;#10;
	{j,k}=2'b00;#10;
	{j,k}=2'b10;#10;
	{j,k}=2'b00;#20;
	$finish;
end
always @(posedge clk && rst==0) begin
	$display("Inputs: J=%b | K=%b | Q_output=%b | Time=%0t",j,k,q,$time);
end
endmodule
