/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2023 Spring ---------------------- //
// ---------------------- Editor: Zhi-Yu Chen (Willy) ------------ //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2023.02    ---------------------- //
// ---------------------- Full Adder        ---------------------- // 
/////////////////////////////////////////////////////////////////////

module FA(a_in, b_in, c_in, sum_o, c_out);

input a_in;
input b_in;
input c_in;
output sum_o;
output c_out;

/* write your code here */
   wire w1,w2,w3,w5;
   xor g1(w1,a_in,b_in);
   xor g2(sum_o,w1,c_in);

   or g3(w2,b_in,c_in);
   and g4(w3,b_in,c_in);
   and g5(w5,a_in,w2);
   or g6(c_out,w5,w3);
   

endmodule
