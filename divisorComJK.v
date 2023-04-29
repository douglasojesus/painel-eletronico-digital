module divisorComJK(j, k, clk, saida1, saida2);

	input k, j, clk;
	output saida1, saida2;
	wire s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13,
	s14, s15, s16, s17, s18, s19, s20, s21, s22;
	
	FFJK inst1(j,k,clk,s1);
	FFJK inst2(j,k,s1,s2);
	FFJK inst3(j,k,s2,s3);
	FFJK inst4(j,k,s3,s4);
	FFJK inst5(j,k,s4,saida1);
	FFJK inst6(j,k,saida1,s6);
	FFJK inst7(j,k,s6,s7);
	FFJK inst8(j,k,s7,s8);
	FFJK inst9(j,k,s8,s9);
	FFJK inst10(j,k,s9,s10);
	FFJK inst11(j,k,s10,s11);
	FFJK inst12(j,k,s11,s12);
	FFJK inst13(j,k,s12,s13);
	FFJK inst14(j,k,s13,s14);
	FFJK inst15(j,k,s14,s15);
	FFJK inst16(j,k,s15,s16);
	FFJK inst17(j,k,s16,s17);
	FFJK inst18(j,k,s17,s18);
	FFJK inst19(j,k,s18,s19);
	FFJK inst20(j,k,s19,s20);
	FFJK inst21(j,k,s20,s21);
	FFJK inst22(j,k,s21,s22);
	FFJK inst23(j,k,s22,saida2);
		
endmodule