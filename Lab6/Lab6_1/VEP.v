/*
* Hint
sigal explanation:
1.  clk                	: This is a positive edge-triggered clock signal.
2.  rst                	: This is a reset signal.
3.  VEP_x              	: The x-coordinate of this VEP.
4.  VEP_y              	: The y-coordinate of this VEP.
5.  pixel              	: Same as RAM_IF_Q, includes {R, G, B} channels with 8 bits in each channel.
6.  weight_initial    	: The initial codebook value read from RAM_W.
7.  weight_update     	: A write enable signal from the controller that tells the read data(codebook) from RAM_W for which VEP should write.
8.  tag					: output the tag of the codebook(weight) stored in this VEP (tag = {y, x})
9.  manhattan_distance 	: For example, the Manhattan distance between (125, 80, 27) and (110, 70, 34) is |125-110|+|80-70|+|27-34|=32.

*/

module VEP(
  input              clk,
  input              rst,
   //input  [      2:0] VEP_x,
   //input  [      2:0] VEP_y,
  /*input  [      2:0] winner_VEP_x,
  input  [      2:0] winner_VEP_y,*/
  input  [23:0] pixel,
  input  [23:0] weight_initial,
  input              weight_update,
  //output reg [8*3 - 1:0] weight,
   //output [		5:0] tag,
  output [      9:0] manhattan_distance//manhattan distance, add 2 extension bits to prevent overflow
);

reg [23:0] weight_reg;
reg [7:0] blue,green,red;

always@(*)
	if(pixel[23:16]<=weight_reg[23:16])
		blue=weight_reg[23:16]-pixel[23:16];
	else if(pixel[23:16]>=weight_reg[23:16])
		blue=pixel[23:16]-weight_reg[23:16];
	else
		blue=8'd0;

always@(*)
	if(pixel[15:8]<=weight_reg[15:8])
		green=weight_reg[15:8]-pixel[15:8];
	else if(pixel[15:8]>=weight_reg[15:8])
		green=pixel[15:8]-weight_reg[15:8];
	else
		green=8'd0;

always@(*)
	if(pixel[7:0]<=weight_reg[7:0])
		red=weight_reg[7:0]-pixel[7:0];
	else if(pixel[7:0]>=weight_reg[7:0])
		red=pixel[7:0]-weight_reg[7:0];
	else
		red=8'd0;

assign manhattan_distance=blue+green+red;

//assign tag={VEP_y,VEP_x};
   

always@(posedge clk or posedge rst)
	if(rst)
		weight_reg<=24'd0; 
	else if(weight_update) 
		weight_reg<=weight_initial;
	else
		weight_reg<=weight_reg;



endmodule
