/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2023 Spring ---------------------- //
// ---------------------- Editor: Zhi-Yu Chen (Willy) ------------ //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2023.02    ---------------------- //
// ---------------------- det_1100          ---------------------- // 
/////////////////////////////////////////////////////////////////////
module det_seq(clk, rst, d, q, num);


input clk, rst;
input d;
output q;
output [2:0] num;

parameter IDLE=3'd0;
parameter FIRST=3'd1;
parameter SECOND=3'd2;
parameter THIRD=3'd3;
parameter FORTH=3'd4;
parameter FITH=3'd5;
parameter VALID=3'd6;

reg [2:0] state,next_state,num;
reg q;

always@(*)begin
	case(state)
		IDLE:next_state=FIRST;
		FIRST:next_state=(d)?SECOND:FIRST;
		SECOND:next_state=(d)?THIRD:FIRST;
		THIRD:next_state=(!d)?FORTH:THIRD;
		FORTH:next_state=(!d)?FITH:SECOND;
		FITH:next_state=(d)?VALID:FIRST;
		VALID:next_state=(d)?THIRD:FIRST;
		default:next_state=IDLE;
	endcase
end

always@(posedge clk or posedge rst)
	if(rst)
		state<=IDLE;
	else
		state<=next_state;

/*always@(posedge clk or posedge rst)
	if(rst)
		d_reg<=1'b0;
	else if(d)
		d_reg<=d;
	else
		d_reg<=1'b0;
*/
always@(posedge clk or posedge rst)
	if(rst)
		num<=3'd0;
	else if(state==VALID)
		num<=num+3'd1;
	else
		num<=num;

always@(*)begin
	case(state)
		VALID:q=1'b1;
		default:q=1'b0;
	endcase
end
	

endmodule






















