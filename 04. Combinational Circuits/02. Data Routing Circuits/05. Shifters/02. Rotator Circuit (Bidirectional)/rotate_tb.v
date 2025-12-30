module rotate_tb();
reg [3:0] in;
reg d;
wire [3:0] r;
rotate dut(.in(in),.d(d),.r(r));
initial begin
	$dumpfile("rotategtk.vcd");
	$dumpvars(0);
	d=0;
	in=4'b1100;#10;
	$display("");
	$display("Rotate Right:-");
	$display("Before Rotation = %b",in);
	$display("After Rotation  = %b",r);

	d=1;
	in=4'b0110;#10;
	$display("");
        $display("Rotate Left:-");
        $display("Before Rotation = %b",in);
        $display("After Rotation  = %b",r);

	$display("");
	$finish;
end
endmodule
