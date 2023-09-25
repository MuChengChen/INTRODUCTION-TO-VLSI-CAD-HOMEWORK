module LFSR(
	input clk,
	input rst,
	//input [7:0] seed,
  //input seed_initial,
	//input update,
	input [7:0] lfsr_counter,
	input [1:0] state,
	output reg [23:0] d// d[0] = (d[7]^~d[5]) ^ (d[4] ^ ~d[3])
);

parameter LFSR_INITIAL=2'd0,
		  TRAIN=2'd1,
		  FIND_MIN=2'd2;

reg [7:0] d_l;

always@(posedge clk or posedge rst)
	if(rst)
		d_l<=8'd7;
	else if(state==LFSR_INITIAL)
		d_l<={d_l[6:0],((d_l[7]~^d_l[5])^(d_l[4]~^d_l[3]))};
	else
		d_l<=d_l;

always@(posedge clk or posedge rst)
	if(rst)
		d<={8'd7,16'd0};
	else if(state==LFSR_INITIAL && (lfsr_counter%3)==8'd0 )
		d<={d_l,d[15:0]};
	else if(state==LFSR_INITIAL && (lfsr_counter%3)==8'd1 )
		d<={d[23:16],d_l,d[7:0]};
	else if(state==LFSR_INITIAL && (lfsr_counter%3)==8'd2 )
		d<={d[23:8],d_l};
	else
		d<=d;

endmodule
