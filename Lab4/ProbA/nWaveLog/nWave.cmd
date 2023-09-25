wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/user2/vlsi23/vlsi23100/Lab4/ProbA/register.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/register_tb"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/register_tb/R1/REG_FILE\[63:0\]} \
{/register_tb/R1/clk} \
{/register_tb/R1/i\[31:0\]} \
{/register_tb/R1/reg_write} \
{/register_tb/R1/rst} \
{/register_tb/R1/src1\[31:0\]} \
{/register_tb/R1/src1_addr\[5:0\]} \
{/register_tb/R1/src2\[31:0\]} \
{/register_tb/R1/src2_addr\[5:0\]} \
{/register_tb/R1/write_addr\[5:0\]} \
{/register_tb/R1/write_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/register_tb/R1/REG_FILE\[63:0\]} \
{/register_tb/R1/clk} \
{/register_tb/R1/i\[31:0\]} \
{/register_tb/R1/reg_write} \
{/register_tb/R1/rst} \
{/register_tb/R1/src1\[31:0\]} \
{/register_tb/R1/src1_addr\[5:0\]} \
{/register_tb/R1/src2\[31:0\]} \
{/register_tb/R1/src2_addr\[5:0\]} \
{/register_tb/R1/write_addr\[5:0\]} \
{/register_tb/R1/write_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetCursor -win $_nWave1 2184.897959 -snap {("G2" 0)}
wvSelectGroup -win $_nWave1 {G2}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 1752.040816 -snap {("G1" 3)}
wvResizeWindow -win $_nWave1 0 25 1920 1004
wvSetCursor -win $_nWave1 2309.015206 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 2061.620720 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 2453.328656 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 2123.469341 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 1876.074855 -snap {("G1" 9)}
wvResizeWindow -win $_nWave1 0 25 1920 1004
wvResizeWindow -win $_nWave1 0 25 1920 1004
wvResizeWindow -win $_nWave1 0 25 1920 1004
wvResizeWindow -win $_nWave1 0 25 1920 1004
wvResizeWindow -win $_nWave1 0 25 1920 1004
wvSetCursor -win $_nWave1 4453.799822 -snap {("G2" 0)}
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetCursor -win $_nWave1 32929.251462 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 32537.482033 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 0.000000 -snap {("G1" 4)}
wvExit
