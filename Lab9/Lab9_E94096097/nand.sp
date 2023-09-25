* SPICE NETLIST
***************************************

.SUBCKT L POS NEG
.ENDS
***************************************
.SUBCKT nand B GND out_2 A VDD
** N=6 EP=5 IP=0 FDC=4
M0 5 B GND GND N_18 L=1.8e-07 W=5e-07 AD=2.45e-13 AS=2.45e-13 PD=1.48e-06 PS=1.48e-06 $X=4655 $Y=825 $D=0
M1 5 A out_2 GND N_18 L=1.8e-07 W=5e-07 AD=2.45e-13 AS=2.45e-13 PD=1.48e-06 PS=1.48e-06 $X=8415 $Y=825 $D=0
M2 out_2 B VDD VDD P_18 L=1.8e-07 W=1e-06 AD=4.9e-13 AS=4.9e-13 PD=1.98e-06 PS=1.98e-06 $X=4655 $Y=3345 $D=1
M3 VDD A out_2 VDD P_18 L=1.8e-07 W=1e-06 AD=4.9e-13 AS=4.9e-13 PD=1.98e-06 PS=1.98e-06 $X=8415 $Y=3345 $D=1
.ENDS
***************************************
