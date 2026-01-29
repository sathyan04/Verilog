module pattern();
integer i,j,k;
parameter N=9;
initial begin
	for(i=1;i<=N;i+=1) begin
		for(j=1;j<=N-i;j+=1) begin
			$write(" ");
		end
		for(k=1;k<=i;k+=1) begin
			$write("%0d ",i);
		end
		$write("\n");
	end
	for(i=N-1;i>=1;i-=1) begin
		for(j=1;j<=N-i;j+=1) begin
                        $write(" ");
                end
                for(k=1;k<=i;k+=1) begin
                        $write("%0d ",i);
                end
                $write("\n");
        end
end
endmodule
