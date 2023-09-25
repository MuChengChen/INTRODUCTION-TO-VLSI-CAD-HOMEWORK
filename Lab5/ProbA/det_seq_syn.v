/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Wed Mar 15 18:58:37 2023
/////////////////////////////////////////////////////////////


module det_seq ( clk, rst, d, q, num );
  output [2:0] num;
  input clk, rst, d;
  output q;
  wire   N40, n1, n2, n3, n5, n6, n7, n8, n9, n10, n12, n13, n14, n15, n16,
         n17, n18, n19;
  wire   [2:0] state;
  wire   [2:0] next_state;
  assign q = N40;

  XOR2X1 U3 ( .A(n13), .B(n1), .Y(n15) );
  NAND2X1 U4 ( .A(num[1]), .B(n2), .Y(n1) );
  XOR2X1 U6 ( .A(num[1]), .B(n2), .Y(n16) );
  OAI33X1 U9 ( .A0(n3), .A1(state[1]), .A2(n18), .B0(n5), .B1(state[2]), .B2(d), .Y(next_state[2]) );
  XOR2X1 U10 ( .A(state[0]), .B(d), .Y(n3) );
  NOR2BX1 U11 ( .AN(d), .B(n6), .Y(next_state[1]) );
  XOR2X1 U12 ( .A(n7), .B(n8), .Y(n6) );
  XNOR2X1 U13 ( .A(n18), .B(n9), .Y(n8) );
  OAI21XL U14 ( .A0(n18), .A1(n9), .B0(n5), .Y(n7) );
  OAI21XL U15 ( .A0(state[1]), .A1(state[0]), .B0(n5), .Y(n9) );
  NAND2X1 U16 ( .A(state[0]), .B(state[1]), .Y(n5) );
  OAI222XL U17 ( .A0(state[1]), .A1(d), .B0(state[2]), .B1(n10), .C0(state[0]), 
        .C1(n19), .Y(next_state[0]) );
  OA21XL U18 ( .A0(n12), .A1(n19), .B0(state[0]), .Y(n10) );
  CLKINVX1 U19 ( .A(d), .Y(n12) );
  DFFRX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n14), .Q(state[0])
         );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n14), .Q(state[1]), 
        .QN(n19) );
  DFFRX2 \num_reg[1]  ( .D(n16), .CK(clk), .RN(n14), .Q(num[1]) );
  DFFRX2 \num_reg[0]  ( .D(n17), .CK(clk), .RN(n14), .Q(num[0]) );
  DFFRX2 \num_reg[2]  ( .D(n15), .CK(clk), .RN(n14), .Q(num[2]), .QN(n13) );
  DFFRX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n14), .Q(state[2]), 
        .QN(n18) );
  INVX3 U23 ( .A(rst), .Y(n14) );
  XOR2XL U24 ( .A(num[0]), .B(N40), .Y(n17) );
  AND2XL U25 ( .A(num[0]), .B(N40), .Y(n2) );
  NOR3X4 U26 ( .A(n19), .B(state[0]), .C(n18), .Y(N40) );
endmodule

