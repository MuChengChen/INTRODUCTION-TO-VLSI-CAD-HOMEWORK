module fixedpoint_s(
	input [7:0] in1,// signed integer[7:4], decimal[3:0]
	input [7:0] in2,// signed integer[7:4], decimal[3:0]
	output reg [7:0] out// 8 bit signed integer[7:0]
);

wire signed [7:0] in1_s=in1;
wire signed [7:0] in2_s=in2;

wire signed [15:0] raw_result_s=in1_s*in2_s;

wire signed [15:0] raw_result_s_twos=(~raw_result_s)+16'b1;
wire signed [7:0] raw_result_s_twos_add=raw_result_s_twos[15:8]+8'b1;
wire signed [7:0] raw_result_s_twos_add_twos=(~raw_result_s_twos_add)+8'b1;
wire signed [15:0] zero;
assign zero=16'b0;

always@(*)begin
	if(raw_result_s_twos[7] && raw_result_s<zero)
		out=raw_result_s_twos_add_twos;
	else if(raw_result_s[7] && raw_result_s>zero)
		out=raw_result_s[15:8]+8'b1;
	else
		out=raw_result_s[15:8];
	
end

endmodule
