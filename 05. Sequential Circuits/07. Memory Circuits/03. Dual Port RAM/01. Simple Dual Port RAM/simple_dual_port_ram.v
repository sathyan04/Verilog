module simple_dual_port_ram #(parameter length=4, locations=8)(
	input clk,rw,
	input [$clog2(locations)-1:0] w_addr,
	input [$clog2(locations)-1:0] r_addr,
	input [length-1:0] indata,
	output reg [length-1:0] outdata
);
reg [length-1:0] memory [locations-1:0];
always @(posedge clk) begin
	if(rw) begin
		memory[w_addr] <= indata; //Synchronous Write
	end
end
always @(*) begin
	if(!rw) begin
		outdata = memory[r_addr]; // Asynchronous Write
	end
end
endmodule
