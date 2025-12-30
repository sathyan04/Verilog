module pn_tb();
reg [15:0] num;
wire perfect;
pn dut(.num(num),.perfect(perfect));
integer i;
initial begin
$dumpfile("perfectgtk.vcd");
$dumpvars(0);
for(i=1;i<=9999;i++) begin
num=i;
#10;
if(perfect==1) $display("%0d is a perfect number...!",num);
end
$finish;
end
endmodule
