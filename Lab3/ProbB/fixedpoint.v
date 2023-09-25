module fixedpoint(
	input [7:0] in1,// integer[7:5], decimal[4:0]
	input [7:0] in2,// integer[7:5], decimal[4:0]
	output reg [7:0] out// integer[7:2], decimal[1:0]
);

wire [15:0] raw_result=in1*in2;
always@(*)begin
	out=(raw_result[7])?raw_result[15:8]+8'b1:raw_result[15:8];
end
 

endmodule
