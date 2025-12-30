module gate(input a,b, output and1,or1,nand1,nor1,xor1,xnor1);
and(and1,a,b);
or(or1,a,b);
nand(nand1,a,b);
nor(nor1,a,b);
xor(xor1,a,b);
xnor(xnor1,a,b);
endmodule

