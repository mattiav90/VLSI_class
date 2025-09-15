* 
* Xyce simulation example
*
*
* Default supply nodes 
*
.global vdd
.global gnd

*
* Set Vdd to 1.8V, GND to 0V
*
vpwr0 vdd 0 dc 1.8v
vpwr1 gnd 0 dc 0.0v

*
* include nfet and pfet models
*
.inc /usr/local/cad/conf/g180/models.sp

*
* include circuit model
*
.inc nand2.spice

*
* set the voltage of "in" to be a piecewise linear  (PWL)
* curve. The rest of the parameters are (time,voltage) pairs. 
*
vtst_a a 0 PWL 0n 0 2n 0 4n 1.8 6n 1.8 8n 0 10n 0 12n 1.8 14n 1.8 16n
vtst_b b 0 PWL 0n 0 2n 0 4n 0 6n 0 8n 1.8 10n 1.8 12n 1.8 14n 1.8 16n

*
* Save the output in "gnuplot" friendly format
* Print out the voltages for in and out
* You can also say v(*) for all the voltages
*
.print tran file=test.plot format=gnuplot v(a) v(b)  v(out)

*
* Run a transient simulation with 1ps timestep
* for 25 nanoseconds
*
.tran 1p 25n

.end
