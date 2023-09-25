/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Wed Mar  1 22:17:52 2023
/////////////////////////////////////////////////////////////


module fixedpoint_s_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  SAEDRVT14_ADDH_0P5 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  SAEDRVT14_ADDH_0P5 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  SAEDRVT14_ADDH_0P5 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  SAEDRVT14_ADDH_0P5 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  SAEDRVT14_ADDH_0P5 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  SAEDRVT14_ADDH_0P5 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  SAEDRVT14_INV_S_1 U1 ( .A(A[0]), .X(SUM[0]) );
  SAEDRVT14_EO2_V1_0P75 U2 ( .A1(carry[7]), .A2(A[7]), .X(SUM[7]) );
endmodule


module fixedpoint_s_DW01_inc_2 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1;
  wire   [15:2] carry;

  SAEDRVT14_ADDH_0P5 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  SAEDRVT14_ADDH_0P5 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  SAEDRVT14_ADDH_0P5 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  SAEDRVT14_ADDH_0P5 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  SAEDRVT14_ADDH_0P5 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(
        SUM[9]) );
  SAEDRVT14_ADDH_0P5 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  SAEDRVT14_ADDH_0P5 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  SAEDRVT14_ADDH_0P5 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  SAEDRVT14_AN4_0P5 U1 ( .A1(A[5]), .A2(A[4]), .A3(A[6]), .A4(n1), .X(carry[7]) );
  SAEDRVT14_AN4_0P5 U2 ( .A1(A[3]), .A2(A[2]), .A3(A[1]), .A4(A[0]), .X(n1) );
  SAEDRVT14_EO2_V1_0P75 U3 ( .A1(carry[15]), .A2(A[15]), .X(SUM[15]) );
endmodule


module fixedpoint_s_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  SAEDRVT14_ADDH_0P5 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  SAEDRVT14_ADDH_0P5 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  SAEDRVT14_ADDH_0P5 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  SAEDRVT14_ADDH_0P5 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  SAEDRVT14_ADDH_0P5 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  SAEDRVT14_ADDH_0P5 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  SAEDRVT14_INV_S_1 U1 ( .A(A[0]), .X(SUM[0]) );
  SAEDRVT14_EO2_V1_0P75 U2 ( .A1(carry[7]), .A2(A[7]), .X(SUM[7]) );
endmodule


module fixedpoint_s_DW_mult_tc_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n19, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255;

  SAEDRVT14_ADDF_V1_1 U2 ( .A(n2), .B(n61), .CI(n195), .CO(n1), .S(product[14]) );
  SAEDRVT14_ADDF_V1_1 U3 ( .A(n3), .B(n17), .CI(n16), .CO(n2), .S(product[13])
         );
  SAEDRVT14_ADDF_V1_1 U4 ( .A(n4), .B(n19), .CI(n18), .CO(n3), .S(product[12])
         );
  SAEDRVT14_ADDF_V1_1 U5 ( .A(n5), .B(n20), .CI(n23), .CO(n4), .S(product[11])
         );
  SAEDRVT14_ADDF_V1_1 U6 ( .A(n6), .B(n24), .CI(n27), .CO(n5), .S(product[10])
         );
  SAEDRVT14_ADDF_V1_1 U7 ( .A(n7), .B(n28), .CI(n33), .CO(n6), .S(product[9])
         );
  SAEDRVT14_ADDF_V1_1 U8 ( .A(n8), .B(n34), .CI(n39), .CO(n7), .S(product[8])
         );
  SAEDRVT14_ADDF_V1_1 U9 ( .A(n9), .B(n40), .CI(n45), .CO(n8), .S(product[7])
         );
  SAEDRVT14_ADDF_V1_1 U10 ( .A(n10), .B(n46), .CI(n49), .CO(n9), .S(product[6]) );
  SAEDRVT14_ADDF_V1_1 U11 ( .A(n11), .B(n50), .CI(n53), .CO(n10), .S(
        product[5]) );
  SAEDRVT14_ADDF_V1_1 U12 ( .A(n12), .B(n54), .CI(n55), .CO(n11), .S(
        product[4]) );
  SAEDRVT14_ADDF_V1_1 U13 ( .A(n13), .B(n56), .CI(n59), .CO(n12), .S(
        product[3]) );
  SAEDRVT14_ADDF_V1_1 U14 ( .A(n14), .B(n91), .CI(n84), .CO(n13), .S(
        product[2]) );
  SAEDRVT14_ADDH_0P5 U15 ( .A(n92), .B(n60), .CO(n14), .S(product[1]) );
  SAEDRVT14_ADDF_V1_1 U17 ( .A(n69), .B(n62), .CI(n198), .CO(n17), .S(n18) );
  SAEDRVT14_ADDF_V1_1 U18 ( .A(n25), .B(n22), .CI(n63), .CO(n19), .S(n20) );
  SAEDRVT14_ADDF_V1_1 U20 ( .A(n26), .B(n29), .CI(n64), .CO(n23), .S(n24) );
  SAEDRVT14_ADDF_V1_1 U21 ( .A(n77), .B(n70), .CI(n201), .CO(n25), .S(n26) );
  SAEDRVT14_ADDF_V1_1 U22 ( .A(n30), .B(n35), .CI(n37), .CO(n27), .S(n28) );
  SAEDRVT14_ADDF_V1_1 U23 ( .A(n32), .B(n65), .CI(n71), .CO(n29), .S(n30) );
  SAEDRVT14_ADDF_V1_1 U25 ( .A(n36), .B(n38), .CI(n41), .CO(n33), .S(n34) );
  SAEDRVT14_ADDF_V1_1 U26 ( .A(n43), .B(n85), .CI(n72), .CO(n35), .S(n36) );
  SAEDRVT14_ADDF_V1_1 U29 ( .A(n42), .B(n47), .CI(n44), .CO(n39), .S(n40) );
  SAEDRVT14_ADDF_V1_1 U30 ( .A(n73), .B(n67), .CI(n79), .CO(n41), .S(n42) );
  SAEDRVT14_ADDH_0P5 U31 ( .A(n57), .B(n86), .CO(n43), .S(n44) );
  SAEDRVT14_ADDF_V1_1 U32 ( .A(n48), .B(n51), .CI(n74), .CO(n45), .S(n46) );
  SAEDRVT14_ADDF_V1_1 U33 ( .A(n80), .B(n87), .CI(n68), .CO(n47), .S(n48) );
  SAEDRVT14_ADDF_V1_1 U34 ( .A(n52), .B(n75), .CI(n81), .CO(n49), .S(n50) );
  SAEDRVT14_ADDH_0P5 U35 ( .A(n58), .B(n88), .CO(n51), .S(n52) );
  SAEDRVT14_ADDF_V1_1 U36 ( .A(n82), .B(n89), .CI(n76), .CO(n53), .S(n54) );
  SAEDRVT14_ADDH_0P5 U37 ( .A(n83), .B(n90), .CO(n55), .S(n56) );
  SAEDRVT14_INV_S_1 U145 ( .A(n1), .X(product[15]) );
  SAEDRVT14_INV_S_1 U146 ( .A(n238), .X(n200) );
  SAEDRVT14_INV_S_1 U147 ( .A(n16), .X(n195) );
  SAEDRVT14_INV_S_1 U148 ( .A(n223), .X(n202) );
  SAEDRVT14_INV_S_1 U149 ( .A(n231), .X(n199) );
  SAEDRVT14_INV_S_1 U150 ( .A(n248), .X(n197) );
  SAEDRVT14_INV_S_1 U151 ( .A(n221), .X(n203) );
  SAEDRVT14_INV_S_1 U152 ( .A(n241), .X(n196) );
  SAEDRVT14_INV_S_1 U153 ( .A(n32), .X(n201) );
  SAEDRVT14_INV_S_1 U154 ( .A(n22), .X(n198) );
  SAEDRVT14_EO2_V1_0P75 U155 ( .A1(a[2]), .A2(n204), .X(n221) );
  SAEDRVT14_ND2_CDC_0P5 U156 ( .A1(a[1]), .A2(n205), .X(n213) );
  SAEDRVT14_INV_S_1 U157 ( .A(a[0]), .X(n205) );
  SAEDRVT14_INV_S_1 U158 ( .A(a[1]), .X(n204) );
  SAEDRVT14_INV_S_1 U159 ( .A(b[0]), .X(n212) );
  SAEDRVT14_INV_S_1 U160 ( .A(b[6]), .X(n206) );
  SAEDRVT14_INV_S_1 U161 ( .A(b[5]), .X(n207) );
  SAEDRVT14_INV_S_1 U162 ( .A(b[4]), .X(n208) );
  SAEDRVT14_INV_S_1 U163 ( .A(b[3]), .X(n209) );
  SAEDRVT14_INV_S_1 U164 ( .A(b[2]), .X(n210) );
  SAEDRVT14_INV_S_1 U165 ( .A(b[1]), .X(n211) );
  SAEDRVT14_NR2_1 U166 ( .A1(n205), .A2(n212), .X(product[0]) );
  SAEDRVT14_OAI22_0P5 U167 ( .A1(b[0]), .A2(n213), .B1(n214), .B2(n205), .X(
        n92) );
  SAEDRVT14_OAI22_0P5 U168 ( .A1(n214), .A2(n213), .B1(n215), .B2(n205), .X(
        n91) );
  SAEDRVT14_EO2_V1_0P75 U169 ( .A1(n211), .A2(a[1]), .X(n214) );
  SAEDRVT14_OAI22_0P5 U170 ( .A1(n215), .A2(n213), .B1(n216), .B2(n205), .X(
        n90) );
  SAEDRVT14_EO2_V1_0P75 U171 ( .A1(n210), .A2(a[1]), .X(n215) );
  SAEDRVT14_OAI22_0P5 U172 ( .A1(n216), .A2(n213), .B1(n217), .B2(n205), .X(
        n89) );
  SAEDRVT14_EO2_V1_0P75 U173 ( .A1(n209), .A2(a[1]), .X(n216) );
  SAEDRVT14_OAI22_0P5 U174 ( .A1(n217), .A2(n213), .B1(n218), .B2(n205), .X(
        n88) );
  SAEDRVT14_EO2_V1_0P75 U175 ( .A1(n208), .A2(a[1]), .X(n217) );
  SAEDRVT14_OAI22_0P5 U176 ( .A1(n218), .A2(n213), .B1(n219), .B2(n205), .X(
        n87) );
  SAEDRVT14_EO2_V1_0P75 U177 ( .A1(n207), .A2(a[1]), .X(n218) );
  SAEDRVT14_OAI22_0P5 U178 ( .A1(n219), .A2(n213), .B1(n220), .B2(n205), .X(
        n86) );
  SAEDRVT14_EO2_V1_0P75 U179 ( .A1(n206), .A2(a[1]), .X(n219) );
  SAEDRVT14_AO21_1 U180 ( .A1(n205), .A2(n213), .B(n220), .X(n85) );
  SAEDRVT14_EO2_V1_0P75 U181 ( .A1(b[7]), .A2(n204), .X(n220) );
  SAEDRVT14_NR2_1 U182 ( .A1(n221), .A2(n212), .X(n84) );
  SAEDRVT14_OAI22_0P5 U183 ( .A1(n222), .A2(n223), .B1(n221), .B2(n224), .X(
        n83) );
  SAEDRVT14_EO2_V1_0P75 U184 ( .A1(a[3]), .A2(n212), .X(n222) );
  SAEDRVT14_OAI22_0P5 U185 ( .A1(n224), .A2(n223), .B1(n221), .B2(n225), .X(
        n82) );
  SAEDRVT14_EO2_V1_0P75 U186 ( .A1(n211), .A2(a[3]), .X(n224) );
  SAEDRVT14_OAI22_0P5 U187 ( .A1(n225), .A2(n223), .B1(n221), .B2(n226), .X(
        n81) );
  SAEDRVT14_EO2_V1_0P75 U188 ( .A1(n210), .A2(a[3]), .X(n225) );
  SAEDRVT14_OAI22_0P5 U189 ( .A1(n226), .A2(n223), .B1(n221), .B2(n227), .X(
        n80) );
  SAEDRVT14_EO2_V1_0P75 U190 ( .A1(n209), .A2(a[3]), .X(n226) );
  SAEDRVT14_OAI22_0P5 U191 ( .A1(n227), .A2(n223), .B1(n221), .B2(n228), .X(
        n79) );
  SAEDRVT14_EO2_V1_0P75 U192 ( .A1(n208), .A2(a[3]), .X(n227) );
  SAEDRVT14_OAI21_0P5 U193 ( .A1(n202), .A2(n203), .B(n229), .X(n77) );
  SAEDRVT14_NR2_1 U194 ( .A1(n200), .A2(n212), .X(n76) );
  SAEDRVT14_OAI22_0P5 U195 ( .A1(n230), .A2(n231), .B1(n200), .B2(n232), .X(
        n75) );
  SAEDRVT14_EO2_V1_0P75 U196 ( .A1(a[5]), .A2(n212), .X(n230) );
  SAEDRVT14_OAI22_0P5 U197 ( .A1(n232), .A2(n231), .B1(n200), .B2(n233), .X(
        n74) );
  SAEDRVT14_EO2_V1_0P75 U198 ( .A1(n211), .A2(a[5]), .X(n232) );
  SAEDRVT14_OAI22_0P5 U199 ( .A1(n233), .A2(n231), .B1(n200), .B2(n234), .X(
        n73) );
  SAEDRVT14_EO2_V1_0P75 U200 ( .A1(n210), .A2(a[5]), .X(n233) );
  SAEDRVT14_OAI22_0P5 U201 ( .A1(n234), .A2(n231), .B1(n200), .B2(n235), .X(
        n72) );
  SAEDRVT14_EO2_V1_0P75 U202 ( .A1(n209), .A2(a[5]), .X(n234) );
  SAEDRVT14_OAI22_0P5 U203 ( .A1(n235), .A2(n231), .B1(n200), .B2(n236), .X(
        n71) );
  SAEDRVT14_EO2_V1_0P75 U204 ( .A1(n208), .A2(a[5]), .X(n235) );
  SAEDRVT14_OAI22_0P5 U205 ( .A1(n236), .A2(n231), .B1(n200), .B2(n237), .X(
        n70) );
  SAEDRVT14_EO2_V1_0P75 U206 ( .A1(n207), .A2(a[5]), .X(n236) );
  SAEDRVT14_OAI21_0P5 U207 ( .A1(n199), .A2(n238), .B(n239), .X(n69) );
  SAEDRVT14_NR2_1 U208 ( .A1(n197), .A2(n212), .X(n68) );
  SAEDRVT14_OAI22_0P5 U209 ( .A1(n240), .A2(n241), .B1(n197), .B2(n242), .X(
        n67) );
  SAEDRVT14_EO2_V1_0P75 U210 ( .A1(a[7]), .A2(n212), .X(n240) );
  SAEDRVT14_OAI22_0P5 U211 ( .A1(n243), .A2(n241), .B1(n197), .B2(n244), .X(
        n65) );
  SAEDRVT14_OAI22_0P5 U212 ( .A1(n244), .A2(n241), .B1(n197), .B2(n245), .X(
        n64) );
  SAEDRVT14_EO2_V1_0P75 U213 ( .A1(n209), .A2(a[7]), .X(n244) );
  SAEDRVT14_OAI22_0P5 U214 ( .A1(n245), .A2(n241), .B1(n197), .B2(n246), .X(
        n63) );
  SAEDRVT14_EO2_V1_0P75 U215 ( .A1(n208), .A2(a[7]), .X(n245) );
  SAEDRVT14_OAI22_0P5 U216 ( .A1(n246), .A2(n241), .B1(n197), .B2(n247), .X(
        n62) );
  SAEDRVT14_EO2_V1_0P75 U217 ( .A1(n207), .A2(a[7]), .X(n246) );
  SAEDRVT14_OAI21_0P5 U218 ( .A1(n196), .A2(n248), .B(n249), .X(n61) );
  SAEDRVT14_OAI21_0P5 U219 ( .A1(b[0]), .A2(n204), .B(n213), .X(n60) );
  SAEDRVT14_AO32_1 U220 ( .A1(n203), .A2(n212), .A3(a[3]), .B1(n202), .B2(a[3]), .X(n59) );
  SAEDRVT14_AO32_1 U221 ( .A1(n238), .A2(n212), .A3(a[5]), .B1(n199), .B2(a[5]), .X(n58) );
  SAEDRVT14_AO32_1 U222 ( .A1(n248), .A2(n212), .A3(a[7]), .B1(n196), .B2(a[7]), .X(n57) );
  SAEDRVT14_EO2_V1_0P75 U223 ( .A1(n250), .A2(n251), .X(n38) );
  SAEDRVT14_ND2B_U_0P5 U224 ( .A(n250), .B(n251), .X(n37) );
  SAEDRVT14_OA22_0P75 U225 ( .A1(n228), .A2(n223), .B1(n221), .B2(n252), .X(
        n251) );
  SAEDRVT14_EO2_V1_0P75 U226 ( .A1(n207), .A2(a[3]), .X(n228) );
  SAEDRVT14_OAI22_0P5 U227 ( .A1(n242), .A2(n241), .B1(n197), .B2(n243), .X(
        n250) );
  SAEDRVT14_EO2_V1_0P75 U228 ( .A1(n210), .A2(a[7]), .X(n243) );
  SAEDRVT14_EO2_V1_0P75 U229 ( .A1(n211), .A2(a[7]), .X(n242) );
  SAEDRVT14_OA2BB2_V1_1 U230 ( .A1(n203), .A2(n229), .B1(n252), .B2(n223), .X(
        n32) );
  SAEDRVT14_ND2_CDC_0P5 U231 ( .A1(n221), .A2(n253), .X(n223) );
  SAEDRVT14_EO2_V1_0P75 U232 ( .A1(a[3]), .A2(a[2]), .X(n253) );
  SAEDRVT14_EO2_V1_0P75 U233 ( .A1(n206), .A2(a[3]), .X(n252) );
  SAEDRVT14_EO2_V1_0P75 U234 ( .A1(b[7]), .A2(a[3]), .X(n229) );
  SAEDRVT14_OA2BB2_V1_1 U235 ( .A1(n238), .A2(n239), .B1(n237), .B2(n231), .X(
        n22) );
  SAEDRVT14_ND2_CDC_0P5 U236 ( .A1(n200), .A2(n254), .X(n231) );
  SAEDRVT14_EO2_V1_0P75 U237 ( .A1(a[5]), .A2(a[4]), .X(n254) );
  SAEDRVT14_EO2_V1_0P75 U238 ( .A1(n206), .A2(a[5]), .X(n237) );
  SAEDRVT14_EO2_V1_0P75 U239 ( .A1(b[7]), .A2(a[5]), .X(n239) );
  SAEDRVT14_EO2_V1_0P75 U240 ( .A1(a[4]), .A2(a[3]), .X(n238) );
  SAEDRVT14_OA2BB2_V1_1 U241 ( .A1(n248), .A2(n249), .B1(n247), .B2(n241), .X(
        n16) );
  SAEDRVT14_ND2_CDC_0P5 U242 ( .A1(n197), .A2(n255), .X(n241) );
  SAEDRVT14_EO2_V1_0P75 U243 ( .A1(a[7]), .A2(a[6]), .X(n255) );
  SAEDRVT14_EO2_V1_0P75 U244 ( .A1(n206), .A2(a[7]), .X(n247) );
  SAEDRVT14_EO2_V1_0P75 U245 ( .A1(b[7]), .A2(a[7]), .X(n249) );
  SAEDRVT14_EO2_V1_0P75 U246 ( .A1(a[6]), .A2(a[5]), .X(n248) );
endmodule


module fixedpoint_s ( in1, in2, out );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] out;
  wire   \raw_result_s_twos[7] , N25, N27, N32, N33, N34, N35, N36, N37, N38,
         N39, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         \raw_result_s_twos_add[7] , \raw_result_s_twos_add[6] ,
         \raw_result_s_twos_add[5] , \raw_result_s_twos_add[4] ,
         \raw_result_s_twos_add[3] , \raw_result_s_twos_add[2] ,
         \raw_result_s_twos_add[1] , \raw_result_s_twos_add[0] ,
         \raw_result_s_twos[9] , \raw_result_s_twos[15] ,
         \raw_result_s_twos[14] , \raw_result_s_twos[13] ,
         \raw_result_s_twos[12] , \raw_result_s_twos[11] ,
         \raw_result_s_twos[10] , n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69;
  wire   [15:0] raw_result_s;
  wire   [7:0] raw_result_s_twos_add_twos;
  wire   [8:0] \sub_2_root_add_14_ni/carry ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;

  SAEDRVT14_AO21B_0P5 U41 ( .A1(raw_result_s[7]), .A2(N27), .B(n41), .X(n33)
         );
  fixedpoint_s_DW01_inc_0 add_22 ( .A({N25, raw_result_s[14:8]}), .SUM({N39, 
        N38, N37, N36, N35, N34, N33, N32}) );
  fixedpoint_s_DW01_inc_2 add_12 ( .A({n54, n55, n56, n57, n58, n59, n60, n61, 
        n62, n63, n64, n65, n66, n67, n68, n69}), .SUM({
        \raw_result_s_twos[15] , \raw_result_s_twos[14] , 
        \raw_result_s_twos[13] , \raw_result_s_twos[12] , 
        \raw_result_s_twos[11] , \raw_result_s_twos[10] , 
        \raw_result_s_twos[9] , \raw_result_s_twos_add[0] , 
        \raw_result_s_twos[7] , SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6}) );
  fixedpoint_s_DW01_inc_1 add_1_root_add_14_ni ( .A({
        \raw_result_s_twos_add[7] , \raw_result_s_twos_add[6] , 
        \raw_result_s_twos_add[5] , \raw_result_s_twos_add[4] , 
        \raw_result_s_twos_add[3] , \raw_result_s_twos_add[2] , 
        \raw_result_s_twos_add[1] , \raw_result_s_twos_add[0] }), .SUM(
        raw_result_s_twos_add_twos) );
  fixedpoint_s_DW_mult_tc_0 mult_10 ( .a(in1), .b(in2), .product({N25, 
        raw_result_s[14:0]}) );
  SAEDRVT14_INV_S_1 U42 ( .A(\raw_result_s_twos[13] ), .X(n47) );
  SAEDRVT14_INV_S_1 U43 ( .A(\raw_result_s_twos[9] ), .X(n43) );
  SAEDRVT14_INV_S_1 U44 ( .A(\raw_result_s_twos[10] ), .X(n44) );
  SAEDRVT14_INV_S_1 U45 ( .A(\raw_result_s_twos[11] ), .X(n45) );
  SAEDRVT14_INV_S_1 U46 ( .A(\raw_result_s_twos[12] ), .X(n46) );
  SAEDRVT14_EO2_V1_0P75 U47 ( .A1(\raw_result_s_twos[15] ), .A2(
        \sub_2_root_add_14_ni/carry [7]), .X(\raw_result_s_twos_add[7] ) );
  SAEDRVT14_INV_S_1 U48 ( .A(\raw_result_s_twos[14] ), .X(n48) );
  SAEDRVT14_INV_S_1 U49 ( .A(n41), .X(n53) );
  SAEDRVT14_INV_S_1 U50 ( .A(raw_result_s[9]), .X(n60) );
  SAEDRVT14_INV_S_1 U51 ( .A(\raw_result_s_twos_add[0] ), .X(n42) );
  SAEDRVT14_INV_S_1 U52 ( .A(raw_result_s[13]), .X(n56) );
  SAEDRVT14_AO221_0P5 U53 ( .A1(N32), .A2(n31), .B1(
        raw_result_s_twos_add_twos[0]), .B2(n53), .C(n40), .X(out[0]) );
  SAEDRVT14_NR2_MM_1 U54 ( .A1(n61), .A2(n33), .X(n40) );
  SAEDRVT14_AO221_0P5 U55 ( .A1(N33), .A2(n31), .B1(
        raw_result_s_twos_add_twos[1]), .B2(n53), .C(n39), .X(out[1]) );
  SAEDRVT14_NR2_MM_1 U56 ( .A1(n60), .A2(n33), .X(n39) );
  SAEDRVT14_AO221_0P5 U57 ( .A1(N34), .A2(n31), .B1(
        raw_result_s_twos_add_twos[2]), .B2(n53), .C(n38), .X(out[2]) );
  SAEDRVT14_NR2_MM_1 U58 ( .A1(n59), .A2(n33), .X(n38) );
  SAEDRVT14_AO221_0P5 U59 ( .A1(N35), .A2(n31), .B1(
        raw_result_s_twos_add_twos[3]), .B2(n53), .C(n37), .X(out[3]) );
  SAEDRVT14_NR2_MM_1 U60 ( .A1(n58), .A2(n33), .X(n37) );
  SAEDRVT14_AO221_0P5 U61 ( .A1(N36), .A2(n31), .B1(
        raw_result_s_twos_add_twos[4]), .B2(n53), .C(n36), .X(out[4]) );
  SAEDRVT14_NR2_MM_1 U62 ( .A1(n57), .A2(n33), .X(n36) );
  SAEDRVT14_AO221_0P5 U63 ( .A1(N37), .A2(n31), .B1(
        raw_result_s_twos_add_twos[5]), .B2(n53), .C(n35), .X(out[5]) );
  SAEDRVT14_NR2_MM_1 U64 ( .A1(n56), .A2(n33), .X(n35) );
  SAEDRVT14_AO221_0P5 U65 ( .A1(N38), .A2(n31), .B1(
        raw_result_s_twos_add_twos[6]), .B2(n53), .C(n34), .X(out[6]) );
  SAEDRVT14_NR2_MM_1 U66 ( .A1(n55), .A2(n33), .X(n34) );
  SAEDRVT14_AO221_0P5 U67 ( .A1(N39), .A2(n31), .B1(
        raw_result_s_twos_add_twos[7]), .B2(n53), .C(n32), .X(out[7]) );
  SAEDRVT14_NR2_MM_1 U68 ( .A1(n54), .A2(n33), .X(n32) );
  SAEDRVT14_ND2_CDC_0P5 U69 ( .A1(\raw_result_s_twos[7] ), .A2(N25), .X(n41)
         );
  SAEDRVT14_INV_S_1 U70 ( .A(raw_result_s[8]), .X(n61) );
  SAEDRVT14_INV_S_1 U71 ( .A(raw_result_s[10]), .X(n59) );
  SAEDRVT14_INV_S_1 U72 ( .A(raw_result_s[12]), .X(n57) );
  SAEDRVT14_INV_S_1 U73 ( .A(raw_result_s[11]), .X(n58) );
  SAEDRVT14_INV_S_1 U74 ( .A(N25), .X(n54) );
  SAEDRVT14_INV_S_1 U75 ( .A(raw_result_s[14]), .X(n55) );
  SAEDRVT14_AN3_0P75 U76 ( .A1(raw_result_s[7]), .A2(n41), .A3(N27), .X(n31)
         );
  SAEDRVT14_INV_S_1 U77 ( .A(raw_result_s[7]), .X(n62) );
  SAEDRVT14_INV_S_1 U78 ( .A(raw_result_s[0]), .X(n69) );
  SAEDRVT14_INV_S_1 U79 ( .A(raw_result_s[2]), .X(n67) );
  SAEDRVT14_INV_S_1 U80 ( .A(raw_result_s[4]), .X(n65) );
  SAEDRVT14_INV_S_1 U81 ( .A(raw_result_s[6]), .X(n63) );
  SAEDRVT14_INV_S_1 U82 ( .A(raw_result_s[5]), .X(n64) );
  SAEDRVT14_INV_S_1 U83 ( .A(raw_result_s[1]), .X(n68) );
  SAEDRVT14_INV_S_1 U84 ( .A(raw_result_s[3]), .X(n66) );
  SAEDRVT14_OR2_0P5 U85 ( .A1(n48), .A2(\sub_2_root_add_14_ni/carry [6]), .X(
        \sub_2_root_add_14_ni/carry [7]) );
  SAEDRVT14_EN2_1 U86 ( .A1(\sub_2_root_add_14_ni/carry [6]), .A2(n48), .X(
        \raw_result_s_twos_add[6] ) );
  SAEDRVT14_OR2_0P5 U87 ( .A1(n47), .A2(\sub_2_root_add_14_ni/carry [5]), .X(
        \sub_2_root_add_14_ni/carry [6]) );
  SAEDRVT14_EN2_1 U88 ( .A1(\sub_2_root_add_14_ni/carry [5]), .A2(n47), .X(
        \raw_result_s_twos_add[5] ) );
  SAEDRVT14_OR2_0P5 U89 ( .A1(n46), .A2(\sub_2_root_add_14_ni/carry [4]), .X(
        \sub_2_root_add_14_ni/carry [5]) );
  SAEDRVT14_EN2_1 U90 ( .A1(\sub_2_root_add_14_ni/carry [4]), .A2(n46), .X(
        \raw_result_s_twos_add[4] ) );
  SAEDRVT14_OR2_0P5 U91 ( .A1(n45), .A2(\sub_2_root_add_14_ni/carry [3]), .X(
        \sub_2_root_add_14_ni/carry [4]) );
  SAEDRVT14_EN2_1 U92 ( .A1(\sub_2_root_add_14_ni/carry [3]), .A2(n45), .X(
        \raw_result_s_twos_add[3] ) );
  SAEDRVT14_OR2_0P5 U93 ( .A1(n44), .A2(\sub_2_root_add_14_ni/carry [2]), .X(
        \sub_2_root_add_14_ni/carry [3]) );
  SAEDRVT14_EN2_1 U94 ( .A1(\sub_2_root_add_14_ni/carry [2]), .A2(n44), .X(
        \raw_result_s_twos_add[2] ) );
  SAEDRVT14_OR2_0P5 U95 ( .A1(n43), .A2(n42), .X(
        \sub_2_root_add_14_ni/carry [2]) );
  SAEDRVT14_EN2_1 U96 ( .A1(n42), .A2(n43), .X(\raw_result_s_twos_add[1] ) );
  SAEDRVT14_OR4_1 U97 ( .A1(raw_result_s[7]), .A2(raw_result_s[6]), .A3(
        raw_result_s[9]), .A4(raw_result_s[8]), .X(n52) );
  SAEDRVT14_OR4_1 U98 ( .A1(raw_result_s[3]), .A2(raw_result_s[2]), .A3(
        raw_result_s[5]), .A4(raw_result_s[4]), .X(n51) );
  SAEDRVT14_OR4_1 U99 ( .A1(raw_result_s[13]), .A2(raw_result_s[12]), .A3(
        raw_result_s[1]), .A4(raw_result_s[14]), .X(n49) );
  SAEDRVT14_OR4_1 U100 ( .A1(raw_result_s[11]), .A2(raw_result_s[10]), .A3(
        raw_result_s[0]), .A4(n49), .X(n50) );
  SAEDRVT14_OA31_1 U101 ( .A1(n52), .A2(n51), .A3(n50), .B(n54), .X(N27) );
endmodule

