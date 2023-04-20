module DivisorDeFrequencia2(CLK, Q);
	
	input CLK;
	output Q;
	
	wire w1, w2, w3, w4;
	
	/*Para o funcionamento do divisor de frequência, é apenas necessário postergar o pulso do clock. Para isso,
	/deve haver um encadeamento de flipflops. O escolhido foi do tipo D devido sua facilidade na implementação.
	*/
	
	//O divisor de frequência está dividindo o clock inicial em 5.
	FFD inst1(CLK, ~Q, w1);
	FFD inst2(CLK, w1, w2);
	FFD inst3(CLK, w2, w3);
	FFD inst4(CLK, w3, w4);
	FFD inst5(CLK, w4, Q);

endmodule