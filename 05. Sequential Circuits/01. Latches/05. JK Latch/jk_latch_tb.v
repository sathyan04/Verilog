module jk_latch_tb();
reg j,k,en,rst;
wire q;
jk_latch dut(.j(j),.k(k),.en(en),.rst(rst),.q(q));
initial begin
$monitor("Enable=%b | Reset=%b | j=%b | k=%b | q=%b",en,rst,j,k,q);
$dumpfile("jkgtk.vcd");
$dumpvars(0);

rst=0;

en=0;
j=0;k=1;#10;
j=0;k=0;#10;
j=1;k=0;#10;
j=0;k=0;#10;
j=1;k=1;#10;
j=0;k=0;#10;
j=0;k=1;#10;
j=0;k=0;#10;

$display("");
                                                                      
en=1;
j=0;k=1;#10;
j=0;k=0;#10;
j=1;k=0;#10;
j=0;k=0;#10;
j=1;k=1;#10;
j=0;k=0;#10;
j=0;k=1;#10;
j=0;k=0;#10;
$display("");

rst=1;                                                                      

en=0;
j=0;k=1;#10;
j=0;k=0;#10;
j=1;k=0;#10;
j=0;k=0;#10;
j=1;k=1;#10;
j=0;k=0;#10;
j=0;k=1;#10;
j=0;k=0;#10;
$display("");
                                                                      
en=1;
j=0;k=1;#10;
j=0;k=0;#10;
j=1;k=0;#10;
j=0;k=0;#10;
j=1;k=1;#10;
j=0;k=0;#10;
j=0;k=1;#10;
j=0;k=0;#10;
$display("");

$finish;
end
endmodule
