/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2023 Spring ---------------------- //
// ---------------------- Editor: Zhi-Yu Chen (Willy) ------------ //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2023.02    ---------------------- //
// ---------------------- Carry LookAhead Adder------------------- // 
/////////////////////////////////////////////////////////////////////

`include "../ProbB/FA.v"

module CLA(A_in, B_in, Sum_o, C_out);

	input  [3:0] A_in;
	input  [3:0] B_in;
	output [3:0] Sum_o;
	output       C_out;

	/* write your code here */
        wire G0,P0,G1,P1,G2,P2,G3,P3,C0,C11,C1,C22,C2,C33,C3,C44,w0,w1,w2,w3;
        assign C0=1'b0;
	
	and GG0(G0,A_in[0],B_in[0]);
        or  PP0(P0,A_in[0],B_in[0]);
        and GG1(G1,A_in[1],B_in[1]);
        or  PP1(P1,A_in[1],B_in[1]);
        and GG2(G2,A_in[2],B_in[2]);
        or  PP2(P2,A_in[2],B_in[2]);
        and GG3(G3,A_in[3],B_in[3]);
        or  PP3(P3,A_in[3],B_in[3]);
   
 	and CC11(C11,C0,P0);
        or  CC12(C1,C11,G0);
        and CC21(C22,C1,P1);
        or  CC22(C2,C22,G1);
	and CC31(C33,C2,P2);
        or  CC32(C3,C33,G2);
	and CC41(C44,C3,P3);
        or  CC42(C_out,C44,G3);
   
	FA FA0(.a_in(A_in[0]),.b_in(B_in[0]),.c_in(C0),.sum_o(Sum_o[0]),.c_out(w0));
	FA FA1(.a_in(A_in[1]),.b_in(B_in[1]),.c_in(C1),.sum_o(Sum_o[1]),.c_out(w1));
	FA FA2(.a_in(A_in[2]),.b_in(B_in[2]),.c_in(C2),.sum_o(Sum_o[2]),.c_out(w2));
	FA FA3(.a_in(A_in[3]),.b_in(B_in[3]),.c_in(C3),.sum_o(Sum_o[3]),.c_out(w3));
endmodule
