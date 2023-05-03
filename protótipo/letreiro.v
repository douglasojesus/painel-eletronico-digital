/*******************************************************************************
Autor: Douglas Oliveira de Jesus
Componente Curricular: MI Circuitos Digitais
Concluido em: 20/04/2023
Declaro que este código foi elaborado por mim de forma individual e não contém nenhum
trecho de código de outro colega ou de outro autor, tais como provindos de livros e
apostilas, e páginas ou documentos eletrônicos da Internet. Qualquer trecho de código
de outra autoria que não a minha está destacado com uma citação para o autor e a fonte
do código, e estou ciente que estes trechos não serão considerados para fins de avaliação.
******************************************************************************************/

module letreiro(CLK, ch0, ch1, L1, L2, L3, L4, L5, C1, C2, C3, C4, C5, C6, C7);

	input CLK, ch0, ch1;
	//Saídas da matriz de LEDs. L representa linha e C representa coluna. 
	output L1, L2, L3, L4, L5, C1, C2, C3, C4, C5, C6, C7;
	
	//Cada registrador de deslocamento possui 7 saídas, que serão direcionadas para a matriz de LEDs.
	wire C1L1, C2L1, C3L1, C4L1, C5L1, C6L1, C7L1; //Saídas que representam o shift-register da linha 1
	wire C1L2, C2L2, C3L2, C4L2, C5L2, C6L2, C7L2; //Saídas que representam o shift-register da linha 2
	wire C1L3, C2L3, C3L3, C4L3, C5L3, C6L3, C7L3; //Saídas que representam o shift-register da linha 3
	wire C1L4, C2L4, C3L4, C4L4, C5L4, C6L4, C7L4; //Saídas que representam o shift-register da linha 4
	wire C1L5, C2L5, C3L5, C4L5, C5L5, C6L5, C7L5; //Saídas que representam o shift-register da linha 5
	
	wire CLK2, CLK3;
	/*Para haver frequências diferentes entre o acionamento da matriz e o deslocamento dos shift-registers, 
	/é necessário dois relógios diferentes. O que será responsável pelo deslocamento precisa ter uma frequência menor.*/
	//CLK3 -> 5
	//CLK2 -> 23
	divisorComJK inst(1, 1, CLK, CLK3, CLK2);

	//Instancia única dos módulos Registradores. São diferentes pois cada um tem uma sequência de bits pré-definida.
	RegistradorL1 instL1(ch0, ch1, CLK2, C1L1, C2L1, C3L1, C4L1, C5L1, C6L1, C7L1);
	RegistradorL2 instL2(ch0, ch1, CLK2, C1L2, C2L2, C3L2, C4L2, C5L2, C6L2, C7L2);
	RegistradorL3 instL3(ch0, ch1, CLK2, C1L3, C2L3, C3L3, C4L3, C5L3, C6L3, C7L3);
	RegistradorL4 instL4(ch0, ch1, CLK2, C1L4, C2L4, C3L4, C4L4, C5L4, C6L4, C7L4);
	RegistradorL5 instL5(ch0, ch1, CLK2, C1L5, C2L5, C3L5, C4L5, C5L5, C6L5, C7L5);
	
	//Instancia da matriz de LEDs. Responsável por acionar os LEDs da matriz.
	MatrizDeLEDs inst1(CLK3, ch0, ch1, L1, L2, L3, L4, L5, C1, C2, C3, C4, C5, C6, C7,
							C1L1, C1L2, C1L3, C1L4, C1L5,
							C2L1, C2L2, C2L3, C2L4, C2L5,
							C3L1, C3L2, C3L3, C3L4, C3L5,
							C4L1, C4L2, C4L3, C4L4, C4L5,
							C5L1, C5L2, C5L3, C5L4, C5L5,
							C6L1, C6L2, C6L3, C6L4, C6L5,
							C7L1, C7L2, C7L3, C7L4, C7L5);
							
endmodule
