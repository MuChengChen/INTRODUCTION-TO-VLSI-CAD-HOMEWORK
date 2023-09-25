module controller(
  input                 clk,
  input                 rst,
  input   [2:0]         state,  
  //input   [1:0]         mode,
  //input   [24*64 - 1:0] weight,
  //input   [2:0]         winner_VEP_x,
  //input   [2:0]         winner_VEP_y,
  output  reg [1:0]         state1_counter,
  output                RAM_IF_OE,
  output                RAM_IF_WE, //always zero
  output  [17:0]        RAM_IF_A,
  output  [23:0]        RAM_IF_D, //always zero
  output                RAM_W_OE,
  output                RAM_W_WE, //always zero
  output  [17:0]        RAM_W_A,
  output  [23:0]        RAM_W_D, //always zero
  output                RAM_TAG_OE,
  output                RAM_TAG_WE,
  output  [17:0]        RAM_TAG_A,
  //output  [23:0]        RAM_TAG_D,
  //output  [63:0]        write_vep,
  output                done
);

parameter IDLE=3'd0,
		  LOAD_WEIGHT=3'd1,
		  FIND_MIN=3'd2,
		  WRITE_TAG=3'd3,
		  FINISH=3'd4;

//reg [5:0] code_counter;
reg [11:0] pixel_counter;


assign RAM_IF_WE=1'b0;
assign RAM_IF_D=24'd0;
assign RAM_W_WE=1'b0;
assign RAM_W_D=24'd0;
assign RAM_TAG_OE=1'b0;
/*
always@(posedge clk or posedge rst)
	if(rst)
		code_counter<=6'd0;
	else if(state==LOAD_WEIGHT && state1_counter==2'd2)
		code_counter<=code_counter+6'd1;
	else if(state==LOAD_WEIGHT && state1_counter!=2'd2)
		code_counter<=code_counter;
	else
		code_counter<=6'd0;
*/


always@(posedge clk or posedge rst)
	if(rst)
		pixel_counter<=12'd0;
	else if(state==LOAD_WEIGHT && state1_counter==2'd2 && pixel_counter==12'd63)
		pixel_counter<=12'd0;
	else if(state==LOAD_WEIGHT && state1_counter==2'd2)
		pixel_counter<=pixel_counter+12'd1;
	else if(state==WRITE_TAG )
		pixel_counter<=pixel_counter+12'd1;
	else
		pixel_counter<=pixel_counter;

always@(posedge clk or posedge rst)
	if(rst)
		state1_counter<=2'd0;
	else if(state1_counter==2'd2)
		state1_counter<=2'd0;
	else if(state==LOAD_WEIGHT || state==FIND_MIN)
		state1_counter<=state1_counter+2'd1;
	else
		state1_counter<=2'd0;

assign RAM_W_A=(pixel_counter<=12'd63)?{6'd0,pixel_counter}:18'd0;

assign RAM_IF_A={6'd0,pixel_counter};

assign RAM_IF_OE=1'b1;

assign RAM_W_OE=(state==LOAD_WEIGHT)?1'b1:1'b0;

assign RAM_TAG_WE=(state==WRITE_TAG)?1'b1:1'b0;

assign RAM_TAG_A={6'd0,pixel_counter};

assign done=(pixel_counter==12'd4095 && state==WRITE_TAG)?1'b1:1'b0;
		

endmodule
