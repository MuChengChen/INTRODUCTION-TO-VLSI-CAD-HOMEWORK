*** four bits full adder ***
*.INC '4bitsadder.netlist'  $you can modify it by yourself
.GLOBAL gnd vdd

.protect 
.lib './cic018/cic018.l' TT  $you can modify it by yourself
.unprotect

.op
.options post

.tran 0.05u 500u
.temp 25

*Xadder A0 B0 C0 A1 B1 A2 B2 A3 B3 C4 S0 S1 S2 S3 vdd gnd fourbitsadder  $you can modify it by yourself

v1 vdd 0v DC 1.8v
v2 gnd 0v DC 0v
V3 A3 0V PULSE ( 1.8V 0V 0.00n 0.1u 0.1u 90u 180u )
V4 B3 0V PULSE ( 1.8V 0V 0.00n 0.1u 0.1u 80u 160u )

V5 A2 0V PULSE ( 1.8V 0V 0.00n 0.1u 0.1u 70u 140u )
V6 B2 0V PULSE ( 1.8V 0V 0.00n 0.1u 0.1u 60u 120u )

V7 A1 0V PULSE ( 1.8V 0V 0.00n 0.1u 0.1u 50u 100u )
V8 B1 0V PULSE ( 1.8V 0V 0.00n 0.1u 0.1u 40u 80u )

V9 A0 0V PULSE ( 1.8V 0V 0.00n 0.1u 0.1u 30u 60u )
V10 B0 0V PULSE ( 1.8V 0V 0.00n 0.1u 0.1u 20u 40u )
V11 C0 0V PULSE ( 1.8V 0V 0.00n 0.1u 0.1u 10u 20u )
.end

