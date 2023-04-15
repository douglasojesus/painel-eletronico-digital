module Multiplexador(ch0, ch1, saida, para_exibicao, dir_esq, esq_dir);

	input ch0, ch1, para_exibicao, dir_esq, esq_dir;
	output saida;

	wire w1, w2, w3, w4;	
	
	/*Controle do multiplexador. Das 3 possíveis entradas, apenas uma poderá ser repassada para a saida.
	/A saida determina o comportamento do flipflop.*/
	
	and(w1, ~ch1, ~ch0, para_exibicao);
	and(w2, ~ch1, ch0, dir_esq);
	and(w3, ch1, ~ch0, esq_dir);
	or(saida, w1, w2, w3);
	
endmodule