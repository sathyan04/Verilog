module fifo_full_and_empty_tb();
reg clk, rst, w_en, r_en;
reg [7:0] in_data;
wire [7:0] out_data;
wire full, empty;
integer i;
fifo_full_and_empty dut(.clk(clk),.rst(rst),.w_en(w_en),.r_en(r_en),.in_data(in_data),.out_data(out_data),.full(full),.empty(empty));
initial begin
	clk=0;
	forever #10 clk=~clk;
end
initial begin
	$dumpfile("fifogtk.vcd");
	$dumpvars(0);
	rst=1;in_data=0;w_en=0;r_en=0;#20;
	rst=0;w_en=1;
	for(i=0;i<4;i++) begin
		in_data=$random;#20;
	end
	w_en=0;r_en=1;#90;
	$finish;
end
always @(posedge clk && !rst) begin
	if(w_en) begin
		$display("A: Data Input :%b | Time=%0t",in_data,$time);
	end
	else if (r_en) begin
		$display("B: Data Output:%b | Time=%0t",out_data,$time);
	end
end
endmodule
