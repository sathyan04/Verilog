module ripple_carry_adder(
	input [3:0] a,
	input [3:0] b,
	input cin,
	output [3:0] sum,
	output cout);
wire [4:0] carry;
genvar i;
assign carry[0] = cin;
generate
	for(i=0;i<4;i=i+1) begin:RCA
		assign { carry[i+1],sum[i] } = a[i]+b[i]+carry[i];
	end
endgenerate
assign cout = carry[4];
endmodule
