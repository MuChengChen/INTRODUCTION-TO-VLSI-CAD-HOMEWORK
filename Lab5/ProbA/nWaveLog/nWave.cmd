wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/user2/vlsi23/vlsi23100/Lab5/ProbA/det_seq_tb.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/det_seq_tb"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/det_seq_tb/d0/clk} \
{/det_seq_tb/d0/d} \
{/det_seq_tb/d0/next_state\[2:0\]} \
{/det_seq_tb/d0/num\[2:0\]} \
{/det_seq_tb/d0/q} \
{/det_seq_tb/d0/rst} \
{/det_seq_tb/d0/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/det_seq_tb/d0/clk} \
{/det_seq_tb/d0/d} \
{/det_seq_tb/d0/next_state\[2:0\]} \
{/det_seq_tb/d0/num\[2:0\]} \
{/det_seq_tb/d0/q} \
{/det_seq_tb/d0/rst} \
{/det_seq_tb/d0/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 -2 25 1920 1004
wvResizeWindow -win $_nWave1 -2 25 1920 1004
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 45039.307229 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 39434.415663 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 19817.295181 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 34830.397590 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 28825.156627 -snap {("G1" 0)}
wvSetCursor -win $_nWave1 29225.506024 -snap {("G1" 0)}
wvSetCursor -win $_nWave1 34229.873494 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 40835.638554 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 35430.921687 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 29625.855422 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 35230.746988 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 40235.114458 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 45639.831325 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 258625.710843 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 45039.307229 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 55248.216867 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 65056.777108 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 74665.162651 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 84473.722892 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 95883.680723 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 106693.114458 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 93881.933735 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 78468.481928 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 41836.512048 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 44638.957831 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 54847.867470 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 55248.216867 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 64055.903614 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 74264.813253 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 85074.246988 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 64656.427711 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 95883.680723 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 105492.066265 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 114900.277108 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 214987.626506 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 214186.927711 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 225396.710843 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 234204.397590 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 233203.524096 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 243812.783133 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 255022.566265 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 244213.132530 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 243212.259036 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 295858.204819 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 245814.530120 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 248817.150602 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 254822.391566 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/det_seq_tb/d0/clk} \
{/det_seq_tb/d0/rst} \
{/det_seq_tb/d0/state\[2:0\]} \
{/det_seq_tb/d0/next_state\[2:0\]} \
{/det_seq_tb/d0/num\[2:0\]} \
{/det_seq_tb/d0/d} \
{/det_seq_tb/d0/d_reg} \
{/det_seq_tb/d0/q} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSetCursor -win $_nWave1 211184.307229 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 220792.692771 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 221793.566265 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 228599.506024 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 240209.638554 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 250218.373494 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 260427.283133 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 270836.367470 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 282246.325301 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 274839.861446 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 284648.421687 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 290453.487952 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 168346.921687 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 168547.096386 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 173351.289157 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 161540.981928 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 169948.319277 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 179156.355422 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 190165.963855 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 197972.777108 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 199574.174699 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 208782.210843 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 207180.813253 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 209582.909639 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 199774.349398 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 211384.481928 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 220792.692771 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 157537.487952 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 169748.144578 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 160740.283133 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 150531.373494 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 157737.662651 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 169547.969880 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 160940.457831 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 168747.271084 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 179756.879518 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 188164.216867 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 100687.873494 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 109495.560241 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 94882.807229 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 101888.921687 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 117902.897590 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 112498.180723 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 103290.144578 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 107293.638554 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 101088.222892 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 100287.524096 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 109695.734940 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 117302.373494 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 119504.295181 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 115100.451807 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 100487.698795 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 110896.783133 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 117102.198795 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 129312.855422 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 118303.246988 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 110496.433735 -snap {("G1" 4)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 200.174699 -snap {("G1" 8)}
wvSelectGroup -win $_nWave1 {G2}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 41035.813253 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 51845.246988 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 49443.150602 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 43838.259036 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 39434.415663 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 43437.909639 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 40435.289157 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 44839.132530 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 69860.969880 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 74865.337349 -snap {("G1" 3)}
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 78068.132530 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 73263.939759 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 80270.054217 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 76266.560241 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 85074.246988 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 74665.162651 -snap {("G1" 0)}
wvSetCursor -win $_nWave1 75265.686747 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 85274.421687 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 90278.789157 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 94282.283133 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 76066.385542 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 85274.421687 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 104090.843373 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 95082.981928 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 99286.650602 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 38833.891566 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 44638.957831 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 50644.198795 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 0.000000 -snap {("G1" 6)}
wvCloseFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvTpfCloseForm -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/user2/vlsi23/vlsi23100/Lab5/ProbA/det_seq_tb.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/det_seq_tb"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/det_seq_tb/d0/next_state\[2:0\]} \
{/det_seq_tb/d0/num\[2:0\]} \
{/det_seq_tb/d0/q} \
{/det_seq_tb/d0/rst} \
{/det_seq_tb/d0/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/det_seq_tb"
wvGetSignalSetScope -win $_nWave1 "/det_seq_tb/d0"
wvGetSignalSetScope -win $_nWave1 "/det_seq_tb/d0"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/det_seq_tb/d0/rst} \
{/det_seq_tb/d0/next_state\[2:0\]} \
{/det_seq_tb/d0/state\[2:0\]} \
{/det_seq_tb/d0/clk} \
{/det_seq_tb/d0/d} \
{/det_seq_tb/d0/num\[2:0\]} \
{/det_seq_tb/d0/q} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectGroup -win $_nWave1 {G1}
wvSelectGroup -win $_nWave1 {G2}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvZoomOut -win $_nWave1
wvExit
