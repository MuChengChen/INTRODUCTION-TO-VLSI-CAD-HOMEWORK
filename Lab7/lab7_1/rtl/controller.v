module controller(
  input                 clk,
  input                 rst,
  input   [1:0]         mode,
  input            state,
  input            next_state,
  input            flag,
  //input   [24*64 - 1:0] weight,
  //input   [2:0]         winner_VEP_x,
  //input   [2:0]         winner_VEP_y,
  //output  reg      state1_counter,
  output  reg  [12:0]   pixel_counter,
  output                RAM_IF_OE,
  output                RAM_IF_WE,
  output  [17:0]        RAM_IF_A,
  output  [23:0]        RAM_IF_D,
  output                RAM_W_OE,
  output                RAM_W_WE,
  output  [17:0]        RAM_W_A,
  //output  [23:0]        RAM_W_D,
  output                RAM_PIC_OE,
  output                RAM_PIC_WE,
  output  [17:0]        RAM_PIC_A,
  output  reg  [1:0]    counter
  //output  [23:0]        RAM_PIC_D,
  //output                weight_update,
  //output                done
);

parameter //IDLE=2'd0,
		  TRAIN=1'd0,
		  FIND_MIN=1'd1;
		  //WRITE_TAG=3'd3,



//reg [5:0] code_counter;
//reg [12:0] pixel_counter;


assign RAM_IF_WE=1'b0;
assign RAM_IF_D=24'd0;
assign RAM_W_OE=1'b0;
assign RAM_PIC_OE=1'b0;
/*
always@(posedge clk or posedge rst)
	if(rst)
		code_counter<=6'd0;
	else if(state==LOAD_WEIGHT && state1_counter==2'd2)
		code_counter<=code_counter+6'd1;
	else if(state==LOAD_WEIGHT && state1_counter!=2'd2)
		code_counter<=code_counter;
	else
		code_counter<=6'd0;
*/

reg [12:0] pixel_counter_reg;

always@(*)begin
     case(mode)
	  2'd0:pixel_counter_reg = 13'd4095;
	  2'd1:pixel_counter_reg = 13'd63;
	  2'd2:pixel_counter_reg = 13'd4032;
	  2'd3:pixel_counter_reg = 13'd0;
	default: pixel_counter_reg = 13'd0;
     endcase
end


always @(posedge clk or posedge rst) begin
    if (rst) begin
      	pixel_counter<=13'd5000;
    end 
    else if(pixel_counter==13'd5000)
		pixel_counter<=pixel_counter_reg;
	else if (flag)
		pixel_counter <= 13'd0;
    else begin
        if (state == TRAIN  && next_state != FIND_MIN) begin
            case (mode)
                2'd0: pixel_counter <= (pixel_counter != 13'd0) ? pixel_counter - 13'd1 : 13'd0;
                2'd1: begin
                    if (pixel_counter[5:0] != 6'd0) 
                        pixel_counter <= pixel_counter - 13'd1;
                    else 
                        pixel_counter <= {pixel_counter[12:6] + 6'd1, 6'd63};
                end
                2'd2: begin
                    if (pixel_counter[5:0] != 6'd63)
                        pixel_counter <= pixel_counter + 13'd1;
                    else 
                        pixel_counter <= {pixel_counter[12:6] - 6'd1, 6'd0};
                end
                2'd3: pixel_counter <= pixel_counter + 13'd1;
            endcase
        end 
    	else if (state == FIND_MIN)
        	pixel_counter <= pixel_counter + 13'd1;
    	else 
        	pixel_counter <= pixel_counter;
    end
end

always @(posedge clk or posedge rst)
	if(rst)
		counter<=2'd0;
	else if(state == TRAIN && counter!=2'd2)
		counter<=counter+2'd1;
	else
		counter<=counter;

/*always@(posedge clk or posedge rst)
	if(rst)
		state1_counter<=1'd1;
	//else if(state== && state1_counter==2'd2)
	//	state1_counter<=2'd0;
	//else if((state==FIND_MIN || state==TRAIN) && state1_counter==1'd1)
	//	state1_counter<=1'd0;
	else 
		state1_counter<=state1_counter+1'd1;
*/
assign RAM_W_WE=(state==FIND_MIN && pixel_counter<=13'd63)?1'b1:1'b0;

//assign RAM_W_D=24'd0;

assign RAM_W_A=(pixel_counter<=13'd63)?{5'd0,pixel_counter}:18'd0;

assign RAM_IF_A={5'd0,pixel_counter};

assign RAM_IF_OE=1'b1;

assign RAM_PIC_WE=(state==FIND_MIN )?1'b1:1'b0;

assign RAM_PIC_A={5'd0,(pixel_counter-13'd1)};



endmodule
