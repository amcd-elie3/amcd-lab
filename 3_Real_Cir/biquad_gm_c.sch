v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 17 -223 17 -203 {lab=vinp}
N 147 -223 147 -203 {lab=vinn}
N 267 -223 267 -203 {lab=vcm}
N 125 328 125 350 {lab=vss}
N 125 350 133 350 {lab=vss}
N 132 169 132 191 {lab=vdd}
N 132 169 140 169 {lab=vdd}
N 415 328 415 350 {lab=vss}
N 415 350 423 350 {lab=vss}
N 422 169 422 191 {lab=vdd}
N 422 169 430 169 {lab=vdd}
N 675 328 675 350 {lab=vss}
N 675 350 683 350 {lab=vss}
N 682 169 682 191 {lab=vdd}
N 682 169 690 169 {lab=vdd}
N 955 328 955 350 {lab=vss}
N 955 350 963 350 {lab=vss}
N 962 169 962 191 {lab=vdd}
N 962 169 970 169 {lab=vdd}
N 190 260 200 260 {lab=vcm}
N 480 260 490 260 {lab=vcm}
N 740 260 750 260 {lab=vcm}
N 1020 260 1030 260 {lab=vcm}
N 190 230 240 230 {lab=#net1}
N 190 290 240 290 {lab=#net2}
N 580 290 600 290 {lab=#net1}
N 740 230 780 230 {lab=outn}
N 740 290 780 290 {lab=#net3}
N 240 290 310 290 {lab=#net2}
N 320 230 340 230 {lab=#net2}
N 320 290 340 290 {lab=#net1}
N 240 230 310 230 {lab=#net1}
N 860 230 880 230 {lab=#net3}
N 860 290 880 290 {lab=outn}
N 780 230 860 290 {lab=outn}
N 780 290 860 230 {lab=#net3}
N 1020 230 1070 230 {lab=#net2}
N 700 100 940 100 {lab=outp}
N 580 230 600 230 {lab=#net2}
N 40 230 50 230 {lab=vinn}
N 40 100 40 230 {lab=vinn}
N 30 230 40 230 {lab=vinn}
N 40 100 80 100 {lab=vinn}
N 140 100 310 100 {lab=#net2}
N 310 100 310 230 {lab=#net2}
N 1070 0 1070 230 {lab=#net2}
N 310 0 1070 0 {lab=#net2}
N 310 0 310 100 {lab=#net2}
N 320 100 320 230 {lab=#net2}
N 310 230 320 230 {lab=#net2}
N 320 100 500 100 {lab=#net2}
N 500 100 500 230 {lab=#net2}
N 480 230 500 230 {lab=#net2}
N 580 100 640 100 {lab=#net2}
N 580 100 580 230 {lab=#net2}
N 530 230 580 230 {lab=#net2}
N 530 210 530 230 {lab=#net2}
N 500 230 530 230 {lab=#net2}
N 530 140 530 150 {lab=GND}
N 580 290 580 420 {lab=#net1}
N 500 290 580 290 {lab=#net1}
N 680 420 860 420 {lab=outn}
N 580 420 620 420 {lab=#net1}
N 860 290 860 420 {lab=outn}
N 1020 290 1070 290 {lab=#net1}
N 500 290 500 420 {lab=#net1}
N 320 420 500 420 {lab=#net1}
N 320 290 320 420 {lab=#net1}
N 480 290 500 290 {lab=#net1}
N 310 290 320 290 {lab=#net1}
N 310 290 310 420 {lab=#net1}
N 160 420 310 420 {lab=#net1}
N 40 290 50 290 {lab=vinp}
N 40 420 100 420 {lab=vinp}
N 40 290 40 420 {lab=vinp}
N 30 290 40 290 {lab=vinp}
N 1070 290 1070 530 {lab=#net1}
N 310 530 1070 530 {lab=#net1}
N 310 420 310 530 {lab=#net1}
N 860 420 940 420 {lab=outn}
N 103 169 111 169 {lab=ibias}
N 111 169 111 191 {lab=ibias}
N 401 169 401 191 {lab=ibias}
N 661 169 661 191 {lab=ibias}
N 941 169 941 191 {lab=ibias}
N 393 169 401 169 {lab=ibias}
N 653 169 661 169 {lab=ibias}
N 933 169 941 169 {lab=ibias}
N 355 -140 355 -130 {lab=GND}
N 355 -218 355 -200 {lab=vss}
N 453 -221 464 -221 {lab=ibias}
N 453 -221 453 -205 {lab=ibias}
N 453 -145 453 -117 {lab=vdd}
N 547 -222 547 -201 {lab=vdd}
N 547 -142 547 -132 {lab=GND}
N 453 -117 463 -117 {lab=vdd}
C {vsource.sym} 17 -173 0 0 {name=Vinp value="DC 0.5 AC 0.5"}
C {gnd.sym} 17 -143 0 0 {name=l2 lab=GND}
C {vsource.sym} 147 -173 0 0 {name=Vinn value="DC 0.5 AC -0.5"}
C {gnd.sym} 147 -143 0 0 {name=l4 lab=GND}
C {vsource.sym} 267 -173 0 0 {name=Vcm value=0.5 savecurrent=false}
C {gnd.sym} 267 -143 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 620 -380 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
option sparse
save all
op
write biquad_gm_c.raw
set appendwrite

ac dec 100 1k 100MEG
write biquad_gm_c.raw
let vod=v(outp)-v(outn)
plot db(v(vod))

.endc
"}
C {launcher.sym} 90 -360 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/launcher.sym} 90 -320 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {opin.sym} 17 -223 0 0 {name=p3 lab=vinp}
C {opin.sym} 147 -223 0 0 {name=p4 lab=vinn}
C {opin.sym} 267 -223 0 0 {name=p6 lab=vcm}
C {ota_gm_100u.sym} 130 260 0 0 {name=x1}
C {capa.sym} 130 420 3 1 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 30 290 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {lab_wire.sym} 30 230 0 0 {name=p2 sig_type=std_logic lab=vinn
}
C {lab_wire.sym} 200 260 0 1 {name=p12 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 133 350 0 1 {name=p13 sig_type=std_logic lab=vss}
C {ota_gm_100u.sym} 420 260 0 0 {name=x2}
C {lab_wire.sym} 490 260 0 1 {name=p20 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 423 350 0 1 {name=p21 sig_type=std_logic lab=vss}
C {lab_wire.sym} 430 169 0 1 {name=p23 sig_type=std_logic lab=vdd}
C {ota_gm_100u.sym} 680 260 0 0 {name=x3}
C {lab_wire.sym} 750 260 0 1 {name=p26 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 683 350 0 1 {name=p28 sig_type=std_logic lab=vss}
C {lab_wire.sym} 690 169 0 1 {name=p29 sig_type=std_logic lab=vdd}
C {ota_gm_100u.sym} 960 260 0 0 {name=x4}
C {lab_wire.sym} 1030 260 0 1 {name=p32 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 963 350 0 1 {name=p33 sig_type=std_logic lab=vss}
C {lab_wire.sym} 970 169 0 1 {name=p35 sig_type=std_logic lab=vdd}
C {capa.sym} 860 70 2 1 {name=C6
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 670 100 3 0 {name=C8
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 940 100 0 1 {name=p16 sig_type=std_logic lab=outp}
C {capa.sym} 110 100 3 0 {name=C4
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 860 40 2 1 {name=l8 lab=GND}
C {capa.sym} 530 180 2 1 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 530 140 2 1 {name=l9 lab=GND}
C {capa.sym} 650 420 3 1 {name=C7
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 860 450 0 0 {name=C5
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 860 480 0 0 {name=l10 lab=GND}
C {lab_wire.sym} 940 420 0 1 {name=p18 sig_type=std_logic lab=outn}
C {capa.sym} 530 320 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 530 350 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 140 169 0 1 {name=p5 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 103 169 0 0 {name=p7 sig_type=std_logic lab=ibias}
C {lab_wire.sym} 393 169 0 0 {name=p8 sig_type=std_logic lab=ibias}
C {lab_wire.sym} 653 169 0 0 {name=p9 sig_type=std_logic lab=ibias}
C {lab_wire.sym} 933 169 0 0 {name=p10 sig_type=std_logic lab=ibias}
C {devices/vsource.sym} 355 -170 0 0 {name=Vss value=0}
C {devices/gnd.sym} 355 -130 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 355 -218 0 1 {name=p11 sig_type=std_logic lab=vss}
C {opin.sym} 463 -221 0 0 {name=p14 lab=ibias}
C {isource.sym} 453 -175 2 0 {name=I0 value=100u}
C {devices/vsource.sym} 547 -171 0 0 {name=Vdd value=1.5}
C {opin.sym} 547 -221 0 0 {name=p15 lab=vdd}
C {devices/gnd.sym} 547 -132 0 0 {name=l7 lab=GND}
C {opin.sym} 463 -117 0 0 {name=p17 lab=vdd}
