module async_up_down_counter_tb();
reg mode,clk,rst;
wire [3:0] q,qbar;
async_up_down_counter dut(.mode(mode),.clk(clk),.rst(rst),.q(q),.qbar(qbar));
initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$dumpfile("updowngtk.vcd");
$dumpvars(0);
rst=1;
mode=1;
#10;
rst=0;

#160;

rst=1;
mode=0;
#10;
rst=0;
#160;
$finish;
end

always @(negedge clk) begin
$display("Mode=%b | Reset=%b | Count=%d",mode,rst,q);
end
endmodule
