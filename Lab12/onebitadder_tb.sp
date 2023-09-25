*** one bit full adder ***
.INC 'onebitfulladder.netlist'  $you can modify it by yourself
.GLOBAL gnd vdd

.protect 
.lib './cic018/cic018.l' TT  $you can modify it by yourself
.unprotect

.op
.options post

.tran 0.05u 200u
.temp 25

Xadder A B C S Cout vdd gnd onebitadder  $you can modify it by yourself

v1 vdd 0v DC 1.8v
v2 gnd 0v DC 0v
V3 C 0V PULSE ( 1.8V 0V 0.00n 0.1u 0.1u 40u 80u )
V4 A 0V PULSE ( 1.8V 0V 0.00n 0.1u 0.1u 20u 40u )
V5 B 0V PULSE ( 1.8V 0V 0.00n 0.1u 0.1u 10u 20u )
.end

