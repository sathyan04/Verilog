module nor1(input a,b, output y);
supply1 vdd;
supply0 gnd;
wire p1;
pmos(p1,vdd,a);
pmos(y,p1,b);
nmos(y,gnd,a);
nmos(y,gnd,b);
endmodule
