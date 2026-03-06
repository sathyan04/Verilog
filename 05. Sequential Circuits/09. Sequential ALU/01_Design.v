module seq_alu #(parameter data_width = 4, parameter op_size = 1)(
  input clk, rst,
  input [op_size-1:0] op,
  input [data_width-1:0] a, b,
  output reg [data_width-1:0] out,
  output reg z, c, n, v, b
);
  
  /* 
  Flags: 
  	z - Zero
    c - Carry
    n - Negative
    v - Overflow
    b - Borrow
  */

  parameter [op_size-1:0] addition=0, 
  subtraction=1;
  
  reg [data_width:0] temp; // carry handling
  
  always @(posedge clk) begin
    
    if(rst) begin
      z<=0;
      c<=0;
      n<=0;
      v<=0;
      b<=0;
      out<=0;
      temp<=0;
    end
    
    else begin
      case(op)
        
        addition: begin
          temp<=a+b;
          out<=temp[data_width-1:0];
          c<=temp[data_width];
          v<=(a[data_width-1]==b[data_width-1]) && (temp[data_width-1]!=a[data_width-1]);
        end
        
        subtraction: begin
          temp<=a-b;
          out<=temp[data_width-1:0];
          b<=temp[data_width];
          v<=(a[data_width-1]!=b[data_width-1]) && (temp[data_width-1]!=a[data_width-1]);
        end
        
      endcase
      
      z<=(out == 0);
      n<=out[data_width-1];
    end
  end
  
endmodule
