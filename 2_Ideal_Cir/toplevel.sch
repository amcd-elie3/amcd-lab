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
N 40 -120 140 -120 {lab=bpf_out}
N 140 -120 140 -0 {lab=bpf_out}
N 140 -0 160 -0 {lab=bpf_out}
N 110 -0 140 -0 {lab=bpf_out}
N 250 -0 280 -0 {lab=#net2}
N 250 -80 340 -80 {lab=#net2}
N 250 -80 250 -0 {lab=#net2}
N 220 -0 250 -0 {lab=#net2}
N 400 -80 480 -80 {lab=lpf_out}
N 490 30 500 30 {lab=lpf_out}
N 480 -80 480 30 {lab=lpf_out}
N 460 30 480 30 {lab=lpf_out}
N 590 30 620 30 {lab=#net3}
N 590 -40 670 -40 {lab=#net3}
N 590 -40 590 30 {lab=#net3}
N 560 30 590 30 {lab=#net3}
N -240 -30 -210 -30 {lab=hpf_out}
N -240 -170 -240 -30 {lab=hpf_out}
N -240 -170 830 -170 {lab=hpf_out}
N 730 -40 830 -40 {lab=hpf_out}
N 140 80 140 270 {lab=bpf_out}
N 140 270 160 270 {lab=bpf_out}
N 250 270 280 270 {lab=#net4}
N 250 190 350 190 {lab=#net4}
N 250 190 250 270 {lab=#net4}
N 220 270 250 270 {lab=#net4}
N 260 330 280 330 {lab=GND}
N 260 330 260 370 {lab=GND}
N 250 270 250 330 {lab=#net4}
N 220 330 250 330 {lab=#net4}
N 480 190 500 190 {lab=bsf_out}
N 460 300 480 300 {lab=bsf_out}
N 480 190 480 300 {lab=bsf_out}
N 410 190 480 190 {lab=bsf_out}
N 590 30 590 190 {lab=#net3}
N 560 190 590 190 {lab=#net3}
N 110 330 110 340 {lab=#net5}
N 110 330 160 330 {lab=#net5}
N 830 -40 830 60 {lab=hpf_out}
N 830 -170 830 -40 {lab=hpf_out}
N 830 60 880 60 {lab=hpf_out}
N 800 60 830 60 {lab=hpf_out}
N 490 90 510 90 {lab=lpf_out}
N 490 30 490 90 {lab=lpf_out}
N 480 30 490 30 {lab=lpf_out}
N 480 300 530 300 {lab=bsf_out}
N 140 80 160 80 {lab=bpf_out}
N 140 -0 140 80 {lab=bpf_out}
C {opamp.sym} -10 0 2 1 {}
C {res.sym} -180 -30 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 10 -120 3 1 {name=C1
m=1
value=16n
footprint=1206
device="ceramic capacitor"}
C {res.sym} 190 0 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 370 -80 3 1 {name=C2
m=1
value=16n
footprint=1206
device="ceramic capacitor"}
C {res.sym} 530 30 1 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 700 -40 3 1 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -90 70 0 0 {name=l1 lab=GND}
C {gnd.sym} 260 100 0 0 {name=l2 lab=GND}
C {gnd.sym} 600 130 0 0 {name=l3 lab=GND}
C {opamp.sym} 340 30 2 1 {}
C {opamp.sym} 680 60 2 1 {}
C {opamp.sym} 340 300 2 1 {}
C {res.sym} 380 190 1 0 {name=R6
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 530 190 1 0 {name=R7
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 190 270 1 0 {name=R8
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 190 330 1 0 {name=R9
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 260 370 0 0 {name=l4 lab=GND}
C {code_shown.sym} -670 150 0 0 {name=NGSPICE only_toplevel=true 
value="
.control
ac dec 101 100 100k
plot vdb(hpf_out) vdb(bpf_out) vdb(lpf_out) vdb(bsf_out) ; Gain vs Frequency
plot vp(hpf_out) vp(bpf_out) vp(lpf_out) vp(bsf_out)    ; Phase vs Frequency
.endc
"}
C {launcher.sym} 40 510 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {launcher.sym} 290 510 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {vsource.sym} 110 370 0 0 {name=Vin
value=0
type=ac
ac_mag=1
ac_phase=0
m=1}
C {lab_pin.sym} 880 60 0 1 {name=p1 sig_type=std_logic lab=hpf_out}
C {lab_pin.sym} 510 90 0 1 {name=p2 sig_type=std_logic lab=lpf_out}
C {lab_pin.sym} 530 300 0 1 {name=p3 sig_type=std_logic lab=bsf_out}
C {lab_pin.sym} 160 80 0 1 {name=p4 sig_type=std_logic lab=bpf_out}
C {gnd.sym} 110 400 0 0 {name=l5 lab=GND}
