module register(
	input clk,
	input rst,
	input reg_write,
	input [5:0] src1_addr,
	input [5:0] src2_addr,
	input [5:0] write_addr,
	input [31:0] write_data,
	output reg [31:0] src1,
	output reg [31:0] src2
);

reg [31:0] REG_FILE[63:0];
integer i;

always@(posedge clk or posedge rst)
	if(rst)
		src1<=32'b0;
	else if(!reg_write)
		src1<=REG_FILE[src1_addr];
	else
		src1<=src1;

always@(posedge clk or posedge rst)
	if(rst)
		src2<=32'b0;
	else if(!reg_write)
		src2<=REG_FILE[src2_addr];
	else
		src2<=src2;
		
always@(posedge clk or posedge rst)
	if(rst)
		for (i=0;i<=63;i=i+1)
			REG_FILE[i]<=32'b0;
	else if(reg_write)
		REG_FILE[write_addr]<=write_data;
	else
		for (i=0;i<=63;i=i+1)
			REG_FILE[i]<=REG_FILE[i];

endmodule
