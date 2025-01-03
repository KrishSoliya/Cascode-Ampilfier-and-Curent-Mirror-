sim file
.INCLUDE "tsmc_spice_180nm.lib"
.INCLUDE "mark01.spice"


V1 Vdd GND 1.8
V2 Vbaisp GND 1.196


.OPTIONS post=2 probe
.TRAN 0.1n 1.5n


.PROBE TRAN V(Vbaisp) V(Vbais1) V(Vbais2) V(Vbais3)

.END
