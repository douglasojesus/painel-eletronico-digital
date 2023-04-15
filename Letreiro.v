module Letreiro(CLK, ch0, ch1, L1, L2, L3, L4, L5, C1, C2, C3, C4, C5, C6, C7);

	input CLK, ch0, ch1;
	wire C1L1, C2L1, C3L1, C4L1, C5L1, C6L1, C7L1; //linha 1
	wire C1L2, C2L2, C3L2, C4L2, C5L2, C6L2, C7L2; //linha 2
	wire C1L3, C2L3, C3L3, C4L3, C5L3, C6L3, C7L3; //linha 3
	wire C1L4, C2L4, C3L4, C4L4, C5L4, C6L4, C7L4; //linha 4
	wire C1L5, C2L5, C3L5, C4L5, C5L5, C6L5, C7L5; //linha 5
	output L1, L2, L3, L4, L5, C1, C2, C3, C4, C5, C6, C7;

	RegistradorL1 instL1(ch0, ch1, CLK, C1L1, C2L1, C3L1, C4L1, C5L1, C6L1, C7L1);
	RegistradorL2 instL2(ch0, ch1, CLK, C1L2, C2L2, C3L2, C4L2, C5L2, C6L2, C7L2);
	RegistradorL3 instL3(ch0, ch1, CLK, C1L3, C2L3, C3L3, C4L3, C5L3, C6L3, C7L3);
	RegistradorL4 instL4(ch0, ch1, CLK, C1L4, C2L4, C3L4, C4L4, C5L4, C6L4, C7L4);
	RegistradorL5 instL5(ch0, ch1, CLK, C1L5, C2L5, C3L5, C4L5, C5L5, C6L5, C7L5);
	
	MatrizDeLEDs inst1(CLK, L1, L2, L3, L4, L5, C1, C2, C3, C4, C5, C6, C7,
							C1L1, C1L2, C1L3, C1L4, C1L5,
							C2L1, C2L2, C2L3, C2L4, C2L5,
							C3L1, C3L2, C3L3, C3L4, C3L5,
							C4L1, C4L2, C4L3, C4L4, C4L5,
							C5L1, C5L2, C5L3, C5L4, C5L5,
							C6L1, C6L2, C6L3, C6L4, C6L5,
							C7L1, C7L2, C7L3, C7L4, C7L5);
							
endmodule

