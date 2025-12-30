module barrel_shifter_tb();
reg d;
reg [1:0] sel;
reg [3:0] in;
wire [3:0] out;
barrel_shifter dut(.d(d),.sel(sel),.in(in),.out(out));
initial begin	
	$dumpfile("barrelgtk.vcd"); 
        $dumpvars(0);   
        $display("");   
        d=0;in=4'b1100;                                                     
        $display("Right Barrel Shifting %b:",in);                           
        $display("");                                                       
        sel=2'b00;#10;
        $display("No shifting   = %b",out);                                 
        sel=2'b01;#10;          
        $display("By 1 bit      = %b",out);
        sel=2'b10;#10;          
        $display("By 2 bits     = %b",out);
        sel=2'b11;#10;          
        $display("By 3 bits     = %b",out);                                 
        $display("");                                                       
        d=1;in=4'b1100; 
        $display("Left Barrel Shifting %b:",in);                            
        $display("");                                                                                                                                    
        sel=2'b00;#10;                                                      
        $display("No shifting   = %b",out);                                          
        sel=2'b01;#10;                                                      
        $display("By 1 bit      = %b",out);                                          
        sel=2'b10;#10;                                                      
        $display("By 2 bits     = %b",out);                                                                                                              
        sel=2'b11;#10;                                                      
        $display("By 3 bits     = %b",out);                                 
        $display("");                                                       
        $finish;
end
endmodule
