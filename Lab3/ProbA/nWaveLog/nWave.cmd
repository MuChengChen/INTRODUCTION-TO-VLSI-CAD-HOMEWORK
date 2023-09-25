wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/user2/vlsi23/vlsi23100/Lab3/ProbA/ALU.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ALU_tb"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ALU_tb/alu/alu_op\[4:0\]} \
{/ALU_tb/alu/alu_out\[31:0\]} \
{/ALU_tb/alu/alu_overflow} \
{/ALU_tb/alu/src1\[31:0\]} \
{/ALU_tb/alu/src1_s\[31:0\]} \
{/ALU_tb/alu/src1_s_add_src2_s\[31:0\]} \
{/ALU_tb/alu/src1_s_sub_src2_s\[31:0\]} \
{/ALU_tb/alu/src2\[31:0\]} \
{/ALU_tb/alu/src2_s\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ALU_tb/alu/alu_op\[4:0\]} \
{/ALU_tb/alu/alu_out\[31:0\]} \
{/ALU_tb/alu/alu_overflow} \
{/ALU_tb/alu/src1\[31:0\]} \
{/ALU_tb/alu/src1_s\[31:0\]} \
{/ALU_tb/alu/src1_s_add_src2_s\[31:0\]} \
{/ALU_tb/alu/src1_s_sub_src2_s\[31:0\]} \
{/ALU_tb/alu/src2\[31:0\]} \
{/ALU_tb/alu/src2_s\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 -2 25 1920 1007
wvResizeWindow -win $_nWave1 -2 25 1920 1007
wvResizeWindow -win $_nWave1 -2 25 1920 1007
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvExit
