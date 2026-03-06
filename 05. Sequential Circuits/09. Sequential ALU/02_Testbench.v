module testbench ();
  
  parameter data_width = 4;
  parameter op_size = 2;
  reg clk,rst;
  reg [op_size-1:0] op;
  reg [data_width-1:0] a,b;
  wire [data_width-1:0] out;
  wire z, c, n, v, b;
  
  seq_alu #(
    .data_width(data_width),
    .op_size(op_size)) 
  dut(
    .clk(clk),
    .rst(rst),
    .op(op),
    .a(a),
    .b(b),
    .y(y),
    .z(z),
    .c(c),
    .n(n),
    .v(v),
    .b(b)
);
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    rst=1;#10;
    rst=0;
    a=$random; b=$random; op=0; #10;
    a=$random; b=$random; op=1; #10;
    $finish;
  end
  
  always @(posedge clk) begin
    if(!rst) begin
      $strobe("\tOp_Code=%0d | A=%0d | B=%0d | Y=%0d | Time=%0t |\t",op, a, b, y, $time);
      $strobe("\tFlags: Zero=%0d | Negative=%0d | Carry=%0d | Borrow=%0d | Overflow=%0d |\t",z,n,c,b,o);
    end
  end
  
endmodule
