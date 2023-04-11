module FlipflopD (ch0, ch1, para_exibicao, dir_esq, esq_dir, CLK, Q);

	input ch0, ch1, para_exibicao, dir_esq, esq_dir;
	input CLK;
	output reg Q;

	wire saida, en;
	
	multiplexador mux(ch0, ch1, saida, para_exibicao, dir_esq, esq_dir);
	
	nand(en, ch1, ch0); //inibe o clock
	
	always @(posedge CLK) begin
		 if (en) begin
			  Q = saida;// Código que depende do clock aqui
		 end
	end


endmodule
