module RegistradorL4(ch0, ch1, CLK, saida1, saida2, saida3, saida4, saida5, saida6, saida7);

	//        U    E    F    S
	//   16'b1010_1000_1000_0010;
	
	input ch0, ch1, CLK;
	output saida1, saida2, saida3, saida4, saida5, saida6, saida7;
	wire saida8, saida9, saida10, saida11, saida12, saida13, saida14, saida15, saida16;

	FlipflopD inst1(ch0, ch1, 1, saida16, saida2, CLK, saida1);
	
	FlipflopD inst2(ch0, ch1, 0, saida1, saida3, CLK, saida2);
	
	FlipflopD inst3(ch0, ch1, 1, saida2, saida4, CLK, saida3);
	
	FlipflopD inst4(ch0, ch1, 0, saida3, saida5, CLK, saida4);
	
	FlipflopD inst5(ch0, ch1, 1, saida4, saida6, CLK, saida5);
	
	FlipflopD inst6(ch0, ch1, 0, saida5, saida7, CLK, saida6);
	
	FlipflopD inst7(ch0, ch1, 0, saida6, saida8, CLK, saida7);
	
	FlipflopD inst8(ch0, ch1, 0, saida7, saida9, CLK, saida8);
	
	FlipflopD inst9(ch0, ch1, 1, saida8, saida10, CLK, saida9);
	
	FlipflopD inst10(ch0, ch1, 0, saida9, saida11, CLK, saida10);
	
	FlipflopD inst11(ch0, ch1, 0, saida10, saida12, CLK, saida11);
	
	FlipflopD inst12(ch0, ch1, 0, saida11, saida13, CLK, saida12);
	
	FlipflopD inst13(ch0, ch1, 0, saida12, saida14, CLK, saida13);
	
	FlipflopD inst14(ch0, ch1, 0, saida13, saida15, CLK, saida14);

	FlipflopD inst15(ch0, ch1, 1, saida14, saida16, CLK, saida15);
	
	FlipflopD inst16(ch0, ch1, 0, saida15, saida1, CLK, saida16);
	
endmodule