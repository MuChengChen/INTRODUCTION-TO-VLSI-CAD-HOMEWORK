module top(
	input clk,
	input rst,
	input set_reg,
	input color_val,
	input data_val,
	input [23:0] color,
	input [23:0] data,
	output reg [9:0] d,
	output reg [2:0] index
);

reg [23:0] color_reg [7:0];
reg [2:0] counter,counter_reg,clk_num;
reg data_val_flag;
reg [23:0] data_reg;
reg [7:0] blue,green,red;



integer i;

always@(*)
	if(data_val && color_reg[counter][23:16]<=data[23:16])
		blue=data[23:16]-color_reg[counter][23:16];
	else if(data_val_flag && color_reg[counter][23:16]<=data_reg[23:16])
		blue=data_reg[23:16]-color_reg[counter][23:16];
	else if(data_val && color_reg[counter][23:16]>=data[23:16])
		blue=color_reg[counter][23:16]-data[23:16];
	else if(data_val_flag && color_reg[counter][23:16]>=data_reg[23:16])
		blue=color_reg[counter][23:16]-data_reg[23:16];
	else
		blue=8'b0;

always@(*)
	if(data_val && color_reg[counter][15:8]<=data[15:8])
		green=data[15:8]-color_reg[counter][15:8];
	else if(data_val_flag && color_reg[counter][15:8]<=data_reg[15:8])
		green=data_reg[15:8]-color_reg[counter][15:8];
	else if(data_val && color_reg[counter][15:8]>=data[15:8])
		green=color_reg[counter][15:8]-data[15:8];
	else if(data_val_flag && color_reg[counter][15:8]>=data_reg[15:8])
		green=color_reg[counter][15:8]-data_reg[15:8];
	else
		green=8'b0;

always@(*)
	if(data_val && color_reg[counter][7:0]<=data[7:0])
		red=data[7:0]-color_reg[counter][7:0];
	else if(data_val_flag && color_reg[counter][7:0]<=data_reg[7:0])
		red=data_reg[7:0]-color_reg[counter][7:0];
	else if(data_val && color_reg[counter][7:0]>=data[7:0])
		red=color_reg[counter][7:0]-data[7:0];
	else if(data_val_flag && color_reg[counter][7:0]>=data_reg[7:0])
		red=color_reg[counter][7:0]-data_reg[7:0];
	else
		red=8'b0;

wire [9:0] result_data=blue+green+red;



always@(posedge clk or posedge rst)
	if(rst)
		for(i=0;i<=7;i=i+1)
			color_reg[i]<=24'b0;
	else if(set_reg && color_val)
		color_reg[counter]<=color;
	else
		for(i=0;i<=7;i=i+1)
			color_reg[i]<=color_reg[i];
		
always@(posedge clk or posedge rst)
	if(rst)
		counter<=3'b0;
	else if(set_reg && color_val && ~&counter)
		counter<=counter+3'b1;
	else if(data_val_flag && counter!=3'b0)
		counter<=counter-3'b1;
	else if(&clk_num)
		counter<=counter_reg;
	else
		counter<=counter;

always@(posedge clk or posedge rst)
	if(rst)
		counter_reg<=3'b0;
	else if(data_val)
		counter_reg<=counter;
	else
		counter_reg<=counter_reg;

always@(posedge clk or posedge rst)
	if(rst)
		clk_num<=3'b0;
	else if(data_val_flag)
		clk_num<=clk_num+3'b1;
	else
		clk_num<=clk_num;

always@(posedge clk or posedge rst)
	if(rst)
		data_val_flag<=1'b0;
	else if(data_val)
		data_val_flag<=1'b1;
	else if(&clk_num)
		data_val_flag<=1'b0;
	else
		data_val_flag<=data_val_flag;

always@(posedge clk or posedge rst)
	if(rst)
		data_reg<=24'b0;
	else if(data_val)
		data_reg<=data;
	else
		data_reg<=data_reg;
	
always@(posedge clk or posedge rst)
	if(rst)
		d<=10'b0;
	/*else if(clk_num==7)
		d<=10'b0;*/
	else if(data_val)
		d<=result_data;
	else if(data_val_flag && d>=result_data)
		d<=result_data;
	else
		d<=d;
	
always@(posedge clk or posedge rst)
	if(rst)
		index<=3'b0;
	/*else if(clk_num==7)
		index<=3'b0;*/
	else if(data_val)
		index<=counter;
	else if(data_val_flag && d>=result_data)
		index<=counter;
	else
		index<=index;

endmodule
