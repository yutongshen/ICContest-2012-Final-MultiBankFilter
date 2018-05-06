wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/yutongshen/IC_contest/ICContest100_final/sim/MBF1.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/MBF"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/U63"
wvGetSignalSetScope -win $_nWave1 "/test/MBF"
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 6847457627.118645
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetCursor -win $_nWave1 6015980629.539951
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/MBF"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/MBF/clk} \
{/test/MBF/reset} \
{/test/MBF/reset_1} \
{/test/MBF/reset_2} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/MBF/clk} \
{/test/MBF/reset} \
{/test/MBF/reset_1} \
{/test/MBF/reset_2} \
{/test/MBF/y\[7:0\]} \
{/test/MBF/y_valid} \
{/test/MBF/z\[7:0\]} \
{/test/MBF/z_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/MBF/clk} \
{/test/MBF/reset} \
{/test/MBF/reset_1} \
{/test/MBF/reset_2} \
{/test/MBF/y\[7:0\]} \
{/test/MBF/y_valid} \
{/test/MBF/z\[7:0\]} \
{/test/MBF/z_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 106526.836158 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 29040.607345 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 28639.124294 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 37739.406780 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 18468.220339 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_1_reg"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_2_reg"
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/MBF/clk} \
{/test/MBF/reset} \
{/test/MBF/y\[7:0\]} \
{/test/MBF/y_valid} \
{/test/MBF/z\[7:0\]} \
{/test/MBF/z_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/MBF/reset_1_reg/Q} \
{/test/MBF/reset_2_reg/Q} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/MBF/clk} \
{/test/MBF/reset} \
{/test/MBF/y\[7:0\]} \
{/test/MBF/y_valid} \
{/test/MBF/z\[7:0\]} \
{/test/MBF/z_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/MBF/reset_1_reg/Q} \
{/test/MBF/reset_2_reg/Q} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/MBF"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_2_reg"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_1_reg"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_2_reg"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_1_reg"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_2_reg"
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/MBF/clk} \
{/test/MBF/reset} \
{/test/MBF/y\[7:0\]} \
{/test/MBF/y_valid} \
{/test/MBF/z\[7:0\]} \
{/test/MBF/z_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/MBF/reset_1_reg/Q} \
{/test/MBF/reset_2_reg/D} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_1_reg"
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/MBF/clk} \
{/test/MBF/reset} \
{/test/MBF/y\[7:0\]} \
{/test/MBF/y_valid} \
{/test/MBF/z\[7:0\]} \
{/test/MBF/z_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/MBF/reset_1_reg/Q} \
{/test/MBF/reset_2_reg/D} \
{/test/MBF/reset_1_reg/D} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/MBF/clk} \
{/test/MBF/reset} \
{/test/MBF/y\[7:0\]} \
{/test/MBF/y_valid} \
{/test/MBF/z\[7:0\]} \
{/test/MBF/z_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/MBF/reset_1_reg/Q} \
{/test/MBF/reset_2_reg/D} \
{/test/MBF/reset_1_reg/D} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 16594.632768 -snap {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/MBF"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_2_reg"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_1_reg"
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/MBF/clk} \
{/test/MBF/reset} \
{/test/MBF/y\[7:0\]} \
{/test/MBF/y_valid} \
{/test/MBF/z\[7:0\]} \
{/test/MBF/z_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/MBF/reset_1_reg/D} \
{/test/MBF/reset_1_reg/Q} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/MBF/clk} \
{/test/MBF/reset} \
{/test/MBF/y\[7:0\]} \
{/test/MBF/y_valid} \
{/test/MBF/z\[7:0\]} \
{/test/MBF/z_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/MBF/reset_1_reg/D} \
{/test/MBF/reset_1_reg/Q} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/MBF"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_1_reg"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_2_reg"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_1_reg"
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/MBF/clk} \
{/test/MBF/reset} \
{/test/MBF/y\[7:0\]} \
{/test/MBF/y_valid} \
{/test/MBF/z\[7:0\]} \
{/test/MBF/z_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/MBF/reset_1_reg/D} \
{/test/MBF/reset_1_reg/Q} \
{/test/MBF/reset_1_reg/clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/MBF/clk} \
{/test/MBF/reset} \
{/test/MBF/y\[7:0\]} \
{/test/MBF/y_valid} \
{/test/MBF/z\[7:0\]} \
{/test/MBF/z_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/MBF/reset_1_reg/D} \
{/test/MBF/reset_1_reg/Q} \
{/test/MBF/reset_1_reg/clk} \
{/test/MBF/reset_1_reg/CKN} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalSetScope -win $_nWave1 "/test/MBF"
wvGetSignalSetSignalFilter -win $_nWave1 "clk*"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/MBF/clk} \
{/test/MBF/reset} \
{/test/MBF/y\[7:0\]} \
{/test/MBF/y_valid} \
{/test/MBF/z\[7:0\]} \
{/test/MBF/z_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/MBF/reset_1_reg/D} \
{/test/MBF/reset_1_reg/Q} \
{/test/MBF/reset_1_reg/clk} \
{/test/MBF/reset_1_reg/CKN} \
{/test/MBF/clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvZoom -win $_nWave1 17799.081921 17799.081921
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_1_reg"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_2_reg"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/addr_reg_9_"
wvGetSignalSetScope -win $_nWave1 "/test/MBF/reset_1_reg"
wvGetSignalSetSignalFilter -win $_nWave1 ""
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/MBF/clk} \
{/test/MBF/reset} \
{/test/MBF/y\[7:0\]} \
{/test/MBF/y_valid} \
{/test/MBF/z\[7:0\]} \
{/test/MBF/z_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/MBF/reset_1_reg/D} \
{/test/MBF/reset_1_reg/Q} \
{/test/MBF/reset_1_reg/clk} \
{/test/MBF/reset_1_reg/CKN} \
{/test/MBF/clk} \
{/test/MBF/reset_1_reg/QN} \
{/test/MBF/reset_1_reg/RN} \
{/test/MBF/reset_1_reg/SN} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 936.793785 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 42691.031073 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 76549.435028 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 77218.573446 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 78958.333333 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 79627.471751 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 79895.127119 -snap {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 7762.005650 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 7628.177966 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8297.316384 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 4683.968927 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetCursor -win $_nWave1 4148.658192 -snap {("G2" 4)}
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 81467.602401 83675.759181
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 9581.154842 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 13231.118591 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 13915.486794 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 89652.234593 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 7756.172967 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 2281.227343 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 64558.733817 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 60452.524599 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 60224.401864 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 58399.419990 -snap {("G2" 4)}
wvZoom -win $_nWave1 37184.005696 67524.329363
wvZoom -win $_nWave1 41028.582626 41885.653916
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 33469.360207 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 28688.023034 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 24969.205233 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 9916.847469 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 9385.587783 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 11864.799650 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 14344.011517 -snap {("G2" 3)}
wvZoom -win $_nWave1 19833.694937 20010.781499
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 262711.273422 -snap {("G2" 4)}
wvZoom -win $_nWave1 188069.073174 495419.309490
wvSetCursor -win $_nWave1 5705.452329 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 7938.020631 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 13891.536105 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 18356.672710 -snap {("G2" 3)}
wvZoom -win $_nWave1 19348.925289 19348.925289
wvSetCursor -win $_nWave1 22077.619881 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 20093.114723 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 28527.261643 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 9178.336355 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 14387.662394 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 12403.157236 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 18356.672710 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 22325.683025 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 28527.261643 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 32992.398249 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 35721.092841 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 39690.103156 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 49612.628945 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 27535.009065 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 14883.788684 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 24806.314473 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 31752.082525 -snap {("G2" 3)}
wvZoom -win $_nWave1 44899.429195 46635.871208
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 6637.440980 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 2152.683561 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 19732.932643 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 5919.879793 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 2870.244748 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 9148.905134 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 227466.896280 -snap {("G3" 0)}
