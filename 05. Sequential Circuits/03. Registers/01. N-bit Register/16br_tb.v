module n_bit_register_tb();
reg clk;
reg [15:0] in;
wire [15:0] out;
n_bit_register #(16) dut(.clk(clk),.in(in),.out(out));
initial begin
        clk=0;
        forever #10 clk=~clk;
end
initial begin
        $monitor("Clock=%b | in=%d | out=%d | Time=%0t",clk,in,out,$time);
        $dumpfile("16brgtk.vcd");
        $dumpvars(0);
        in=16'd2000;#20;
        in=16'd2564;#20;
        in=16'd5757;#20;
        in=16'd1111;#20;
        in=16'd2341;#20;
        $finish;
end
endmodule
