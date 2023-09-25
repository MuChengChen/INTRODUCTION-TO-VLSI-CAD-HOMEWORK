
module top(
	input clk,
	input rst,
	//RAM codebook
	input [23:0] RAM_W_Q,
	output [23:0] RAM_W_D,
	output [19:0] RAM_W_A,
	output  RAM_W_WE,
	output RAM_W_OE,
	//RAM TAG
	input [23:0] RAM_TAG_Q,
	output [23:0] RAM_TAG_D,
	output [19:0] RAM_TAG_A,
	output RAM_TAG_WE,
	output RAM_TAG_OE,
	//RAM Result picture
	input [23:0] RAM_PIC_Q,
	output [23:0] RAM_PIC_D,
	output [19:0] RAM_PIC_A,
	output RAM_PIC_WE,
	output RAM_PIC_OE,
	//controller
	output done
);

reg [1:0] wait_counter;
reg [11:0] pixel_counter;

assign 	RAM_W_WE=1'b0;
assign  RAM_W_OE=1'b1;
assign  RAM_W_D=24'd0;
assign  RAM_W_A=RAM_TAG_Q[19:0];
assign  RAM_TAG_WE=1'b0;
assign  RAM_TAG_OE=1'b1;
assign  RAM_TAG_D=24'd0;
assign  RAM_TAG_A={8'd0,pixel_counter};
assign  RAM_PIC_WE=(wait_counter==2'd2)?1'b1:1'b0;
assign  RAM_PIC_OE=1'b0;
assign  RAM_PIC_D=RAM_W_Q;
assign  RAM_PIC_A={8'd0,pixel_counter};
assign  done=(wait_counter==2'd2 && pixel_counter==12'd4095)?1'b1:1'b0;

always@(posedge clk or posedge rst)
	if(rst)
		wait_counter<=2'd0;
	else if(wait_counter==2'd2)
		wait_counter<=2'd0;
	else
		wait_counter<=wait_counter+2'd1;

always@(posedge clk or posedge rst)
	if(rst)
		pixel_counter<=12'd0;
	else if(wait_counter==2'd2)
		pixel_counter<=pixel_counter+12'd1;
	else
		pixel_counter<=pixel_counter;
	
endmodule