module true_dual_port_ram_tb();
parameter length=8, location=16;
integer i;
reg clk,a_rw,b_rw;
reg [$clog2(location)-1:0] a_w_addr, b_w_addr, a_r_addr, b_r_addr;
reg [length-1:0] a_indata, b_indata;
wire [length-1:0] a_outdata, b_outdata;
true_dual_port_ram #(length,location) dut(
	.clk(clk), 
	.a_rw(a_rw), 
	.b_rw(b_rw), 
	.a_w_addr(a_w_addr), 
	.b_w_addr(b_w_addr), 
	.a_r_addr(a_r_addr), 
	.b_r_addr(b_r_addr), 
	.a_indata(a_indata), 
	.b_indata(b_indata), 
	.a_outdata(a_outdata), 
	.b_outdata(b_outdata));
initial begin
	clk=0;
	forever #10 clk=~clk;
end
initial begin
	$dumpfile("ramgtk.vcd");
	$dumpvars(0);

	a_rw = 1;
    	b_rw = 1;

    	a_w_addr = 0;
    	b_w_addr = 0;
    	a_r_addr = 0;
    	b_r_addr = 0;
    	a_indata = 0;
    	b_indata = 0;
    	#20;
	
	$display("\nBoth at write mode\n");
	for(i=0;i<location;i++) begin
		a_w_addr=$random%location;
		b_w_addr=$random%location;
		a_indata=$random;
		b_indata=$random;
		#20;
	end

	a_rw=0; b_rw=0;
	$display("\nBoth at read mode\n");
	for(i=0;i<location;i++) begin
                a_r_addr=$random%location;
                b_r_addr=$random%location;
                #20;
	end

	a_rw=0; b_rw=1;
        $display("\nA at read mode and B at write mode\n");
        for(i=0;i<location;i++) begin
                a_r_addr=$random%location;
                b_w_addr=$random%location;
                b_indata=$random;
                #20;
        end

        a_rw=1; b_rw=0;
        $display("\nA at write mode and B at read mode\n");
        for(i=0;i<location;i++) begin
                a_w_addr=$random%location;
                b_r_addr=$random%location;
		a_indata=$random;
                #20;
        end
	$finish;
end

always @(posedge clk) begin
	case({a_rw,b_rw})
		2'b00: begin
			$display("A: Output Address:%b | Output Data:%b || B: Output Address:%b | Output Data:%b | Time=%0t",a_r_addr, a_outdata, b_r_addr, b_outdata, $time);
		end
		2'b01: begin
                        $display("A: Output Address:%b | Output Data:%b || B: Input Address :%b | Input Data :%b | Time=%0t",a_r_addr, a_outdata, b_w_addr, b_indata, $time);
                end
		2'b10: begin
                        $display("A: Input Address :%b | Input Data :%b || B: Output Address:%b | Output Data:%b | Time=%0t",a_w_addr, a_indata, b_r_addr, b_outdata, $time);
                end
		2'b11: begin
                        $display("A: Input Address :%b | Input Data :%b || B: Input Address :%b | Input Data :%b | Time=%0t",a_w_addr, a_indata, b_w_addr, b_indata, $time);
                end
	endcase
end

endmodule
