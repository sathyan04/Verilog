module ram(
	input clk,rw,
	input [3:0] addr,
	input [7:0] indata,
	output reg [7:0] outdata
);
reg [7:0] memory [15:0]; // 16 * 8 = 128 bits / 16 bytes of memory
always @(posedge clk) begin
	if(rw) begin
		memory[addr] <= indata; //Synchronous Write
	end
end
always @(*) begin
	if(!rw) begin
		outdata = memory[addr]; // Asynchronous Read
	end
end
endmodule
