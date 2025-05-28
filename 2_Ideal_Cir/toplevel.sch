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
N 40 -120 140 -120 {lab=#net2}
N 140 -120 140 -0 {lab=#net2}
N 140 -0 160 -0 {lab=#net2}
N 110 -0 140 -0 {lab=#net2}
N 250 -0 280 -0 {lab=#net3}
N 250 -80 340 -80 {lab=#net3}
N 250 -80 250 -0 {lab=#net3}
N 220 -0 250 -0 {lab=#net3}
N 400 -80 480 -80 {lab=#net4}
N 480 30 500 30 {lab=#net4}
N 480 -80 480 30 {lab=#net4}
N 460 30 480 30 {lab=#net4}
N 590 30 620 30 {lab=#net5}
N 590 -40 670 -40 {lab=#net5}
N 590 -40 590 30 {lab=#net5}
N 560 30 590 30 {lab=#net5}
N -240 -30 -210 -30 {lab=#net6}
N -240 -170 -240 -30 {lab=#net6}
N -240 -170 820 -170 {lab=#net6}
N 800 60 820 60 {lab=#net6}
N 820 -40 820 60 {lab=#net6}
N 730 -40 820 -40 {lab=#net6}
N 820 -170 820 -40 {lab=#net6}
N 140 -0 140 270 {lab=#net2}
N 140 270 160 270 {lab=#net2}
N 250 270 280 270 {lab=#net7}
N 250 190 350 190 {lab=#net7}
N 250 190 250 270 {lab=#net7}
N 220 270 250 270 {lab=#net7}
N 260 330 280 330 {lab=GND}
N 260 330 260 370 {lab=GND}
N 250 270 250 330 {lab=#net7}
N 220 330 250 330 {lab=#net7}
N 480 190 500 190 {lab=#net8}
N 460 300 480 300 {lab=#net8}
N 480 190 480 300 {lab=#net8}
N 410 190 480 190 {lab=#net8}
N 590 30 590 190 {lab=#net5}
N 560 190 590 190 {lab=#net5}
C {opamp.sym} -10 0 2 1 {}
C {res.sym} -180 -30 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 10 -120 3 1 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 190 0 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 370 -80 3 1 {name=C2
m=1
value=1p
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
C {res.sym} 530 30 1 0 {name=R5
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
