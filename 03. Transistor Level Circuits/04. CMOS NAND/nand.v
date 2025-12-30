module nand1(input a,b, output y);

supply1 vdd;
supply0 gnd;

pmos(y,vdd,a);
pmos(y,vdd,b);

wire n1;

nmos(n1,gnd,b);
nmos(y,n1,a);

endmodule
