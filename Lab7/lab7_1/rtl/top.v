//`include "LFSR.v"
`include "../rtl/VEP.v"
`include "../rtl/WSC.v"
`include "../rtl/controller.v"

module top(
  input          clk,
  input          rst,
  input  [ 1:0]  mode,
  input  [23:0]  RAM_IF_Q,
  input  [23:0]  RAM_W_Q,
  input  [23:0]  RAM_PIC_Q,
  output         RAM_IF_OE,
  output         RAM_IF_WE,
  output [17:0]  RAM_IF_A,
  output [23:0]  RAM_IF_D,
  output         RAM_W_OE,
  output         RAM_W_WE,
  output [17:0]  RAM_W_A,
  output [23:0]  RAM_W_D,
  output         RAM_PIC_OE,
  output         RAM_PIC_WE,
  output [17:0]  RAM_PIC_A,
  output [23:0]  RAM_PIC_D,
  output         done
);

parameter         //IDLE=2'd0,
		  TRAIN=1'd0,
		  FIND_MIN=1'd1;
		  //WRITE_TAG=3'd3,
	

reg  state,next_state;
reg  flag;

//reg [23:0] codebook [63:0];
//reg [1:0] state2_counter;

wire [9:0] seg [63:0];
wire [639:0] total;
wire [2:0] winner_x,winner_y;
//wire  state1_counter;
wire [12:0] pixel_counter;
//wire valid;
wire [23:0] weight [63:0];
wire [1:0] counter;

wire weight_update=(state==TRAIN && counter==2'd2);


always@(*)begin
	case(state)
		//IDLE:next_state=LOAD_WEIGHT;
		//IDLE:next_state=(rst)?IDLE:TRAIN;
		TRAIN:next_state=(flag)?FIND_MIN:TRAIN;
		FIND_MIN:next_state=FIND_MIN;
		//WRITE_TAG:next_state=(done)?FINISH:FIND_MIN;
		//FINISH:next_state=FINISH;
		default:next_state=FIND_MIN;
	endcase
end

always@(posedge clk or posedge rst)
	if(rst)
		state<=1'd0;
	else 
		state<=next_state;

always@(posedge clk or posedge rst)
	if(rst)
		flag<=1'd0;
	else if(((mode==2'd0 && pixel_counter==18'd0) || (mode==2'd1 && pixel_counter==18'd4032) || (mode==2'd2 && pixel_counter==18'd63) || (mode==2'd3 && pixel_counter==18'd4095)) && state==TRAIN)
		flag<=1'd1;
	else
		flag<=1'd0;


controller controller(
		  .clk(clk),
  		  .rst(rst),
		  .mode(mode),
		  .state(state),
		  .next_state(next_state),
		  .flag(flag),
		  //.state1_counter(state1_counter),
		  .pixel_counter(pixel_counter),
  		  .RAM_IF_OE(RAM_IF_OE),
  		  .RAM_IF_WE(RAM_IF_WE), //always zero
  		  .RAM_IF_A(RAM_IF_A),
  		  .RAM_IF_D(RAM_IF_D), //always zero
  		  .RAM_W_OE(RAM_W_OE),
  		  .RAM_W_WE(RAM_W_WE), //always zero
  		  .RAM_W_A(RAM_W_A),
  		  //.RAM_W_D(RAM_W_D), //always zero
          .RAM_PIC_OE(RAM_PIC_OE),
  		  .RAM_PIC_WE(RAM_PIC_WE),
  		  .RAM_PIC_A(RAM_PIC_A),
		  .counter(counter)
		  //.RAM_PIC_D(RAM_PIC_D),
  		  //.write_vep(write_vep),
  		  //.done(done)
		);

WSC WSC(
	//.clk(clk),
	//.rst(rst),
	.VEPs_manhattan_distance(total),
	.winner_x(winner_x),
	.winner_y(winner_y)
	//.valid(valid)
	);

generate
	genvar i;
	for(i=0;i<64;i=i+1)begin:VEP_GEN
		VEP VEP(
			.clk(clk),
  			.rst(rst),
  			.VEP_x(i[2:0]),
  			.VEP_y(i[5:3]),
			.winner_VEP_x(winner_x),
			.winner_VEP_y(winner_y),
  			.pixel(RAM_IF_Q),
  			//.weight_initial(24'b011111010111110101111101),
  			.weight_update(weight_update),
			//.state1_counter(state1_counter),
  			.weight(weight[i]),
  			.manhattan_distance(seg[i])
		);
		assign total[(10*i)+:10]=seg[i];
	end
endgenerate

/*
always@(posedge clk or posedge rst)
	if(rst)
		for(k=0;k<64;k=k+1)
			codebook[k]<=24'b011111010111110101111101;
	else if(state==LOAD_WEIGHT)
		codebook[RAM_W_A]<=RAM_W_Q[23:0];
	else
		for(k=0;k<64;k=k+1)
			codebook[k]<=codebook[k];
*/
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
wire [5:0] xy  ={winner_y,winner_x};
assign RAM_PIC_D=weight[xy];

assign RAM_W_D=(pixel_counter<=13'd63)?weight[pixel_counter[5:0]]:24'd0;
assign done=(pixel_counter==13'd4097 )?1'b1:1'b0;

endmodule
