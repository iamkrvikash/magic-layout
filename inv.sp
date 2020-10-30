Inverter Design
.lib /home/vlsi/projects/project2020/eda/ngspice-32/models/scn4m_subm/scmos_bsim4.lib nom

************** Module Inverter Subckt **************
mn out in  gnd gnd
+    scmosn l='0.4u' w='1.6u' m='1'
mp out in  vdd vdd
+    scmosp l='0.4u' w='4.8u' m='1'

vdd vdd 0 dc 5

vin in 0 pulse(0 5 20n 1n 1n 20n 40n)
.global gnd vdd

.tran 5p 300n
.control
run 
plot in out+6
.endc


.end

