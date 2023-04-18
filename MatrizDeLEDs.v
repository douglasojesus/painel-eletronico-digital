module MatrizDeLEDs(CLK, L1, L2, L3, L4, L5, C1, C2, C3, C4, C5, C6, C7,
C1L1, C1L2, C1L3, C1L4, C1L5,
C2L1, C2L2, C2L3, C2L4, C2L5,
C3L1, C3L2, C3L3, C3L4, C3L5,
C4L1, C4L2, C4L3, C4L4, C4L5,
C5L1, C5L2, C5L3, C5L4, C5L5,
C6L1, C6L2, C6L3, C6L4, C6L5,
C7L1, C7L2, C7L3, C7L4, C7L5);

	input C1L1, C1L2, C1L3, C1L4, C1L5,
			C2L1, C2L2, C2L3, C2L4, C2L5,
			C3L1, C3L2, C3L3, C3L4, C3L5,
			C4L1, C4L2, C4L3, C4L4, C4L5,
			C5L1, C5L2, C5L3, C5L4, C5L5,
			C6L1, C6L2, C6L3, C6L4, C6L5,
			C7L1, C7L2, C7L3, C7L4, C7L5;
			
	output L1, L2, L3, L4, L5, C1, C2, C3, C4, C5, C6, C7;
	input CLK;
	
	wire en1, en2, en3;
	
	Contador inst1(CLK, en1, en2, en3);
	
	and(L1, ~en1, ~en2, ~en3, 1); // linha 1 ativa
	and(L2, ~en1, ~en2, en3, 1); // linha 2 ativa
	and(L3, ~en1, en2, ~en3, 1); // linha 3 ativa
	and(L4, ~en1, en2, en3, 1); // linha 4 ativa
	and(L5, en1, ~en2, ~en3, 1); // linha 5 ativa
	
	//Seleciona qual linha da coluna vai ser exbida na coluna da matrz de LEDs.
	//As saídas C1-C7 já são as colunas da própra matriz. Pronto para ser pinado.
	//Quando o contador chegar em 000, todas as colunas da L1 descem para a matriz.
	//Com isso, a linha e as colunas são acionadas juntas.
	//Quando o contador chegar em 001, todas as colunas da L2 descem para a matriz e a linha acionada é a L2.
	MUXParaColuna SaidaC1(en1, en2, en3, C1L1, C1L2, C1L3, C1L4, C1L5, C1);
	MUXParaColuna SaidaC2(en1, en2, en3, C2L1, C2L2, C2L3, C2L4, C2L5, C2);
	MUXParaColuna SaidaC3(en1, en2, en3, C3L1, C3L2, C3L3, C3L4, C3L5, C3);
	MUXParaColuna SaidaC4(en1, en2, en3, C4L1, C4L2, C4L3, C4L4, C4L5, C4);
	MUXParaColuna SaidaC5(en1, en2, en3, C5L1, C5L2, C5L3, C5L4, C5L5, C5);
	MUXParaColuna SaidaC6(en1, en2, en3, C6L1, C6L2, C6L3, C6L4, C6L5, C6);
	MUXParaColuna SaidaC7(en1, en2, en3, C7L1, C7L2, C7L3, C7L4, C7L5, C7);
	
	
endmodule