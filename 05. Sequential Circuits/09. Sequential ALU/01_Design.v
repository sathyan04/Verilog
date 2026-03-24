module seq_alu #(parameter data_width = 4)(
  input clk, 
  input rst,
  input [3] op,
  input [data_width-1:0] a, 
  input [data_width-1:0] b,
  output reg [data_width-1:0] out,
  //Flags
  output reg zero,
  output reg carry, 
  output reg negative,
  output reg overflow, 
  output reg borrow, 
  output reg parity
);
    
  always @(posedge clk) begin
    
    if(rst) begin
      zero			<=	0;
      carry			<=	0;
      overflow		<=	0;
      borrow		<=	0;
      out			<=	0;
    end
    
    else begin
    
      case(op)
        
        //Arithmetic Operations
        
        //Addition
        3'd0: begin
          {carry, out} <= a+b;
          overflow <= (a[data_width-1]==b[data_width-1]) && (out[data_width-1]!=a[data_width-1]);
        end
        
        //Subtraction
        3'd1: begin
          
          if(a>b) begin
            {carry, out} <= a-b;
          end
          else if(a<b) begin
            {carry, out} <= b-a;
          end
          else begin
            carry <= 0;
            out <= 0;
          end
          
          overflow <= (a[data_width-1]!=b[data_width-1]) && (out[data_width-1]!=a[data_width-1]);
          borrow <= ~carry;
        end
        
        //Multiplication
        3'd2: begin
          {carry, out} <= a*b;
        end
        
        //Division
        3'd3: begin
          out <= a/b;
        end
        
        //Logical Operations
        
        //AND Gate
        3'd4: out <= a&b;
        
        //OR Gate
        3'd5: out <= a|b;
        
        //XOR Gate
        3'd6: out <= a^b;
        
        //XNOR Gate
        3'd7: out <= ~(a^b);
        
        default: out <= 3'bx;
      
      endcase
      
      zero <= (out == 0);
      negative <= (out[data_width-1] == 1);
      parity <= ~(^out);
    
    end
  
  end
  
endmodule
