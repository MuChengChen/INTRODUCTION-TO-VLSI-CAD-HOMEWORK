/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2023 Spring ---------------------- //
// ---------------------- Editor: Zhi-Yu Chen -------------------- //
// ---------------------- Version : v.2.00  ---------------------- //
// ---------------------- Date : 2023.02    ---------------------- //
// ---------------------- Multiplier        ---------------------- //
/////////////////////////////////////////////////////////////////////

`include "../ProbB/CLA.v"

module multi(A_in, B_in, Result_o);

	input [3:0] A_in;
	input [3:0] B_in;
	output [7:0] Result_o;

	
	
	/* write your code here */
	wire [3:0] A1,B1,A2,B2,A3,B3,S1,S2,S3;	

	and s0(Result_o[0],A_in[0],B_in[0]);

	and s11(A1[0],A_in[1],B_in[0]);

	and s12(B1[0],A_in[0],B_in[1]);

	and s21(A1[1],A_in[2],B_in[0]);

	and s22(B1[1],A_in[1],B_in[1]);

	and s31(A1[2],A_in[3],B_in[0]);

	and s32(B1[2],A_in[2],B_in[1]);

	assign A1[3]=1'b0;

	and s42(B1[3],A_in[3],B_in[1]);

	CLA CLA1(.A_in(A1),.B_in(B1),.Sum_o(S1),.C_out(C1));
	assign Result_o[1]=S1[0];


	assign A2[2:0]=S1[3:1];
	assign A2[3]=C1;

	and s222(B2[0],A_in[0],B_in[2]);

	and s322(B2[1],A_in[1],B_in[2]);

	and s422(B2[2],A_in[2],B_in[2]);

	and s52(B2[3],A_in[3],B_in[2]);

	CLA CLA2(.A_in(A2),.B_in(B2),.Sum_o(S2),.C_out(C2));
	assign Result_o[2]=S2[0];


	assign A3[2:0]=S2[3:1];
	assign A3[3]=C2;

	and s3222(B3[0],A_in[0],B_in[3]);

	and s4222(B3[1],A_in[1],B_in[3]);

	and s522(B3[2],A_in[2],B_in[3]);

	and s62(B3[3],A_in[3],B_in[3]);

	CLA CLA3(.A_in(A3),.B_in(B3),.Sum_o(S3),.C_out(C3));
	assign Result_o[3]=S3[0];

	assign Result_o[6:4]=S3[3:1];
	assign Result_o[7]=C3;

	
endmodule
