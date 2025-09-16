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
.inc or8.spice

*
* set the voltage of "in" to be a piecewise linear  (PWL)
* curve. The rest of the parameters are (time,voltage) pairs. 
*
vtst_in1 in1 0 PWL 0n 0 2n 0 4n 1.8 6n 1.8 8n 0 10n 0 12n 0 14n 0 16n 0 18n 0 20n 0 22n 0 24n 0 26n 0 28n 0 30n 0 32n 0 34n 0 36n 0 38n 0 40n 0 42n 0 44n 0 46n 0 48n
vtst_in2 in2 0 PWL 0n 0 2n 0 4n 0 6n 0 8n 1.8 10n 1.8 12n 0 14n 0 16n 0 18n 0 20n 0 22n 0 24n 0 26n 0 28n 0 30n 0 32n 0 34n 0 36n 0 38n 0 40n 0 42n 0 44n 0 46n 0 48n
vtst_in3 in3 0 PWL 0n 0 2n 0 4n 0 6n 0 8n 0 10n 0 12n 0 14n 1.8 16n 1.8 18n 0 20n 0 22n 0 24n 0 26n 0 28n 0 30n 0 32n 0 34n 0 36n 0 38n 0 40n 0 42n 0 44n 0 46n 0 48n
vtst_in4 in4 0 PWL 0n 0 2n 0 4n 0 6n 0 8n 0 10n 0 12n 0 14n 0 16n 0 18n 0 20n 0 22n 1.8 24n 1.8 26n 0 28n 0 30n 0 32n 0 34n 0 36n 0 38n 0 40n 0 42n 0 44n 0 46n 0 48n
vtst_in5 in5 0 PWL 0n 0 2n 0 4n 0 6n 0 8n 0 10n 0 12n 0 14n 0 16n 0 18n 0 20n 0 22n 0 24n 0 26n 1.8 28n 1.8 30n 0 32n 0 34n 0 36n 0 38n 0 40n 0 42n 0 44n 0 46n 0 48n
vtst_in6 in6 0 PWL 0n 0 2n 0 4n 0 6n 0 8n 0 10n 0 12n 0 14n 0 16n 0 18n 0 20n 0 22n 0 24n 0 26n 0 28n 0 30n 0 32n 1.8 34n 1.8 36n 0 38n 0 40n 0 42n 0 44n 0 46n 0 48n
vtst_in7 in7 0 PWL 0n 0 2n 0 4n 0 6n 0 8n 0 10n 0 12n 0 14n 0 16n 0 18n 0 20n 0 22n 0 24n 0 26n 0 28n 0 30n 0 32n 0 34n 0 36n 1.8 38n 1.8 40n 0 42n 0 44n 0 46n 0 48n
vtst_in8 in8 0 PWL 0n 0 2n 0 4n 0 6n 0 8n 0 10n 0 12n 0 14n 0 16n 0 18n 0 20n 0 22n 0 24n 0 26n 0 28n 0 30n 0 32n 0 34n 0 36n 0 38n 0 40n 1.8 42n 1.8 44n 0 46n 0 48n
*
* Save the output in "gnuplot" friendly format
* Print out the voltages for in and out
* You can also say v(*) for all the voltages
*
.print tran file=test.plot format=gnuplot  v(in1) v(in2) v(in3) v(in4)  v(in5) v(in6) v(in7) v(in8)  v(out)

*
* Run a transient simulation with 1ps timestep
* for 25 nanoseconds
*
.tran 1p 48n

.end
