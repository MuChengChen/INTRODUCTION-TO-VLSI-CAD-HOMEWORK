/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2023 Spring ---------------------- //
// ---------------------- Editor: Zhi-Yu Chen (Willy) ------------ //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2023.03    ---------------------- //
// ---------------------- pattern_gen       ---------------------- // 
/////////////////////////////////////////////////////////////////////


module pattern_gen(clk, rst, en, sel, pattern, valid);


input clk, rst;
input en;
input [1:0] sel;
output pattern;
output valid;

reg [2:0] state,next_state;
reg pattern,valid;

parameter IDLE=3'd0;
parameter FIRST=3'd1;
parameter SECOND=3'd2;
parameter THIRD=3'd3;
parameter FORTH=3'd4;
parameter ENDD=3'd5;
parameter LOW=3'd6;

always@(*)
	case(state)
		IDLE:next_state=(en)?FIRST:IDLE;
		FIRST:next_state=SECOND;
		SECOND:next_state=THIRD;
		THIRD:next_state=FORTH;
		FORTH:next_state=ENDD;
		ENDD:next_state=(!en)?LOW:ENDD;
		LOW:next_state=(en)?FIRST:LOW;
		default:next_state=IDLE;
	endcase

always@(posedge clk or posedge rst)
	if(rst)
		state<=IDLE;
	else
		state<=next_state;

always@(*)
	case(state)
		FIRST:pattern=1'b1;
		SECOND:pattern=1'b1;
		THIRD:pattern=sel[1];
		FORTH:pattern=sel[0];
		default:pattern=1'b0;
	endcase

always@(*)
	case(state)
		IDLE:valid=1'b0;
		ENDD:valid=1'b0;
		LOW:valid=1'b0;
		default:valid=1'b1;
	endcase

endmodule
