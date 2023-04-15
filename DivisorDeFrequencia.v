module DivisorDeFrequencia(CLK, Q);

	input CLK;
	output Q;
	
	wire w1, w2, w3, w4, w5, w6, w7, w8, w9;
	
	//Dividiu o clock em 10
	
	FFD inst1(CLK, ~Q, w1);
	FFD inst2(CLK, w1, w2);
	FFD inst3(CLK, w2, w3);
	FFD inst4(CLK, w3, w4);
	FFD inst5(CLK, w4, w5);
	FFD inst6(CLK, w5, w6);
	FFD inst7(CLK, w6, w7);
	FFD inst8(CLK, w7, w8);
	FFD inst9(CLK, w8, w9);
	FFD inst10(CLK, w9, Q);

endmodule