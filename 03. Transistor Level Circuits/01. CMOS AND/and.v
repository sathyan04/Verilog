module and1(input a, b, output y);

    supply1 Vdd;
    supply0 Gnd;

    wire w;

    pmos(w, Vdd, a);
    pmos(w, Vdd, b);

    wire n1;
    nmos(n1, Gnd, b);
    nmos(w, n1, a);

    pmos(y, Vdd, w);
    nmos(y, Gnd, w);

endmodule

