module DivisorDeFrequencia(CLK, Q);
	
	input CLK;
	output Q;
	
	wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13;
	
	/*Para o funcionamento do divisor de frequência, é apenas necessário postergar o pulso do clock. Para isso,
	/deve haver um encadeamento de flipflops. O escolhido foi do tipo D devido sua facilidade na implementação.
	*/
	
	//O divisor de frequência está dividindo o clock inicial em 24.
	FFD inst1(CLK, ~Q, w1);
	FFD inst2(CLK, w1, w2);
	FFD inst3(CLK, w2, w3);
	FFD inst4(CLK, w3, w4);
	FFD inst5(CLK, w4, w5);
	FFD inst6(CLK, w5, w6);
	FFD inst7(CLK, w6, w7);
	FFD inst8(CLK, w7, w8);
	FFD inst9(CLK, w8, w9);
	FFD inst10(CLK, w9, w10);
	FFD inst11(CLK, w10, w11);
	FFD inst12(CLK, w11, w12);
	FFD inst13(CLK, w12, w13);
	FFD inst14(CLK, w13, Q);

endmodule