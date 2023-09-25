wvResizeWindow -win $_nWave1 0 25 1920 1007
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/user2/vlsi23/vlsi23100/Lab2/Lab2/ProbB/CLA.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/CLA_tb"
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/CLA_tb/CLA0/A_in\[3:0\]} \
{/CLA_tb/CLA0/B_in\[3:0\]} \
{/CLA_tb/CLA0/C0} \
{/CLA_tb/CLA0/C1} \
{/CLA_tb/CLA0/C2} \
{/CLA_tb/CLA0/C3} \
{/CLA_tb/CLA0/C11} \
{/CLA_tb/CLA0/C22} \
{/CLA_tb/CLA0/C33} \
{/CLA_tb/CLA0/C44} \
{/CLA_tb/CLA0/C_out} \
{/CLA_tb/CLA0/G0} \
{/CLA_tb/CLA0/G1} \
{/CLA_tb/CLA0/G2} \
{/CLA_tb/CLA0/G3} \
{/CLA_tb/CLA0/P0} \
{/CLA_tb/CLA0/P1} \
{/CLA_tb/CLA0/P2} \
{/CLA_tb/CLA0/P3} \
{/CLA_tb/CLA0/Sum_o\[3:0\]} \
{/CLA_tb/CLA0/w0} \
{/CLA_tb/CLA0/w1} \
{/CLA_tb/CLA0/w2} \
{/CLA_tb/CLA0/w3} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 )} 
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/CLA_tb/CLA0/A_in\[3:0\]} \
{/CLA_tb/CLA0/B_in\[3:0\]} \
{/CLA_tb/CLA0/C0} \
{/CLA_tb/CLA0/C1} \
{/CLA_tb/CLA0/C2} \
{/CLA_tb/CLA0/C3} \
{/CLA_tb/CLA0/C11} \
{/CLA_tb/CLA0/C22} \
{/CLA_tb/CLA0/C33} \
{/CLA_tb/CLA0/C44} \
{/CLA_tb/CLA0/C_out} \
{/CLA_tb/CLA0/G0} \
{/CLA_tb/CLA0/G1} \
{/CLA_tb/CLA0/G2} \
{/CLA_tb/CLA0/G3} \
{/CLA_tb/CLA0/P0} \
{/CLA_tb/CLA0/P1} \
{/CLA_tb/CLA0/P2} \
{/CLA_tb/CLA0/P3} \
{/CLA_tb/CLA0/Sum_o\[3:0\]} \
{/CLA_tb/CLA0/w0} \
{/CLA_tb/CLA0/w1} \
{/CLA_tb/CLA0/w2} \
{/CLA_tb/CLA0/w3} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 )} 
wvSetPosition -win $_nWave1 {("G1" 24)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectGroup -win $_nWave1 {G2}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
