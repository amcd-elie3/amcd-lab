v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 260 60 280 60 {lab=GND}
N 260 60 260 100 {lab=GND}
N -90 30 -70 30 {lab=GND}
N -90 30 -90 70 {lab=GND}
N 600 90 620 90 {lab=GND}
N 600 90 600 130 {lab=GND}
N -100 -30 -70 -30 {lab=#net1}
N -100 -120 -20 -120 {lab=#net1}
N -100 -120 -100 -30 {lab=#net1}
N -150 -30 -100 -30 {lab=#net1}
N 40 -120 140 -120 {lab=bpf}
N 140 -120 140 -0 {lab=bpf}
N 140 -0 160 -0 {lab=bpf}
N 250 -0 280 -0 {lab=#net2}
N 250 -80 340 -80 {lab=#net2}
N 250 -80 250 -0 {lab=#net2}
N 220 -0 250 -0 {lab=#net2}
N 400 -80 480 -80 {lab=lpf}
N 480 -80 480 30 {lab=lpf}
N 590 30 620 30 {lab=#net3}
N 590 -40 670 -40 {lab=#net3}
N 590 -40 590 30 {lab=#net3}
N 560 30 590 30 {lab=#net3}
N -240 -30 -210 -30 {lab=hpf}
N -240 -170 -240 -30 {lab=hpf}
N -240 -170 830 -170 {lab=hpf}
N 730 -40 830 -40 {lab=hpf}
N 140 270 160 270 {lab=bpf}
N 250 270 280 270 {lab=#net4}
N 250 190 350 190 {lab=#net4}
N 250 190 250 270 {lab=#net4}
N 220 270 250 270 {lab=#net4}
N 260 330 280 330 {lab=GND}
N 260 330 260 370 {lab=GND}
N 250 270 250 330 {lab=#net4}
N 220 330 250 330 {lab=#net4}
N 480 190 500 190 {lab=bsf}
N 480 190 480 300 {lab=bsf}
N 410 190 480 190 {lab=bsf}
N 590 30 590 190 {lab=#net3}
N 560 190 590 190 {lab=#net3}
N 110 330 110 340 {lab=#net5}
N 110 330 160 330 {lab=#net5}
N 830 -40 830 60 {lab=hpf}
N 830 -170 830 -40 {lab=hpf}
N 140 -120 190 -120 {lab=bpf}
N 480 30 500 30 {lab=lpf}
N 480 300 530 300 {lab=bsf}
N 140 -0 140 270 {lab=bpf}
N 480 -80 530 -80 {lab=lpf}
N 830 60 880 60 {lab=hpf}
N 90 0 140 -0 {lab=bpf}
N 440 300 480 300 {lab=bsf}
N 780 60 830 60 {lab=hpf}
N 440 30 480 30 {lab=lpf}
C {res.sym} -180 -30 1 0 {name=R1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {capa.sym} 10 -120 3 1 {name=C1
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 190 0 1 0 {name=R2
value=\{R\}
footprint=1206
device=resistor
m=1}
C {capa.sym} 370 -80 3 1 {name=C2
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 530 30 1 0 {name=R3
value=\{R\}}
C {res.sym} 700 -40 3 1 {name=R4
value=\{R\}}
C {gnd.sym} -90 70 0 0 {name=l1 lab=GND}
C {gnd.sym} 260 100 0 0 {name=l2 lab=GND}
C {gnd.sym} 600 130 0 0 {name=l3 lab=GND}
C {res.sym} 380 190 1 0 {name=R6
value=\{R\}}
C {res.sym} 530 190 1 0 {name=R7
value=\{R\}
}
C {res.sym} 190 270 1 0 {name=R8
value=\{RQ\}}
C {res.sym} 190 330 1 0 {name=R9
value=\{RH\}}
C {gnd.sym} 260 370 0 0 {name=l4 lab=GND}
C {code_shown.sym} -660 60 0 0 {name=NGSPICE only_toplevel=true 
value="
.param R=1.6k C=100n RH=R/1.0 RQ=4.7k
*.control
*save all
*ac lin 1000 0.8 2k
* tran 0.1m 10m 5m
*write toplevel.raw
*plot vdb(hpf) vdb(bpf) vdb(lpf) vdb(bsf)
*.endc
.control
save all

* --- AC Analysis for Magnitude and Phase ---
ac lin 1000 0.8 2k
plot vdb(hpf) vdb(bpf) vdb(lpf) vdb(bsf)
plot ph(hpf) ph(bpf) ph(lpf) ph(bsf)

* --- Transient Analysis ---
tran 0.1m 10m 5m
plot v(hpf) v(bpf) v(lpf) v(bsf)

write toplevel.raw
.endc
*"

}
C {vsource.sym} 110 370 0 1 {name=Vin
value="
+ PULSE(-0.2 0.2 0 0.1u 0.1u 0.5m 1m 10)
+ AC 1
"}
C {gnd.sym} 110 400 0 0 {name=l5 lab=GND}
C {opin.sym} 190 -120 0 0 {name=p3 lab=bpf}
C {opin.sym} 530 -80 0 0 {name=p2 lab=lpf}
C {opin.sym} 880 60 0 0 {name=p4 lab=hpf}
C {opin.sym} 530 300 0 0 {name=p5 lab=bsf}
C {opamp1.sym} -10 0 2 1 {name=x1}
C {opamp1.sym} 340 30 2 1 {name=x2}
C {opamp1.sym} 680 60 2 1 {name=x3}
C {opamp1.sym} 340 300 2 1 {name=x4}
C {title.sym} -160 510 0 0 {name=l8 author="Aditya Ranjan S., Merlin Anitha A., Varun Kumar C.V."}
