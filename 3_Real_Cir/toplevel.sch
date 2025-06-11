v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 260 60 280 60 {lab=GND}
N 260 60 260 100 {lab=GND}
N 600 90 620 90 {lab=GND}
N 600 90 600 130 {lab=GND}
N -100 -260 -20 -260 {lab=#net1}
N -150 -30 -100 -30 {lab=#net1}
N 140 -260 190 -260 {lab=bpf}
N 140 -0 160 -0 {lab=bpf}
N 110 -0 140 -0 {lab=bpf}
N 250 -250 340 -250 {lab=#net2}
N 220 -0 250 -0 {lab=#net2}
N 460 30 480 30 {lab=lpf}
N 590 30 620 30 {lab=#net3}
N 590 -230 670 -230 {lab=#net3}
N 560 30 590 30 {lab=#net3}
N -240 -30 -210 -30 {lab=hpf}
N -240 -310 830 -310 {lab=hpf}
N 730 -230 830 -230 {lab=hpf}
N 140 350 160 350 {lab=bpf}
N 250 350 280 350 {lab=#net4}
N 250 210 350 210 {lab=#net4}
N 220 350 250 350 {lab=#net4}
N 260 410 280 410 {lab=GND}
N 260 410 260 450 {lab=GND}
N 250 350 250 410 {lab=#net4}
N 220 410 250 410 {lab=#net4}
N 460 380 480 380 {lab=bsf}
N 480 210 500 210 {lab=bsf}
N 560 210 590 210 {lab=#net3}
N 110 410 110 420 {lab=#net5}
N 110 410 160 410 {lab=#net5}
N 800 60 830 60 {lab=hpf}
N 480 30 500 30 {lab=lpf}
N 480 380 530 380 {lab=bsf}
N 140 -0 140 350 {lab=bpf}
N 830 60 880 60 {lab=hpf}
N 90 60 110 60 {lab=bpf}
N 110 -0 110 60 {lab=bpf}
N -100 -30 -100 30 {lab=#net1}
N -100 30 -90 30 {lab=#net1}
N -140 90 -140 110 {lab=GND}
N -140 90 -90 90 {lab=GND}
N 250 -0 280 -0 {lab=#net2}
N 480 -250 530 -250 {lab=lpf}
N 590 30 590 210 {lab=#net3}
N 480 210 480 380 {lab=bsf}
N 410 210 480 210 {lab=bsf}
N 250 210 250 350 {lab=#net4}
N 830 -230 830 60 {lab=hpf}
N 830 -310 830 -230 {lab=hpf}
N 590 -230 590 30 {lab=#net3}
N 480 -250 480 30 {lab=lpf}
N 400 -250 480 -250 {lab=lpf}
N 250 -250 250 -0 {lab=#net2}
N 140 -260 140 -0 {lab=bpf}
N 40 -260 140 -260 {lab=bpf}
N -100 -260 -100 -30 {lab=#net1}
N -100 -270 -100 -260 {lab=#net1}
N -240 -310 -240 -30 {lab=hpf}
C {res.sym} -180 -30 1 0 {name=R1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {capa.sym} 10 -260 3 1 {name=C1
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 190 0 1 0 {name=R2
value=\{R\}
footprint=1206
device=resistor
m=1}
C {capa.sym} 370 -250 3 1 {name=C2
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 530 30 1 0 {name=R3
value=\{R\}}
C {res.sym} 700 -230 3 1 {name=R4
value=\{R\}}
C {gnd.sym} -140 110 0 0 {name=l1 lab=GND}
C {gnd.sym} 260 100 0 0 {name=l2 lab=GND}
C {gnd.sym} 600 130 0 0 {name=l3 lab=GND}
C {res.sym} 380 210 1 0 {name=R6
value=\{R\}}
C {res.sym} 530 210 1 0 {name=R7
value=\{R\}
}
C {res.sym} 190 350 1 0 {name=R8
value=\{RQ\}}
C {res.sym} 190 410 1 0 {name=R9
value=\{RH\}}
C {gnd.sym} 260 450 0 0 {name=l4 lab=GND}
C {code_shown.sym} -670 150 0 0 {name=NGSPICE only_toplevel=true 
value="
.param R=1.6k C=100n RH=R/1.0 RQ=4.7k
.control
save all
ac lin 1000 0.8 2k
* tran 0.1m 10m 5m
write toplevel.raw
plot vdb(hpf) vdb(bpf) vdb(lpf) vdb(bsf)
.endc
"}
C {launcher.sym} 40 550 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {launcher.sym} 280 570 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {vsource.sym} 110 450 0 1 {name=Vin
value="
+ PULSE(-0.2 0.2 0 0.1u 0.1u 0.5m 1m 10)
+ AC 1
"}
C {gnd.sym} 110 480 0 0 {name=l5 lab=GND}
C {opin.sym} 190 -260 0 0 {name=p3 lab=bpf}
C {opin.sym} 530 -250 0 0 {name=p2 lab=lpf}
C {opin.sym} 880 60 0 0 {name=p4 lab=hpf}
C {opin.sym} 530 380 0 0 {name=p5 lab=bsf}
C {ota-5t.sym} -10 60 0 0 {name=x1}
C {ota-5t.sym} 360 30 0 0 {name=x2}
C {ota-5t.sym} 700 60 0 0 {name=x3}
C {ota-5t.sym} 360 380 0 0 {name=x4}
C {vsource.sym} -10 170 0 0 {name=V1 value=0 savecurrent=false}
C {gnd.sym} -10 200 0 0 {name=l12 lab=GND}
C {vsource.sym} 360 140 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 360 170 0 0 {name=l13 lab=GND}
C {vsource.sym} 700 170 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 700 200 0 0 {name=l14 lab=GND}
C {vsource.sym} 360 490 0 0 {name=V4 value=0 savecurrent=false}
C {gnd.sym} 360 520 0 0 {name=l15 lab=GND}
C {devices/isource.sym} 30 -50 0 0 {name=I1 value=20u pwl(0 0 10u 0 11u 20u)"}
C {devices/isource.sym} 400 -80 0 0 {name=I2 value=20u pwl(0 0 10u 0 11u 20u)"}
C {devices/isource.sym} 740 -50 0 0 {name=I3 value=20u pwl(0 0 10u 0 11u 20u)"}
C {devices/isource.sym} 400 270 0 0 {name=I4 value=20u pwl(0 0 10u 0 11u 20u)"}
