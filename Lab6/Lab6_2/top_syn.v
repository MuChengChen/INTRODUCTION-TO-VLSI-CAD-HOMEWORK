/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Fri Mar 31 12:24:58 2023
/////////////////////////////////////////////////////////////


module top_DW01_inc_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  SAEDRVT14_ADDH_0P5 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  SAEDRVT14_ADDH_0P5 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(
        SUM[9]) );
  SAEDRVT14_ADDH_0P5 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  SAEDRVT14_ADDH_0P5 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  SAEDRVT14_ADDH_0P5 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  SAEDRVT14_ADDH_0P5 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  SAEDRVT14_ADDH_0P5 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  SAEDRVT14_ADDH_0P5 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  SAEDRVT14_ADDH_0P5 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  SAEDRVT14_ADDH_0P5 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  SAEDRVT14_INV_S_1 U1 ( .A(A[0]), .X(SUM[0]) );
  SAEDRVT14_EO2_V1_0P75 U2 ( .A1(carry[11]), .A2(A[11]), .X(SUM[11]) );
endmodule


module top ( clk, rst, RAM_W_Q, RAM_W_D, RAM_W_A, RAM_W_WE, RAM_W_OE, 
        RAM_TAG_Q, RAM_TAG_D, RAM_TAG_A, RAM_TAG_WE, RAM_TAG_OE, RAM_PIC_Q, 
        RAM_PIC_D, RAM_PIC_A, RAM_PIC_WE, RAM_PIC_OE, done );
  input [23:0] RAM_W_Q;
  output [23:0] RAM_W_D;
  output [19:0] RAM_W_A;
  input [23:0] RAM_TAG_Q;
  output [23:0] RAM_TAG_D;
  output [19:0] RAM_TAG_A;
  input [23:0] RAM_PIC_Q;
  output [23:0] RAM_PIC_D;
  output [19:0] RAM_PIC_A;
  input clk, rst;
  output RAM_W_WE, RAM_W_OE, RAM_TAG_WE, RAM_TAG_OE, RAM_PIC_WE, RAM_PIC_OE,
         done;
  wire   \*Logic1* , \*Logic0* , N2, N5, N6, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n124, n125, n126;
  wire   [1:0] wait_counter;
  assign RAM_TAG_OE = \*Logic1* ;
  assign RAM_W_OE = \*Logic1* ;
  assign RAM_PIC_OE = \*Logic0* ;
  assign RAM_PIC_A[12] = \*Logic0* ;
  assign RAM_PIC_A[13] = \*Logic0* ;
  assign RAM_PIC_A[14] = \*Logic0* ;
  assign RAM_PIC_A[15] = \*Logic0* ;
  assign RAM_PIC_A[16] = \*Logic0* ;
  assign RAM_PIC_A[17] = \*Logic0* ;
  assign RAM_PIC_A[18] = \*Logic0* ;
  assign RAM_PIC_A[19] = \*Logic0* ;
  assign RAM_TAG_WE = \*Logic0* ;
  assign RAM_TAG_A[12] = \*Logic0* ;
  assign RAM_TAG_A[13] = \*Logic0* ;
  assign RAM_TAG_A[14] = \*Logic0* ;
  assign RAM_TAG_A[15] = \*Logic0* ;
  assign RAM_TAG_A[16] = \*Logic0* ;
  assign RAM_TAG_A[17] = \*Logic0* ;
  assign RAM_TAG_A[18] = \*Logic0* ;
  assign RAM_TAG_A[19] = \*Logic0* ;
  assign RAM_TAG_D[0] = \*Logic0* ;
  assign RAM_TAG_D[1] = \*Logic0* ;
  assign RAM_TAG_D[2] = \*Logic0* ;
  assign RAM_TAG_D[3] = \*Logic0* ;
  assign RAM_TAG_D[4] = \*Logic0* ;
  assign RAM_TAG_D[5] = \*Logic0* ;
  assign RAM_TAG_D[6] = \*Logic0* ;
  assign RAM_TAG_D[7] = \*Logic0* ;
  assign RAM_TAG_D[8] = \*Logic0* ;
  assign RAM_TAG_D[9] = \*Logic0* ;
  assign RAM_TAG_D[10] = \*Logic0* ;
  assign RAM_TAG_D[11] = \*Logic0* ;
  assign RAM_TAG_D[12] = \*Logic0* ;
  assign RAM_TAG_D[13] = \*Logic0* ;
  assign RAM_TAG_D[14] = \*Logic0* ;
  assign RAM_TAG_D[15] = \*Logic0* ;
  assign RAM_TAG_D[16] = \*Logic0* ;
  assign RAM_TAG_D[17] = \*Logic0* ;
  assign RAM_TAG_D[18] = \*Logic0* ;
  assign RAM_TAG_D[19] = \*Logic0* ;
  assign RAM_TAG_D[20] = \*Logic0* ;
  assign RAM_TAG_D[21] = \*Logic0* ;
  assign RAM_TAG_D[22] = \*Logic0* ;
  assign RAM_TAG_D[23] = \*Logic0* ;
  assign RAM_W_WE = \*Logic0* ;
  assign RAM_W_D[0] = \*Logic0* ;
  assign RAM_W_D[1] = \*Logic0* ;
  assign RAM_W_D[2] = \*Logic0* ;
  assign RAM_W_D[3] = \*Logic0* ;
  assign RAM_W_D[4] = \*Logic0* ;
  assign RAM_W_D[5] = \*Logic0* ;
  assign RAM_W_D[6] = \*Logic0* ;
  assign RAM_W_D[7] = \*Logic0* ;
  assign RAM_W_D[8] = \*Logic0* ;
  assign RAM_W_D[9] = \*Logic0* ;
  assign RAM_W_D[10] = \*Logic0* ;
  assign RAM_W_D[11] = \*Logic0* ;
  assign RAM_W_D[12] = \*Logic0* ;
  assign RAM_W_D[13] = \*Logic0* ;
  assign RAM_W_D[14] = \*Logic0* ;
  assign RAM_W_D[15] = \*Logic0* ;
  assign RAM_W_D[16] = \*Logic0* ;
  assign RAM_W_D[17] = \*Logic0* ;
  assign RAM_W_D[18] = \*Logic0* ;
  assign RAM_W_D[19] = \*Logic0* ;
  assign RAM_W_D[20] = \*Logic0* ;
  assign RAM_W_D[21] = \*Logic0* ;
  assign RAM_W_D[22] = \*Logic0* ;
  assign RAM_W_D[23] = \*Logic0* ;
  assign RAM_W_A[19] = RAM_TAG_Q[19];
  assign RAM_W_A[18] = RAM_TAG_Q[18];
  assign RAM_W_A[17] = RAM_TAG_Q[17];
  assign RAM_W_A[16] = RAM_TAG_Q[16];
  assign RAM_W_A[15] = RAM_TAG_Q[15];
  assign RAM_W_A[14] = RAM_TAG_Q[14];
  assign RAM_W_A[13] = RAM_TAG_Q[13];
  assign RAM_W_A[12] = RAM_TAG_Q[12];
  assign RAM_W_A[11] = RAM_TAG_Q[11];
  assign RAM_W_A[10] = RAM_TAG_Q[10];
  assign RAM_W_A[9] = RAM_TAG_Q[9];
  assign RAM_W_A[8] = RAM_TAG_Q[8];
  assign RAM_W_A[7] = RAM_TAG_Q[7];
  assign RAM_W_A[6] = RAM_TAG_Q[6];
  assign RAM_W_A[5] = RAM_TAG_Q[5];
  assign RAM_W_A[4] = RAM_TAG_Q[4];
  assign RAM_W_A[3] = RAM_TAG_Q[3];
  assign RAM_W_A[2] = RAM_TAG_Q[2];
  assign RAM_W_A[1] = RAM_TAG_Q[1];
  assign RAM_W_A[0] = RAM_TAG_Q[0];
  assign RAM_PIC_A[11] = RAM_TAG_A[11];
  assign RAM_PIC_A[10] = RAM_TAG_A[10];
  assign RAM_PIC_A[9] = RAM_TAG_A[9];
  assign RAM_PIC_A[8] = RAM_TAG_A[8];
  assign RAM_PIC_A[7] = RAM_TAG_A[7];
  assign RAM_PIC_A[6] = RAM_TAG_A[6];
  assign RAM_PIC_A[5] = RAM_TAG_A[5];
  assign RAM_PIC_A[4] = RAM_TAG_A[4];
  assign RAM_PIC_A[3] = RAM_TAG_A[3];
  assign RAM_PIC_A[2] = RAM_TAG_A[2];
  assign RAM_PIC_A[1] = RAM_TAG_A[1];
  assign RAM_PIC_A[0] = RAM_TAG_A[0];
  assign RAM_PIC_D[23] = RAM_W_Q[23];
  assign RAM_PIC_D[22] = RAM_W_Q[22];
  assign RAM_PIC_D[21] = RAM_W_Q[21];
  assign RAM_PIC_D[20] = RAM_W_Q[20];
  assign RAM_PIC_D[19] = RAM_W_Q[19];
  assign RAM_PIC_D[18] = RAM_W_Q[18];
  assign RAM_PIC_D[17] = RAM_W_Q[17];
  assign RAM_PIC_D[16] = RAM_W_Q[16];
  assign RAM_PIC_D[15] = RAM_W_Q[15];
  assign RAM_PIC_D[14] = RAM_W_Q[14];
  assign RAM_PIC_D[13] = RAM_W_Q[13];
  assign RAM_PIC_D[12] = RAM_W_Q[12];
  assign RAM_PIC_D[11] = RAM_W_Q[11];
  assign RAM_PIC_D[10] = RAM_W_Q[10];
  assign RAM_PIC_D[9] = RAM_W_Q[9];
  assign RAM_PIC_D[8] = RAM_W_Q[8];
  assign RAM_PIC_D[7] = RAM_W_Q[7];
  assign RAM_PIC_D[6] = RAM_W_Q[6];
  assign RAM_PIC_D[5] = RAM_W_Q[5];
  assign RAM_PIC_D[4] = RAM_W_Q[4];
  assign RAM_PIC_D[3] = RAM_W_Q[3];
  assign RAM_PIC_D[2] = RAM_W_Q[2];
  assign RAM_PIC_D[1] = RAM_W_Q[1];
  assign RAM_PIC_D[0] = RAM_W_Q[0];
  assign done = N2;

  SAEDRVT14_FDPRB_V3_2 \pixel_counter_reg[0]  ( .D(n111), .CK(clk), .RD(n125), 
        .Q(RAM_TAG_A[0]), .QN(n30) );
  SAEDRVT14_FDPRB_V3_2 \pixel_counter_reg[1]  ( .D(n103), .CK(clk), .RD(n125), 
        .Q(RAM_TAG_A[1]), .QN(n29) );
  SAEDRVT14_FDPRB_V3_2 \pixel_counter_reg[2]  ( .D(n97), .CK(clk), .RD(n125), 
        .Q(RAM_TAG_A[2]), .QN(n28) );
  SAEDRVT14_FDPRB_V3_2 \pixel_counter_reg[3]  ( .D(n91), .CK(clk), .RD(n125), 
        .Q(RAM_TAG_A[3]), .QN(n27) );
  SAEDRVT14_FDPRB_V3_2 \pixel_counter_reg[4]  ( .D(n85), .CK(clk), .RD(n125), 
        .Q(RAM_TAG_A[4]), .QN(n26) );
  SAEDRVT14_FDPRB_V3_2 \pixel_counter_reg[5]  ( .D(n79), .CK(clk), .RD(n125), 
        .Q(RAM_TAG_A[5]), .QN(n25) );
  SAEDRVT14_FDPRB_V3_2 \pixel_counter_reg[6]  ( .D(n73), .CK(clk), .RD(n125), 
        .Q(RAM_TAG_A[6]), .QN(n24) );
  SAEDRVT14_FDPRB_V3_2 \pixel_counter_reg[7]  ( .D(n67), .CK(clk), .RD(n125), 
        .Q(RAM_TAG_A[7]), .QN(n23) );
  SAEDRVT14_FDPRB_V3_2 \pixel_counter_reg[8]  ( .D(n61), .CK(clk), .RD(n125), 
        .Q(RAM_TAG_A[8]), .QN(n22) );
  SAEDRVT14_FDPRB_V3_2 \pixel_counter_reg[9]  ( .D(n55), .CK(clk), .RD(n125), 
        .Q(RAM_TAG_A[9]), .QN(n21) );
  SAEDRVT14_FDPRB_V3_2 \pixel_counter_reg[10]  ( .D(n49), .CK(clk), .RD(n125), 
        .Q(RAM_TAG_A[10]), .QN(n20) );
  SAEDRVT14_FDPRB_V3_2 \pixel_counter_reg[11]  ( .D(n45), .CK(clk), .RD(n125), 
        .Q(RAM_TAG_A[11]), .QN(n19) );
  top_DW01_inc_0 add_56 ( .A(RAM_TAG_A[11:0]), .SUM({N20, N19, N18, N17, N16, 
        N15, N14, N13, N12, N11, N10, N9}) );
  SAEDRVT14_FDPRBQ_V2_1 \wait_counter_reg[0]  ( .D(n119), .CK(clk), .RD(n125), 
        .Q(wait_counter[0]) );
  SAEDRVT14_FDPRBQ_V2_1 \wait_counter_reg[1]  ( .D(n116), .CK(clk), .RD(n125), 
        .Q(wait_counter[1]) );
  SAEDRVT14_TIE0_V1_2 U38 ( .X(\*Logic0* ) );
  SAEDRVT14_OAI21_2 U39 ( .A1(n48), .A2(n124), .B(n10), .X(n32) );
  SAEDRVT14_INV_PS_2 U40 ( .A(n19), .X(n46) );
  SAEDRVT14_INV_S_0P5 U41 ( .A(n32), .X(n44) );
  SAEDRVT14_INV_S_0P5 U42 ( .A(n44), .X(n45) );
  SAEDRVT14_INV_S_0P5 U43 ( .A(n46), .X(n47) );
  SAEDRVT14_BUF_ECO_1 U44 ( .A(n47), .X(n48) );
  SAEDRVT14_OAI21_0P75 U45 ( .A1(n52), .A2(n124), .B(n11), .X(n33) );
  SAEDRVT14_BUF_ECO_1 U46 ( .A(n51), .X(n49) );
  SAEDRVT14_INV_S_0P5 U47 ( .A(n33), .X(n50) );
  SAEDRVT14_INV_S_0P5 U48 ( .A(n50), .X(n51) );
  SAEDRVT14_BUF_ECO_1 U49 ( .A(n54), .X(n52) );
  SAEDRVT14_INV_S_0P5 U50 ( .A(n20), .X(n53) );
  SAEDRVT14_INV_S_0P5 U51 ( .A(n53), .X(n54) );
  SAEDRVT14_OAI21_0P75 U52 ( .A1(n60), .A2(n124), .B(n1), .X(n34) );
  SAEDRVT14_BUF_ECO_1 U53 ( .A(n57), .X(n55) );
  SAEDRVT14_INV_S_0P5 U54 ( .A(n34), .X(n56) );
  SAEDRVT14_INV_S_0P5 U55 ( .A(n56), .X(n57) );
  SAEDRVT14_INV_S_0P5 U56 ( .A(n21), .X(n58) );
  SAEDRVT14_INV_S_0P5 U57 ( .A(n58), .X(n59) );
  SAEDRVT14_BUF_ECO_1 U58 ( .A(n59), .X(n60) );
  SAEDRVT14_OAI21_0P75 U59 ( .A1(n66), .A2(n124), .B(n2), .X(n35) );
  SAEDRVT14_BUF_ECO_1 U60 ( .A(n63), .X(n61) );
  SAEDRVT14_INV_S_0P5 U61 ( .A(n35), .X(n62) );
  SAEDRVT14_INV_S_0P5 U62 ( .A(n62), .X(n63) );
  SAEDRVT14_INV_S_0P5 U63 ( .A(n22), .X(n64) );
  SAEDRVT14_INV_S_0P5 U64 ( .A(n64), .X(n65) );
  SAEDRVT14_BUF_ECO_1 U65 ( .A(n65), .X(n66) );
  SAEDRVT14_OAI21_0P75 U66 ( .A1(n72), .A2(n124), .B(n3), .X(n36) );
  SAEDRVT14_BUF_ECO_1 U67 ( .A(n69), .X(n67) );
  SAEDRVT14_INV_S_0P5 U68 ( .A(n36), .X(n68) );
  SAEDRVT14_INV_S_0P5 U69 ( .A(n68), .X(n69) );
  SAEDRVT14_INV_S_0P5 U70 ( .A(n23), .X(n70) );
  SAEDRVT14_INV_S_0P5 U71 ( .A(n70), .X(n71) );
  SAEDRVT14_BUF_ECO_1 U72 ( .A(n71), .X(n72) );
  SAEDRVT14_OAI21_0P75 U73 ( .A1(n78), .A2(n124), .B(n4), .X(n37) );
  SAEDRVT14_BUF_ECO_1 U74 ( .A(n75), .X(n73) );
  SAEDRVT14_INV_S_0P5 U75 ( .A(n37), .X(n74) );
  SAEDRVT14_INV_S_0P5 U76 ( .A(n74), .X(n75) );
  SAEDRVT14_INV_S_0P5 U77 ( .A(n24), .X(n76) );
  SAEDRVT14_INV_S_0P5 U78 ( .A(n76), .X(n77) );
  SAEDRVT14_BUF_ECO_1 U79 ( .A(n77), .X(n78) );
  SAEDRVT14_OAI21_0P75 U80 ( .A1(n84), .A2(n124), .B(n5), .X(n38) );
  SAEDRVT14_BUF_ECO_1 U81 ( .A(n81), .X(n79) );
  SAEDRVT14_INV_S_0P5 U82 ( .A(n38), .X(n80) );
  SAEDRVT14_INV_S_0P5 U83 ( .A(n80), .X(n81) );
  SAEDRVT14_INV_S_0P5 U84 ( .A(n25), .X(n82) );
  SAEDRVT14_INV_S_0P5 U85 ( .A(n82), .X(n83) );
  SAEDRVT14_BUF_ECO_1 U86 ( .A(n83), .X(n84) );
  SAEDRVT14_OAI21_0P75 U87 ( .A1(n90), .A2(n124), .B(n6), .X(n39) );
  SAEDRVT14_BUF_ECO_1 U88 ( .A(n87), .X(n85) );
  SAEDRVT14_INV_S_0P5 U89 ( .A(n39), .X(n86) );
  SAEDRVT14_INV_S_0P5 U90 ( .A(n86), .X(n87) );
  SAEDRVT14_INV_S_0P5 U91 ( .A(n26), .X(n88) );
  SAEDRVT14_INV_S_0P5 U92 ( .A(n88), .X(n89) );
  SAEDRVT14_BUF_ECO_1 U93 ( .A(n89), .X(n90) );
  SAEDRVT14_OAI21_0P75 U94 ( .A1(n96), .A2(n124), .B(n7), .X(n40) );
  SAEDRVT14_BUF_ECO_1 U95 ( .A(n93), .X(n91) );
  SAEDRVT14_INV_S_0P5 U96 ( .A(n40), .X(n92) );
  SAEDRVT14_INV_S_0P5 U97 ( .A(n92), .X(n93) );
  SAEDRVT14_INV_S_0P5 U98 ( .A(n27), .X(n94) );
  SAEDRVT14_INV_S_0P5 U99 ( .A(n94), .X(n95) );
  SAEDRVT14_BUF_ECO_1 U100 ( .A(n95), .X(n96) );
  SAEDRVT14_OAI21_0P75 U101 ( .A1(n100), .A2(n124), .B(n8), .X(n41) );
  SAEDRVT14_BUF_ECO_1 U102 ( .A(n99), .X(n97) );
  SAEDRVT14_INV_S_0P5 U103 ( .A(n41), .X(n98) );
  SAEDRVT14_INV_S_0P5 U104 ( .A(n98), .X(n99) );
  SAEDRVT14_BUF_ECO_1 U105 ( .A(n102), .X(n100) );
  SAEDRVT14_INV_S_0P5 U106 ( .A(n28), .X(n101) );
  SAEDRVT14_INV_S_0P5 U107 ( .A(n101), .X(n102) );
  SAEDRVT14_OAI21_0P75 U108 ( .A1(n108), .A2(n124), .B(n9), .X(n42) );
  SAEDRVT14_BUF_ECO_1 U109 ( .A(n105), .X(n103) );
  SAEDRVT14_INV_S_0P5 U110 ( .A(n42), .X(n104) );
  SAEDRVT14_INV_S_0P5 U111 ( .A(n104), .X(n105) );
  SAEDRVT14_INV_S_0P5 U112 ( .A(n29), .X(n106) );
  SAEDRVT14_INV_S_0P5 U113 ( .A(n106), .X(n107) );
  SAEDRVT14_BUF_ECO_1 U114 ( .A(n107), .X(n108) );
  SAEDRVT14_BUF_ECO_1 U115 ( .A(n43), .X(n109) );
  SAEDRVT14_INV_4 U116 ( .A(n30), .X(n112) );
  SAEDRVT14_INV_S_0P5 U117 ( .A(n109), .X(n110) );
  SAEDRVT14_INV_S_0P5 U118 ( .A(n110), .X(n111) );
  SAEDRVT14_INV_S_0P5 U119 ( .A(n112), .X(n113) );
  SAEDRVT14_BUF_ECO_1 U120 ( .A(N6), .X(n114) );
  SAEDRVT14_INV_S_0P5 U121 ( .A(n114), .X(n115) );
  SAEDRVT14_INV_S_0P5 U122 ( .A(n115), .X(n116) );
  SAEDRVT14_NR2_MM_16 U123 ( .A1(n122), .A2(wait_counter[0]), .X(N5) );
  SAEDRVT14_BUF_ECO_1 U124 ( .A(N5), .X(n117) );
  SAEDRVT14_INV_S_0P5 U125 ( .A(n121), .X(n118) );
  SAEDRVT14_INV_S_0P5 U126 ( .A(n118), .X(n119) );
  SAEDRVT14_INV_S_0P5 U127 ( .A(n117), .X(n120) );
  SAEDRVT14_INV_S_0P5 U128 ( .A(n120), .X(n121) );
  SAEDRVT14_BUF_ECO_1 U129 ( .A(wait_counter[1]), .X(n122) );
  SAEDRVT14_INV_S_1 U130 ( .A(n14), .X(RAM_PIC_WE) );
  SAEDRVT14_BUF_ECO_1 U131 ( .A(RAM_PIC_WE), .X(n124) );
  SAEDRVT14_ND2_CDC_0P5 U132 ( .A1(N11), .A2(RAM_PIC_WE), .X(n8) );
  SAEDRVT14_ND2_CDC_0P5 U133 ( .A1(N13), .A2(RAM_PIC_WE), .X(n6) );
  SAEDRVT14_ND2_CDC_0P5 U134 ( .A1(N12), .A2(RAM_PIC_WE), .X(n7) );
  SAEDRVT14_ND2_CDC_0P5 U135 ( .A1(N17), .A2(RAM_PIC_WE), .X(n2) );
  SAEDRVT14_ND2_CDC_0P5 U136 ( .A1(N15), .A2(RAM_PIC_WE), .X(n4) );
  SAEDRVT14_OAI21_0P5 U137 ( .A1(n113), .A2(n124), .B(n12), .X(n43) );
  SAEDRVT14_ND2_CDC_0P5 U138 ( .A1(N9), .A2(RAM_PIC_WE), .X(n12) );
  SAEDRVT14_ND2_CDC_0P5 U139 ( .A1(N18), .A2(RAM_PIC_WE), .X(n1) );
  SAEDRVT14_ND2_CDC_0P5 U140 ( .A1(N10), .A2(RAM_PIC_WE), .X(n9) );
  SAEDRVT14_ND2_CDC_0P5 U141 ( .A1(wait_counter[1]), .A2(n126), .X(n14) );
  SAEDRVT14_ND2_CDC_0P5 U142 ( .A1(N20), .A2(RAM_PIC_WE), .X(n10) );
  SAEDRVT14_ND2_CDC_0P5 U143 ( .A1(N19), .A2(RAM_PIC_WE), .X(n11) );
  SAEDRVT14_ND2_CDC_0P5 U144 ( .A1(N16), .A2(RAM_PIC_WE), .X(n3) );
  SAEDRVT14_ND2_CDC_0P5 U145 ( .A1(N14), .A2(RAM_PIC_WE), .X(n5) );
  SAEDRVT14_INV_S_1 U146 ( .A(wait_counter[0]), .X(n126) );
  SAEDRVT14_OR3_1 U147 ( .A1(n26), .A2(n27), .A3(n28), .X(n17) );
  SAEDRVT14_NR2_MM_1 U148 ( .A1(n122), .A2(n126), .X(N6) );
  SAEDRVT14_NR2_MM_1 U149 ( .A1(n15), .A2(n16), .X(N2) );
  SAEDRVT14_OR4_1 U150 ( .A1(n23), .A2(n24), .A3(n25), .A4(n18), .X(n15) );
  SAEDRVT14_OR4_1 U151 ( .A1(n29), .A2(n30), .A3(n14), .A4(n17), .X(n16) );
  SAEDRVT14_OR4_1 U152 ( .A1(n21), .A2(n22), .A3(n19), .A4(n20), .X(n18) );
  SAEDRVT14_INV_S_1 U153 ( .A(rst), .X(n125) );
  SAEDRVT14_TIE1_4 U154 ( .X(\*Logic1* ) );
endmodule

