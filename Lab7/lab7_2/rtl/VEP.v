/*
* Hint
sigal explanation:
1.  clk                : This is a positive edge-triggered clock signal.
2.  rst                : This is a reset signal.
3.  VEP_x              : The x-coordinate of this VEP.
4.  VEP_y              : The y-coordinate of this VEP.
5.  winner_VEP_x       : The VEP_x value with the minimum Manhattan distance.
6.  winner_VEP_y       : The VEP_y value with the minimum Manhattan distance.
7.  pixel              : Same as RAM_IF_Q, includes {R, G, B} channels with 8 bits in each channel.
8.  weight_initial    : The initial value given by LFSR, contained {R, G, B} channels.
9.  weight_update     : An enable signal from the controller that tells the weight in each VEP to be updated.
10. weight            : The value of the VEP's weight register.
11. manhattan_distance : For example, the Manhattan distance between (125, 80, 27) and (110, 70, 34) is |125-110|+|80-70|+|27-34|=32.

In short, there are 2 phases in SOM operation, the first phase is the training phase, 
which updating the weight through unsupervised training.
Second phase is recall phase, in the phase we need to select the weight closest to input pixel
as the winner weight. Be careful not to update the weights at this phase.

<TRAINING PHASE>
step1 : Split each pixel into 3 channels,so does the weight.
step2 : Calculate manhattan distance of each VEP.
step3 : Use WSC.v to find the x,y-coordinate with minimum manhattan distance,in other words,WSC.v is used to find the winner_VEP_x,y. 
step4 : Use VEP_x, VEP_y, winner_VEP_x and winner_VEP_y to select corresponding neighbor function.
step5 : Update the weight by setting weight_update to high.
step6 : repeat step1 to step 5 until all pixels of image are traversed.

<RECALL PHASE>
step1 : Split each pixel into 3 channels, so does the weight.
step2 : Traversed all VEP's and find the VEP closest(manhattan distance) to input pixel.
step3 : Output winner VEP's weight(RAM_W_D) to testbench.
step4 : Repeat step1 to step4 until all pixels of image are traversed.
*/
module VEP(
  input              clk,
  input              rst,
  input  [      2:0] VEP_x,
  input  [      2:0] VEP_y,
  input  [      2:0] winner_VEP_x,
  input  [      2:0] winner_VEP_y,
  input  [8*3 - 1:0] pixel,
  input  [8*3 - 1:0] weight_initial,
  input  [1:0]       state,
  //input 			 weight_initial_en,
  input              weight_update,
  input  [7:0]       lfsr_counter,
  output reg [8*3 - 1:0] weight,
  output [      9:0] manhattan_distance//manhattan distance, add 2 extension bits to prevent overflow
);

parameter LFSR_INITIAL=2'd0,
		  TRAIN=2'd1,
		  FIND_MIN=2'd2;

//reg [23:0] weight_reg;
wire [7:0] blue,blue_sbf,blue_sbb,green,green_sbf,green_sbb,red,red_sbf,red_sbb;
reg signed [8:0] weight_b2,weight_g2,weight_r2;

assign blue_sbf=(pixel[23:16]<=weight[23:16])?weight[23:16]:pixel[23:16];
assign blue_sbb=(pixel[23:16]<=weight[23:16])?pixel[23:16]:weight[23:16];
assign green_sbf=(pixel[15:8]<=weight[15:8])?weight[15:8]:pixel[15:8];
assign green_sbb=(pixel[15:8]<=weight[15:8])?pixel[15:8]:weight[15:8];
assign red_sbf=(pixel[7:0]<=weight[7:0])?weight[7:0]:pixel[7:0];
assign red_sbb=(pixel[7:0]<=weight[7:0])?pixel[7:0]:weight[7:0];

assign blue=blue_sbf-blue_sbb;
assign green=green_sbf-green_sbb;
assign red=red_sbf-red_sbb;

assign manhattan_distance=blue+green+red;
/*
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
*/


//assign tag={VEP_y,VEP_x};

wire [2:0] Ax=(VEP_x>=winner_VEP_x)?VEP_x-winner_VEP_x:winner_VEP_x-VEP_x;
wire [2:0] Ay=(VEP_y>=winner_VEP_y)?VEP_y-winner_VEP_y:winner_VEP_y-VEP_y;

wire signed [8:0] weight_b=(pixel[23:16]-weight[23:16]);
wire signed [8:0] weight_b1=weight_b>>>2;
wire signed [8:0] weight_B=weight[23:16]+weight_b2;
wire signed [8:0] weight_g=(pixel[15:8]-weight[15:8]);
wire signed [8:0] weight_g1=weight_g>>>2;
wire signed [8:0] weight_G=weight[15:8]+weight_g2;
wire signed [8:0] weight_r=(pixel[7:0]-weight[7:0]);
wire signed [8:0] weight_r1=weight_r>>>2;
wire signed [8:0] weight_R=weight[7:0]+weight_r2;
   
always@(*)
	if(VEP_x==winner_VEP_x && VEP_y==winner_VEP_y)
		weight_b2=weight_b1;
	else if((VEP_x==winner_VEP_x && Ay==3'd1) || (VEP_y==winner_VEP_y && Ax==3'd1))
		weight_b2=weight_b1>>>1;
	else if((VEP_x==winner_VEP_x && Ay==3'd2) || (VEP_y==winner_VEP_y && Ax==3'd2) || (Ay==3'd1 && Ax==3'd1))
		weight_b2=weight_b1>>>2;
	else
		weight_b2=9'd0;

always@(*)
	if(VEP_x==winner_VEP_x && VEP_y==winner_VEP_y)
		weight_g2=weight_g1;
	else if((VEP_x==winner_VEP_x && Ay==3'd1) || (VEP_y==winner_VEP_y && Ax==3'd1))
		weight_g2=weight_g1>>>1;
	else if((VEP_x==winner_VEP_x && Ay==3'd2) || (VEP_y==winner_VEP_y && Ax==3'd2) || (Ay==3'd1 && Ax==3'd1))
		weight_g2=weight_g1>>>2;
	else
		weight_g2=9'd0;

always@(*)
	if(VEP_x==winner_VEP_x && VEP_y==winner_VEP_y)
		weight_r2=weight_r1;
	else if((VEP_x==winner_VEP_x && Ay==3'd1) || (VEP_y==winner_VEP_y && Ax==3'd1))
		weight_r2=weight_r1>>>1;
	else if((VEP_x==winner_VEP_x && Ay==3'd2) || (VEP_y==winner_VEP_y && Ax==3'd2) || (Ay==3'd1 && Ax==3'd1))
		weight_r2=weight_r1>>>2;
	else
		weight_r2=9'd0;


always@(posedge clk or posedge rst)
	if(rst)
		weight<=24'b011111010111110101111101; 
	else if(state==LFSR_INITIAL && weight_update && ((lfsr_counter/3)-8'd1)=={VEP_y,VEP_x})
		weight<=weight_initial;
	else if(state==TRAIN && weight_update)
		weight<={weight_B[7:0],weight_G[7:0],weight_R[7:0]};
	else
		weight<=weight;
endmodule
