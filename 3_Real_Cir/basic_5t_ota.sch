v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 170 -40 170 {lab=ibias}
N -100 30 -100 70 {lab=#net1}
N 100 30 100 70 {lab=#net1}
N -0 70 100 70 {lab=#net1}
N -100 -60 -100 -30 {lab=#net2}
N -0 -120 60 -120 {lab=#net2}
N -100 -60 0 -60 {lab=#net2}
N -100 -90 -100 -60 {lab=#net2}
N -0 -120 0 -60 {lab=#net2}
N -60 -120 -0 -120 {lab=#net2}
N -100 -180 -100 -150 {lab=vdd}
N -100 -180 100 -180 {lab=vdd}
N 100 -180 100 -150 {lab=vdd}
N -180 200 -180 220 {lab=VSS}
N 0 200 0 220 {lab=VSS}
N -180 220 0 220 {lab=VSS}
N -0 70 0 140 {lab=#net1}
N -100 70 -0 70 {lab=#net1}
N -180 100 -180 140 {lab=ibias}
N -180 100 -100 100 {lab=ibias}
N -180 70 -180 100 {lab=ibias}
N -100 100 -100 170 {lab=ibias}
N -140 170 -100 170 {lab=ibias}
N -280 220 -180 220 {lab=VSS}
N -320 70 -180 70 {lab=ibias}
N -320 -0 -140 0 {lab=inp}
N -160 -180 -100 -180 {lab=vdd}
N 140 0 270 0 {lab=inn}
N 100 -60 100 -30 {lab=out}
N 100 -60 270 -60 {lab=out}
N 100 -90 100 -60 {lab=out}
N 100 -120 160 -120 {lab=vdd}
N 160 -180 160 -120 {lab=vdd}
N 100 -180 160 -180 {lab=vdd}
N -160 -120 -100 -120 {lab=vdd}
N -160 -180 -160 -120 {lab=vdd}
N -320 -180 -160 -180 {lab=vdd}
N 60 170 90 170 {lab=VSS}
N 90 170 90 220 {lab=VSS}
N -0 220 90 220 {lab=VSS}
N -0 -0 100 0 {lab=VSS}
N -0 -0 -0 40 {lab=VSS}
N -100 0 -0 -0 {lab=VSS}
N 0 40 60 40 {lab=VSS}
N 60 40 60 170 {lab=VSS}
N 0 170 60 170 {lab=VSS}
N -280 170 -180 170 {lab=VSS}
N -280 170 -280 220 {lab=VSS}
N -320 220 -280 220 {lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} -120 0 0 0 {name=M1
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 0 0 1 {name=M2
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -80 -120 0 1 {name=M3
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 80 -120 0 0 {name=M4
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 170 0 0 {name=M5
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -160 170 0 1 {name=M6
l=5u
w=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/iopin.sym} -320 -180 0 1 {name=p2 lab=vdd}
C {devices/ipin.sym} -320 70 0 0 {name=p1 lab=ibias}
C {devices/ipin.sym} -320 0 0 0 {name=p4 lab=inp}
C {iopin.sym} -320 220 2 0 {name=p3 lab=VSS
}
C {devices/ipin.sym} 270 0 0 1 {name=p5 lab=inn}
C {devices/opin.sym} 270 -60 0 0 {name=p6 lab=out}
