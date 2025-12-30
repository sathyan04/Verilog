module or1(input a,b, output y);
wire w,p1;
supply1 vdd;
supply0 gnd;
pmos(p1,vdd,a);
pmos(w,p1,b);
nmos(w,gnd,a);
nmos(w,gnd,b);
pmos(y,vdd,w);
nmos(y,gnd,w);
endmodule

