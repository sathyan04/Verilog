module testbench ();
  
  parameter data_width = 4;
  reg clk; 
  reg rst;
  reg [3] op;
  reg [data_width-1:0] a; 
  reg [data_width-1:0] b;
  wire [data_width-1:0] out;
  //Flags
  wire zero;
  wire carry; 
  wire negative;
  wire overflow; 
  wire borrow; 
  wire parity;  
  
  seq_alu #(.data_width(data_width)) dut(
    .clk(clk),
    .rst(rst),
    .op(op),
    .a(a),
    .b(b),
    .out(out),
    .zero(zero),
    .carry(carry),
    .negative(negative),
    .overflow(overflow),
    .borrow(borrow),
    .parity(parity)
);
  
  initial begin
    clk = 1;
    forever #10 clk = ~clk;
  end
  
  initial begin
    rst=1;#20;
    rst=0;
  
    for(integer i=0; i<=7; i++) begin
      a=$random; b=$random; op=i;
      @(posedge clk);
      #5;
      $display("\n\t| Stimuli	:	Op_Code = %d | A =%d | B =%d | Out =%d | Time = %0t |\t\n\t| Flags		:	Zero =%0b | Negative = %0b | Carry = %0b | Borrow = %0b | Overflow = %0b | Parity = %s |\t\n",op, a, b, out, $time, zero, negative, carry, borrow, overflow, parity ? "Even" : "Odd");
    end
    
    $finish;
  end
  
endmodule
