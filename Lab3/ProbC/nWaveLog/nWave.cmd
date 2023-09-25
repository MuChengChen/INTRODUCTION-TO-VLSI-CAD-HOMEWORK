wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/user2/vlsi23/vlsi23100/Lab3/ProbC/fixedpoint_s.fsdb}
wvResizeWindow -win $_nWave1 -2 25 1920 1007
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/fixedpoint_s_tb"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/fixedpoint_s_tb/f0/in1\[7:0\]} \
{/fixedpoint_s_tb/f0/in1_s\[7:0\]} \
{/fixedpoint_s_tb/f0/in2\[7:0\]} \
{/fixedpoint_s_tb/f0/in2_s\[7:0\]} \
{/fixedpoint_s_tb/f0/out\[7:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s\[15:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s_twos\[15:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s_twos_add\[15:8\]} \
{/fixedpoint_s_tb/f0/raw_result_s_twos_add_twos\[15:8\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/fixedpoint_s_tb/f0/in1\[7:0\]} \
{/fixedpoint_s_tb/f0/in1_s\[7:0\]} \
{/fixedpoint_s_tb/f0/in2\[7:0\]} \
{/fixedpoint_s_tb/f0/in2_s\[7:0\]} \
{/fixedpoint_s_tb/f0/out\[7:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s\[15:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s_twos\[15:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s_twos_add\[15:8\]} \
{/fixedpoint_s_tb/f0/raw_result_s_twos_add_twos\[15:8\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 -2 25 1920 1007
wvResizeWindow -win $_nWave1 -2 25 1920 1007
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectGroup -win $_nWave1 {G2}
wvResizeWindow -win $_nWave1 -2 25 1920 1007
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/fixedpoint_s_tb/f0/in1\[7:0\]} \
{/fixedpoint_s_tb/f0/in2\[7:0\]} \
{/fixedpoint_s_tb/f0/out\[7:0\]} \
{/fixedpoint_s_tb/f0/in1_s\[7:0\]} \
{/fixedpoint_s_tb/f0/in2_s\[7:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s\[15:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s_twos\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/fixedpoint_s_tb/f0/raw_result_s_twos_add\[7:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s_twos_add_twos\[7:0\]} \
{/fixedpoint_s_tb/f0/zero\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/fixedpoint_s_tb/f0/in1\[7:0\]} \
{/fixedpoint_s_tb/f0/in2\[7:0\]} \
{/fixedpoint_s_tb/f0/out\[7:0\]} \
{/fixedpoint_s_tb/f0/in1_s\[7:0\]} \
{/fixedpoint_s_tb/f0/in2_s\[7:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s\[15:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s_twos\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/fixedpoint_s_tb/f0/raw_result_s_twos_add\[7:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s_twos_add_twos\[7:0\]} \
{/fixedpoint_s_tb/f0/zero\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetCursor -win $_nWave1 858.401559 -snap {("G3" 0)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvCloseFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvTpfCloseForm -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/user2/vlsi23/vlsi23100/Lab3/ProbC/fixedpoint_s.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SAEDRVT14_ADDF_V1_0P5"
wvGetSignalSetScope -win $_nWave1 "/fixedpoint_s_tb"
wvGetSignalScopeHistory -win $_nWave1 -backward
wvGetSignalSetScope -win $_nWave1 "/fixedpoint_s_tb"
wvGetSignalSetScope -win $_nWave1 "/fixedpoint_s_tb"
wvGetSignalSetScope -win $_nWave1 "/fixedpoint_s_tb/f0"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/fixedpoint_s_tb/f0/in1\[7:0\]} \
{/fixedpoint_s_tb/f0/in2\[7:0\]} \
{/fixedpoint_s_tb/f0/out\[7:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s\[15:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s_twos_add_twos\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalScopeHistory -win $_nWave1 -backward
wvGetSignalScopeHistory -win $_nWave1 -backward
wvGetSignalSetScope -win $_nWave1 "/SAEDRVT14_ADDF_V1_0P5"
wvGetSignalSetScope -win $_nWave1 "/SAEDRVT14_ADDF_V1_0P5"
wvGetSignalSetScope -win $_nWave1 \
           "/SAEDRVT14_ADDF_V1_0P5/SAEDRVT14_ADDF_V1_0P5_inst"
wvGetSignalSetScope -win $_nWave1 "/SAEDRVT14_ADDF_V1_2"
wvGetSignalSetScope -win $_nWave1 "/SAEDRVT14_ADDF_V2_1"
wvGetSignalSetScope -win $_nWave1 "/SAEDRVT14_ADDF_V2_2"
wvGetSignalSetScope -win $_nWave1 "/fixedpoint_s_tb/f0"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/fixedpoint_s_tb/f0/in1\[7:0\]} \
{/fixedpoint_s_tb/f0/in2\[7:0\]} \
{/fixedpoint_s_tb/f0/out\[7:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s\[15:0\]} \
{/fixedpoint_s_tb/f0/raw_result_s_twos_add_twos\[7:0\]} \
{/fixedpoint_s_tb/f0/@\{\\raw_result_s_twos\[7\] \}} \
{/fixedpoint_s_tb/f0/@\{\\raw_result_s_twos_add\[7:0\] \}} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
