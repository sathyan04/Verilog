module xnor1(input a,b, output y);
supply1 vdd;
supply0 gnd;
wire n1,n2,n3;

pmos(n1,vdd,a);
pmos(n1,vdd,~b);
pmos(y,n1,~a);
pmos(y,n1,b);

nmos(n2,gnd,~b);
nmos(y,n2,a);
nmos(n3,gnd,b);
nmos(y,n3,~a);

endmodule

