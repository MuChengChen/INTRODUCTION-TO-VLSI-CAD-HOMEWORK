/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2023 Spring   -------------------- //
// ---------------------   Editor : Anson     ---------------------//
// --------------------    Date : 2023.03     -------------------- //
// -------------------- Lab6_1 Image Compress -------------------- // 
/////////////////////////////////////////////////////////////////////
`include "VEP.v"
`include "WSC.v"
`include "controller.v"

module top(
  input          clk,
  input          rst,
  input  [23:0]  RAM_IF_Q,
  input  [23:0]  RAM_W_Q,
  input  [23:0]  RAM_TAG_Q,
  output         RAM_IF_OE,
  output         RAM_IF_WE,//always zero
  output [17:0]  RAM_IF_A,
  output [23:0]  RAM_IF_D,//always zero
  output         RAM_W_OE,
  output         RAM_W_WE,//always zero
  output [17:0]  RAM_W_A,
  output [23:0]  RAM_W_D,//always zero
  output         RAM_TAG_OE,
  output         RAM_TAG_WE,
  output [17:0]  RAM_TAG_A,
  output [23:0]  RAM_TAG_D,
  output         done
);

parameter IDLE=3'd0,
		  LOAD_WEIGHT=3'd1,
		  FIND_MIN=3'd2,
		  WRITE_TAG=3'd3,
		  FINISH=3'd4;

reg [2:0] state,next_state;
reg [23:0] codebook [63:0];
//reg [1:0] state2_counter;

wire [9:0] seg [63:0];
wire [639:0] total;
wire [2:0] winner_x,winner_y;
wire [1:0] state1_counter;
//wire valid;

integer k;

always@(*)begin
	case(state)
		IDLE:next_state=LOAD_WEIGHT;
		LOAD_WEIGHT:next_state=(RAM_W_A==18'd63 && state1_counter==2'd2)?FIND_MIN:LOAD_WEIGHT;
		FIND_MIN:next_state=(state1_counter==2'd2)?WRITE_TAG:FIND_MIN;
		WRITE_TAG:next_state=(done)?FINISH:FIND_MIN;
		FINISH:next_state=FINISH;
		default:next_state=IDLE;
	endcase
end

always@(posedge clk or posedge rst)
	if(rst)
		state<=3'd0;
	else 
		state<=next_state;



generate
	genvar i;
	for(i=0;i<64;i=i+1)begin:VEP_GEN
		VEP VEP(
			.clk(clk),
  			.rst(rst),
  			//.VEP_x(i%8),
  			//.VEP_y(i/8),
  			.pixel(RAM_IF_Q),
  			.weight_initial(codebook[i]),
  			.weight_update(RAM_W_OE),
  			//.tag(),
  			.manhattan_distance(seg[i])
		);
		assign total[(10*i)+:10]=seg[i];
	end
endgenerate


controller controller(
		  .clk(clk),
  		  .rst(rst),
		  .state(state),
		  .state1_counter(state1_counter),
  		  .RAM_IF_OE(RAM_IF_OE),
  		  .RAM_IF_WE(RAM_IF_WE), //always zero
  		  .RAM_IF_A(RAM_IF_A),
  		  .RAM_IF_D(RAM_IF_D), //always zero
  		  .RAM_W_OE(RAM_W_OE),
  		  .RAM_W_WE(RAM_W_WE), //always zero
  		  .RAM_W_A(RAM_W_A),
  		  .RAM_W_D(RAM_W_D), //always zero
          .RAM_TAG_OE(RAM_TAG_OE),
  		  .RAM_TAG_WE(RAM_TAG_WE),
  		  .RAM_TAG_A(RAM_TAG_A),
  		  //.write_vep(write_vep),
  		  .done(done)
		);

WSC WSC(
	//.clk(clk),
	//.rst(rst),
	.VEPs_manhattan_distance(total),
	.winner_x(winner_x),
	.winner_y(winner_y)
	//.valid(valid)
	);


always@(posedge clk or posedge rst)
	if(rst)
		for(k=0;k<64;k=k+1)
			codebook[k]<=24'd0;
	else if(state==LOAD_WEIGHT)
		codebook[RAM_W_A]<=RAM_W_Q[23:0];
	else
		for(k=0;k<64;k=k+1)
			codebook[k]<=codebook[k];
/*
always@(posedge clk or posedge rst)
	if(rst)
		state2_counter<=2'd0;
	else if(state==FIND_MIN)
		state2_counter<=state2_counter+2'd1;
	else if(state2_counter==2'd2)
		state2_counter<=2'd0;
	else
		state2_counter<=2'd0;
*/	
assign RAM_TAG_D={18'b0,winner_y,winner_x};


endmodule
