module FlipflopD (ch0, ch1, para_exibicao, dir_esq, esq_dir, CLK, Q);

	//Conjunção do flipflop do tipo D mais um multiplexador de 3 entradas e 2 entradas de controle.

	input ch0, ch1, para_exibicao, dir_esq, esq_dir;
	input CLK;
	output reg Q;

	wire saida, en;
	
	//Instância do multiplexador de 3 entradas. 
	Multiplexador mux(ch0, ch1, saida, para_exibicao, dir_esq, esq_dir);
	
	//Quando ch1 e ch0 são 00, o clock deve ser inibido, ou seja, o letreiro deve pausar sua exibição.
	nand(en, ch1, ch0);
	
	/*A saída do multiplexador determina o que terá na saída do flipflop. Ou seja, se haverá um set dos dados pré-definidos 
	/(para_exibicao), um deslocamento da esquerda para direita (esq_dir) ou da direita para a esquerda (dir_esq).*/
	always @(posedge CLK) begin
		 if (en) begin
			  Q = saida; //Código que depende do clock aqui
		 end
	end


endmodule