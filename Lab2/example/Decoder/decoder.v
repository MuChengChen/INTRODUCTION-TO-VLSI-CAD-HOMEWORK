/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2023 Spring ---------------------- //
// ---------------------- Editor: Zhi-Yu Chen (Willy) ------------ //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2023.02    ---------------------- //
// ---------------------- priority encoder  ---------------------- // 
/////////////////////////////////////////////////////////////////////

// Module name and I/O port
module decoder(I1,I0,O3,O2,O1,O0);

// Input and output ports declaration
input  I1,I0;
output O3,O2,O1,O0;
 
// Circuit

//structural coding
wire n1;
not(n1,I1);


nand(O1, n1, I0);

/* write your code below  */



endmodule


