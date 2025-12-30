module demux_1x2_tb;
    reg in;
    reg sel;
    wire y0, y1;

    demux_1x2 uut (.in(in), .sel(sel), .y0(y0), .y1(y1));

    initial begin
        $monitor("in=%b sel=%b -> y0=%b y1=%b", in, sel, y0, y1);

        in = 1; sel = 0; #10;
        in = 1; sel = 1; #10;
        in = 0; sel = 0; #10;
        in = 0; sel = 1; #10;
        
        $finish;
    end
endmodule
