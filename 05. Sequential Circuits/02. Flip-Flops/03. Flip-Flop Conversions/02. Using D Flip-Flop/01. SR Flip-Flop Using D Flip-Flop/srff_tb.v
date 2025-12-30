module srff_tb();
reg s,r,clk,rst;
wire q;
srff dut(.s(s),.r(r),.clk(clk),.rst(rst),.q(q));
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	$dumpfile("srgtk.vcd");
	$dumpvars(0);
	rst=1;{s,r}=2'b00;#10;rst=0;
	{s,r}=2'b01;#10;
	{s,r}=2'b00;#10;
	{s,r}=2'b10;#10;
	{s,r}=2'b00;#10;
	{s,r}=2'b11;#10;
	{s,r}=2'b00;#10;
	{s,r}=2'b01;#10;
	{s,r}=2'b00;#10;
	{s,r}=2'b10;#10;
	{s,r}=2'b00;#10;
	{s,r}=2'b11;#10;
	{s,r}=2'b00;#10;
	{s,r}=2'b01;#20;
	$finish;
end
always @(posedge clk && rst==0) begin
	$display("SR_input=%b | Q_output=%b | Time=%0t",{s,r},q,$time);
end
endmodule
