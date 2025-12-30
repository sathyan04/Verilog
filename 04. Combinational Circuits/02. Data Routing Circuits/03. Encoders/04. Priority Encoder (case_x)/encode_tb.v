module encode_tb();
reg [3:0] in;
wire [1:0] out;
wire valid;
encode dut(.in(in),.out(out),.valid(valid));
initial begin
        $monitor("Input = %b | Output = %b | Is Valid = %b | Time = %0t",in,out,valid,$time);
        $dumpfile("encodegtk.vcd");
        $dumpvars(0);
        $display("");
        in=4'b0000;#10;
        $display("");
        in=4'b0001;#10;
        $display("");
        in=4'b0010;#10;
        in=4'b0011;#10;
        $display("");
        in=4'b0100;#10;
        in=4'b0101;#10;
        in=4'b0110;#10;
        in=4'b0111;#10;
        $display("");
        in=4'b1000;#10;
        in=4'b1001;#10;
        in=4'b1010;#10;
        in=4'b1011;#10;
        in=4'b1100;#10;
        in=4'b1111;#10;
        in=4'b1110;#10;
        in=4'b1111;#10;
        $display("");
        $finish;
end
endmodule
