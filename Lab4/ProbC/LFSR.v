module LFSR(
	input clk,
	input rst,
	input seed_val,
	input [7:0] seed,//if rst=1, d=8'd0
	output reg [7:0] d// d[0] = (d[7]^~d[5]) ^ (d[4] ^ ~d[3])
);

always@(posedge clk or posedge rst)
	if(rst)
		d<=8'b0;
	else if(seed_val)
		d<=seed;
	else if(!seed_val)
		d<={d[6:0],((d[7]~^d[5])^(d[4]~^d[3]))};
	else
		d<=d;

endmodule
