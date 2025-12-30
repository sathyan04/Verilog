module cmos1(input in, output out);
supply1 vdd;
supply0 gnd;
pmos(out,vdd,in);
nmos(out,gnd,in);
endmodule
