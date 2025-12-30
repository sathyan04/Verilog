module nor_tb;
reg a,b;
wire y;
nor1 dut(.a(a),.b(b),.y(y));
initial begin
$dumpfile("norgtk.vcd");
$dumpvars(0);
a=0;b=0;#10;
a=0;b=1;#10;   
a=1;b=0;#10;   
a=1;b=1;#10;  
end
endmodule 
