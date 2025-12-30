module btxs_tb;
reg [3:0]bin;
wire [3:0]exs;
btxs dut(bin,exs);
initial begin
$dumpfile("btxsgtk.vcd");
$dumpvars(0);
bin=0;#10;
bin=1;#10;             
bin=2;#10;             
bin=3;#10;             
bin=4;#10;             
bin=5;#10;             
bin=6;#10;             
bin=7;#10;             
bin=8;#10;             
bin=9;#10;             
bin=10;#10; 
$finish;
end
endmodule            
