/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2023 Spring ---------------------- //
// ---------------------- Editor: Zhi-Yu Chen (Willy) ------------ //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2023.02    ---------------------- //
// ---------------------- K-map simplifier  ---------------------- // 
/////////////////////////////////////////////////////////////////////

module kmap(A,B,C,D,Out);

input A,B,C,D;
output Out;
wire A1,C1,B1,D1,O1,O2,O3;
   

/* write your code here */
nand AN(A1,A,A);
nand CN(C1,C,C);
nand ACN(O1,A1,C1);

nand AC(O2,A,C);

nand BN(B1,B,B);
nand DN(D1,D,D);
nand BD(O3,B1,D1);
nand OU(Out,O1,O2,O3);
   
   
   
   
   

endmodule