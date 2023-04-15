module MUXParaColuna(en1, en2, en3, L1, L2, L3, L4, L5, saida);

	output saida;
	input L1, L2, L3, L4,L5, en1, en2, en3;

	//Multiplexador que recebe 5 entradas de todas as linhas e, de acordo com o controle (contador), retorna qual coluna será exibida.
	wire w1, w2, w3, w4, w5;
	
	and(w1, ~en1, ~en2, ~en3, L1);
	and(w2, ~en1, ~en2, en3, L2);
	and(w3, ~en1, en2, ~en3, L3);
	and(w4, ~en1, en2, en3, L4);
	and(w5, ~en1, en2, en3, L5);
	
	//Saída é a coluna (C1-C7)
	or(saida, w1, w2, w3, w4, w5);

endmodule