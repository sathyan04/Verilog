module random_numbers;
reg signed [6:0] out;
initial begin
	repeat (10) begin
		out=$random;
		if(out>=-100 && out<=100)
			$display("Random numbers from -100 to 100 = %0d",out);
	end
end
endmodule
