module divisor(clk, clock1, clock2);

	input clk;
	output clock1, clock2;
	
	reg[26:0] count;
	
	assign clock1 = count[5];
	assign clock2 = count[23];
	
	always @(posedge clk) begin
		count <= count+1;
		
		if (count == 26'h3FFFFFF) begin
			count <= 26'h0;
		end
	end
	
endmodule