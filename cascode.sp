 sim file
.INCLUDE "tsmc_spice_180nm.lib"
.INCLUDE "cascode.spice"


V1 vdd GND 1.8
V2 Vbias1 GND 1.12685
V3 Vbias2 GND 1.07917
V4 Vbias3 GND 0.650134
V5 Vin GND SINE(0.645 10m 100k)


.OPTIONS post=2 probe
.TRAN 0.1n 1.5n


.PROBE TRAN V(Vbiasp) V(Vbias1) V(Vbias2) V(Vbias3) V(Vin) V(Vout)

.END
