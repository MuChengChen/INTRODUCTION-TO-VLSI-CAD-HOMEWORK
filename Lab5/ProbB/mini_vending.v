/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2023 Spring ---------------------- //
// ---------------------- Editor: Zhi-Yu Chen (Willy) ------------ //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2023.03    ---------------------- //
// ---------------------- mini_vending      ---------------------- // 
/////////////////////////////////////////////////////////////////////

module mini_vending(clk, rst, en, money, beverage, change, finish);

input             clk, rst;
input             en;
input       [5:0] money, beverage;
output      [5:0] change;
output        finish;
  
parameter IDLE=2'd0;
parameter MONEY=2'd1;
parameter BAVERAGE=2'd2;
parameter CHANGE=2'd3; 

reg [1:0] state,next_state;

reg [5:0] money_reg,change;

reg finish;

always@(*)
	case(state)
		IDLE:next_state=MONEY;
		MONEY:next_state=(en)?BAVERAGE:MONEY;
		BAVERAGE:next_state=(!en)?CHANGE:BAVERAGE;
		CHANGE:next_state=MONEY;

	endcase

always@(posedge clk or posedge rst)
	if(rst)
		state<=IDLE;
	else
		state<=next_state;

always@(posedge clk or posedge rst)
	if(rst)
		money_reg<=6'd0;
	else if(en)
		money_reg<=money;
	else if(state==BAVERAGE)
		money_reg<=money_reg-beverage;
	else
		money_reg<=money_reg;

always@(*)
	case(state)
		CHANGE:finish=1'b1;
		default:finish=1'b0;
	endcase

always@(*)
	case(state)
		CHANGE:change=money_reg;
		default:change=6'd0;
	endcase

endmodule
