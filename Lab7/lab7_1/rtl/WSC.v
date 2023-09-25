module WSC(
	//input clk,
	//input rst,
	//{VEP63.manhattan_distance, VEP62.manhattan_distance, ... , VEP0.manhattan_distance}
	input  [639:0] VEPs_manhattan_distance,
	output [2:0] winner_x,
	output [2:0] winner_y
	//output reg valid
);

/*
reg [5:0] position1;


always@(posedge clk or posedge rst)
	if(rst)
		position1<=6'd0;
	else
		position1<=position1+6'd1;
		

always@(posedge clk or posedge rst)
	if(rst)
		winner_x<=3'd0;
	else if(VEPs_manhattan_distance[((position1<<3)+(position1<<1))+:10'd10]<=VEPs_manhattan_distance[{winner_y,winner_x}+:10'd10])
		winner_x<=position1[2:0];
	else
		winner_x<=winner_x;

always@(posedge clk or posedge rst)
	if(rst)
		winner_y<=3'd0;
	else if(VEPs_manhattan_distance[((position1<<3)+(position1<<1))+:10'd10]<=VEPs_manhattan_distance[{winner_y,winner_x}+:10'd10])
		winner_y<=position1[5:3];
	else
		winner_y<=winner_y;	


always@(posedge clk or posedge rst)
	if(rst)
		valid<=1'b0;
	else if(position1==6'd63)
		valid<=1'b1;
	else
		valid<=1'b0;
*/

wire [5:0] s1 [31:0];
wire [5:0] s2 [15:0];
wire [5:0] s3 [7:0];
wire [5:0] s4 [3:0];
wire [5:0] s5 [1:0];



generate
	genvar a;
	//wire [4:0] aa [31:0];
	for(a=0;a<64;a=a+2)begin:GEN1
		//assign aa[a]=a;
		assign s1[a>>1]=(VEPs_manhattan_distance[(10*(a+1))+:10]<VEPs_manhattan_distance[(10*(a))+:10])?(a+1):(a);
	end
endgenerate

generate
	genvar b;
	for(b=0;b<32;b=b+2)begin:GEN2
		assign s2[b>>1]=(VEPs_manhattan_distance[(10*(s1[b+1]))+:10]<VEPs_manhattan_distance[(10*(s1[b]))+:10])?s1[b+1]:s1[b];
	end
endgenerate

generate
	genvar c;
	for(c=0;c<16;c=c+2)begin:GEN3
		assign s3[c>>1]=(VEPs_manhattan_distance[(10*(s2[c+1]))+:10]<VEPs_manhattan_distance[(10*(s2[c]))+:10])?s2[c+1]:s2[c];
	end
endgenerate

generate
	genvar d;
	for(d=0;d<8;d=d+2)begin:GEN4
		assign s4[d>>1]=(VEPs_manhattan_distance[(10*(s3[d+1]))+:10]<VEPs_manhattan_distance[(10*(s3[d]))+:10])?s3[d+1]:s3[d];
	end
endgenerate

generate
	genvar e;
	for(e=0;e<4;e=e+2)begin:GEN5
		assign s5[e>>1]=(VEPs_manhattan_distance[(10*(s4[e+1]))+:10]<VEPs_manhattan_distance[(10*(s4[e]))+:10])?s4[e+1]:s4[e];
	end
endgenerate

assign winner_x=(VEPs_manhattan_distance[(10*(s5[1]))+:10]<VEPs_manhattan_distance[(10*(s5[0]))+:10])?s5[1][2:0]:s5[0][2:0];
assign winner_y=(VEPs_manhattan_distance[(10*(s5[1]))+:10]<VEPs_manhattan_distance[(10*(s5[0]))+:10])?s5[1][5:3]:s5[0][5:3];

endmodule
