/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Wed Mar 15 21:10:31 2023
/////////////////////////////////////////////////////////////


module pattern_gen ( clk, rst, en, sel, pattern, valid );
  input [1:0] sel;
  input clk, rst, en;
  output pattern, valid;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [2:0] state;
  wire   [2:0] next_state;

  CLKINVX1 U3 ( .A(rst), .Y(n1) );
  DFFRX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n1), .Q(state[2]), 
        .QN(n14) );
  DFFRX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n1), .Q(state[0])
         );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n1), .Q(state[1])
         );
  XOR2X1 U21 ( .A(state[0]), .B(state[1]), .Y(n9) );
  OA21XL U22 ( .A0(n14), .A1(n5), .B0(n9), .Y(next_state[1]) );
  NAND2X2 U23 ( .A(n6), .B(n7), .Y(valid) );
  AO21X1 U24 ( .A0(n8), .A1(n14), .B0(n9), .Y(n7) );
  NAND2X1 U25 ( .A(n9), .B(n14), .Y(n6) );
  CLKINVX1 U26 ( .A(n13), .Y(n2) );
  OAI21X2 U27 ( .A0(n10), .A1(n9), .B0(n6), .Y(pattern) );
  AOI33X1 U28 ( .A0(sel[0]), .A1(n8), .A2(state[2]), .B0(n4), .B1(n14), .B2(
        sel[1]), .Y(n10) );
  CLKINVX1 U29 ( .A(n8), .Y(n4) );
  OAI22XL U30 ( .A0(n5), .A1(n2), .B0(state[0]), .B1(n12), .Y(next_state[0])
         );
  AOI211X1 U31 ( .A0(state[1]), .A1(n14), .B0(en), .C0(n13), .Y(n12) );
  CLKINVX1 U32 ( .A(en), .Y(n5) );
  OAI211X1 U33 ( .A0(state[2]), .A1(n8), .B0(n11), .C0(n2), .Y(next_state[2])
         );
  NAND3BX1 U34 ( .AN(state[0]), .B(n5), .C(state[2]), .Y(n11) );
  NAND2X1 U35 ( .A(state[1]), .B(state[0]), .Y(n8) );
  NOR2X1 U36 ( .A(n14), .B(state[1]), .Y(n13) );
endmodule

