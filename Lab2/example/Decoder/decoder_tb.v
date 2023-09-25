`timescale 1ns/10ps
/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2023 Spring ---------------------- //
// ---------------------- Editor: Zhi-Yu Chen(Willy)---- --------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2023.02    ---------------------- //
// ---------------------- priority encoder  ---------------------- // 
/////////////////////////////////////////////////////////////////////

`include "decoder.v"

module decoder_tb;
  reg   I1,I0;
  wire  O3,O2,O1,O0;
  
  
  decoder decoder(.I1(I1),.I0(I0),.O3(O3),.O2(O2),.O1(O1),.O0(O0));
  
  integer i;
  
  initial begin
	{I1,I0} = 4'd0;
	
  	for (i = 0; i < 4; i = i + 1)begin
		#10 {I1,I0} = i;
		$monitor ("%d ns: input = %b%b, output = %b%b%b%b" , $time,I1,I0,O3,O2,O1,O0);
	end
	#10 $finish;
  end
 
initial begin
  `ifdef FSDB
    $fsdbDumpfile("decoder.fsdb");
    $fsdbDumpvars(0, decoder);
  `endif
end

endmodule
