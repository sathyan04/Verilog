module true_dual_port_ram #(parameter length=4, location=8)(
	input clk,
	input a_rw, b_rw,
	input [$clog2(location)-1:0] a_w_addr, b_w_addr, a_r_addr, b_r_addr,
	input [length-1:0] a_indata, b_indata,
	output reg [length-1:0] a_outdata, b_outdata);
reg [length-1:0] memory [location-1:0];
always @(posedge clk) begin
	case({a_rw,b_rw})
		2'b00: begin
			a_outdata<=memory[a_r_addr];
			b_outdata<=memory[b_r_addr];
		end
		2'b01: begin
			a_outdata<=memory[a_r_addr];
			memory[b_w_addr]<=b_indata;
		end
		2'b10: begin
			memory[a_w_addr]<=a_indata;
			b_outdata<=memory[b_r_addr];
		end
		2'b11: begin
			if(a_w_addr == b_w_addr) begin
				memory[a_w_addr]<=a_indata;
			end
			else begin
				memory[a_w_addr]<=a_indata;
				memory[b_w_addr]<=b_indata;
			end
		end
	endcase
end
endmodule
