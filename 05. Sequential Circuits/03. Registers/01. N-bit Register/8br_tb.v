module n_bit_register_tb();
reg clk;
reg [7:0] in;
wire [7:0] out;
n_bit_register #(8) dut(.clk(clk),.in(in),.out(out));
initial begin
        clk=0;
        forever #10 clk=~clk;
end
initial begin
        $monitor("Clock=%b | in=%d | out=%d | Time=%0t",clk,in,out,$time);
        $dumpfile("8brgtk.vcd");
        $dumpvars(0);
        in=8'd12;#20;
        in=8'd39;#20;
        in=8'd72;#20;
        in=8'd110;#20;
	in=8'd57;#20;
        $finish;
end
endmodule
