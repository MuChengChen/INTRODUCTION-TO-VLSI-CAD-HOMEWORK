/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Wed Mar 15 20:10:54 2023
/////////////////////////////////////////////////////////////


module mini_vending_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7;
  wire   [6:0] carry;

  ADDFXL U2_4 ( .A(A[4]), .B(n3), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n4), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n5), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n6), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_5 ( .A(A[5]), .B(n2), .C(carry[5]), .Y(DIFF[5]) );
  XNOR2X1 U1 ( .A(n7), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n7) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n6) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n5) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n4) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n3) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n2) );
endmodule


module mini_vending ( clk, rst, en, money, beverage, change, finish );
  input [5:0] money;
  input [5:0] beverage;
  output [5:0] change;
  input clk, rst, en;
  output finish;
  wire   \state[1] , N18, N19, N20, N21, N22, N23, n5, n6, n7, n8, n9, n11,
         n13, n15, n17, n19, n21, n22, n23, n24, n25, n26, n27, n35, n36, n37,
         n38, n39, n40, n41, n42, n43;
  wire   [1:0] next_state;
  wire   [5:0] money_reg;

  mini_vending_DW01_sub_0 sub_49 ( .A(money_reg), .B(beverage), .CI(1'b0), 
        .DIFF({N23, N22, N21, N20, N19, N18}) );
  DFFRX1 \money_reg_reg[3]  ( .D(n38), .CK(clk), .RN(n42), .Q(money_reg[3]), 
        .QN(n23) );
  DFFRX1 \money_reg_reg[4]  ( .D(n37), .CK(clk), .RN(n42), .Q(money_reg[4]), 
        .QN(n22) );
  DFFRX1 \money_reg_reg[5]  ( .D(n36), .CK(clk), .RN(n42), .Q(money_reg[5]), 
        .QN(n21) );
  DFFRX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n42), .Q(n26), .QN(
        n35) );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n42), .Q(\state[1] ) );
  DFFRX1 \money_reg_reg[1]  ( .D(n40), .CK(clk), .RN(n42), .Q(money_reg[1]), 
        .QN(n25) );
  DFFRX1 \money_reg_reg[2]  ( .D(n39), .CK(clk), .RN(n42), .Q(money_reg[2]), 
        .QN(n24) );
  DFFRX1 \money_reg_reg[0]  ( .D(n41), .CK(clk), .RN(n42), .Q(money_reg[0]), 
        .QN(n27) );
  AND2X2 U38 ( .A(n5), .B(n43), .Y(n9) );
  CLKINVX1 U39 ( .A(en), .Y(n43) );
  NOR2X2 U40 ( .A(n5), .B(en), .Y(n8) );
  INVX3 U41 ( .A(n6), .Y(finish) );
  CLKINVX1 U42 ( .A(n7), .Y(n36) );
  AOI222XL U43 ( .A0(money[5]), .A1(en), .B0(N23), .B1(n8), .C0(n9), .C1(
        money_reg[5]), .Y(n7) );
  CLKINVX1 U44 ( .A(n11), .Y(n37) );
  AOI222XL U45 ( .A0(money[4]), .A1(en), .B0(N22), .B1(n8), .C0(n9), .C1(
        money_reg[4]), .Y(n11) );
  CLKINVX1 U46 ( .A(n13), .Y(n38) );
  AOI222XL U47 ( .A0(money[3]), .A1(en), .B0(N21), .B1(n8), .C0(n9), .C1(
        money_reg[3]), .Y(n13) );
  CLKINVX1 U48 ( .A(n15), .Y(n39) );
  AOI222XL U49 ( .A0(money[2]), .A1(en), .B0(N20), .B1(n8), .C0(n9), .C1(
        money_reg[2]), .Y(n15) );
  CLKINVX1 U50 ( .A(n17), .Y(n40) );
  AOI222XL U51 ( .A0(money[1]), .A1(en), .B0(N19), .B1(n8), .C0(n9), .C1(
        money_reg[1]), .Y(n17) );
  CLKINVX1 U52 ( .A(n19), .Y(n41) );
  AOI222XL U53 ( .A0(money[0]), .A1(en), .B0(N18), .B1(n8), .C0(n9), .C1(
        money_reg[0]), .Y(n19) );
  OAI211X1 U54 ( .A0(\state[1] ), .A1(n26), .B0(n6), .C0(en), .Y(next_state[0]) );
  OAI31XL U55 ( .A0(n35), .A1(\state[1] ), .A2(n43), .B0(n5), .Y(next_state[1]) );
  NAND2X2 U56 ( .A(\state[1] ), .B(n26), .Y(n6) );
  NOR2X2 U57 ( .A(n27), .B(n6), .Y(change[0]) );
  NOR2X2 U58 ( .A(n25), .B(n6), .Y(change[1]) );
  NOR2X2 U59 ( .A(n24), .B(n6), .Y(change[2]) );
  NOR2X2 U60 ( .A(n23), .B(n6), .Y(change[3]) );
  NOR2X2 U61 ( .A(n22), .B(n6), .Y(change[4]) );
  NOR2X2 U62 ( .A(n21), .B(n6), .Y(change[5]) );
  NAND2X1 U63 ( .A(\state[1] ), .B(n35), .Y(n5) );
  INVX3 U64 ( .A(rst), .Y(n42) );
endmodule

