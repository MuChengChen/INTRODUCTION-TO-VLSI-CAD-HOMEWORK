debImport "/home/user2/vlsi23/vlsi23100/Lab5/ProbC/pattern_gen.v" -path \
          {/home/user2/vlsi23/vlsi23100/Lab5/ProbC}
schCreateWindow -delim "." -win $_nSchema1 -scope "pattern_gen"
schSelect -win $_nSchema2 -inst "pattern_gen\(@1\):FSM0:30:63:FSM"
schPushViewIn -win $_nSchema2
fsmSetCurrentWindow -win $_nState3
fsmResizeWindow 0 28 600 258 -win $_nState3
fsmResizeWindow 0 28 600 258 -win $_nState3
fsmResizeWindow 0 28 600 258 -win $_nState3
verdiDockWidgetMaximize -dock windowDock_nState_3
fsmResizeWindow 0 28 900 597 -win $_nState3
fsmFit -win $_nState3
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
fsmResizeWindow 0 28 1920 901 -win $_nState3
fsmFit -win $_nState3
fsmSetOptions -junction 0 -win $_nState3
fsmSetOptions -stateAction 1 -win $_nState3
fsmSetOptions -transCondition 1 -win $_nState3
fsmResizeWindow 0 28 1285 410 -win $_nState3
debExit
