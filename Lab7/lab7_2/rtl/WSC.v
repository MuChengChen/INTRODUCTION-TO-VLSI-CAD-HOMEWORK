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
	for(a=0;a<32;a=a+1)begin:GEN1
		//assign aa[a]=a;
		assign s1[a]=(VEPs_manhattan_distance[(10*(a*2+1))+:10]<VEPs_manhattan_distance[(10*(a*2))+:10])?(a*2+1):(a*2);
	end
endgenerate

generate
	genvar b;
	for(b=0;b<16;b=b+1)begin:GEN2
		assign s2[b]=(VEPs_manhattan_distance[(10*(s1[b*2+1]))+:10]<VEPs_manhattan_distance[(10*(s1[b*2]))+:10])?s1[b*2+1]:s1[b*2];
	end
endgenerate

generate
	genvar c;
	for(c=0;c<8;c=c+1)begin:GEN3
		assign s3[c]=(VEPs_manhattan_distance[(10*(s2[c*2+1]))+:10]<VEPs_manhattan_distance[(10*(s2[c*2]))+:10])?s2[c*2+1]:s2[c*2];
	end
endgenerate

generate
	genvar d;
	for(d=0;d<4;d=d+1)begin:GEN4
		assign s4[d]=(VEPs_manhattan_distance[(10*(s3[d*2+1]))+:10]<VEPs_manhattan_distance[(10*(s3[d*2]))+:10])?s3[d*2+1]:s3[d*2];
	end
endgenerate

generate
	genvar e;
	for(e=0;e<2;e=e+1)begin:GEN5
		assign s5[e]=(VEPs_manhattan_distance[(10*(s4[e*2+1]))+:10]<VEPs_manhattan_distance[(10*(s4[e*2]))+:10])?s4[e*2+1]:s4[e*2];
	end
endgenerate

assign winner_x=(VEPs_manhattan_distance[(10*(s5[1]))+:10]<VEPs_manhattan_distance[(10*(s5[0]))+:10])?s5[1][2:0]:s5[0][2:0];
assign winner_y=(VEPs_manhattan_distance[(10*(s5[1]))+:10]<VEPs_manhattan_distance[(10*(s5[0]))+:10])?s5[1][5:3]:s5[0][5:3];

endmodule
