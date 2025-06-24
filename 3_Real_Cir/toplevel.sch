v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 240 60 240 100 {lab=GND}
N 630 90 680 90 {lab=GND}
N 630 90 630 130 {lab=GND}
N 140 -220 190 -220 {lab=bpf}
N 140 -0 160 -0 {lab=bpf}
N 250 -190 340 -190 {lab=#net1}
N 220 -0 250 -0 {lab=#net1}
N 460 30 480 30 {lab=lpf}
N 590 30 680 30 {lab=#net2}
N 560 30 590 30 {lab=#net2}
N -240 -90 -210 -90 {lab=hpf}
N 790 -180 890 -180 {lab=hpf}
N 140 310 160 310 {lab=bpf}
N 250 200 350 200 {lab=#net3}
N 460 400 480 400 {lab=bsf}
N 560 200 590 200 {lab=#net2}
N 110 370 110 380 {lab=#net4}
N 110 370 160 370 {lab=#net4}
N 860 60 890 60 {lab=hpf}
N 480 30 500 30 {lab=lpf}
N 480 400 530 400 {lab=bsf}
N 140 -0 140 310 {lab=bpf}
N 890 60 940 60 {lab=hpf}
N 90 0 140 0 {lab=bpf}
N -120 -90 -120 -30 {lab=#net5}
N -140 30 -140 50 {lab=GND}
N -140 30 -90 30 {lab=GND}
N 250 -0 280 -0 {lab=#net1}
N 480 -190 530 -190 {lab=lpf}
N 480 200 500 200 {lab=bsf}
N 890 -180 890 60 {lab=hpf}
N 590 -180 590 30 {lab=#net2}
N 480 -190 480 30 {lab=lpf}
N 400 -190 480 -190 {lab=lpf}
N 250 -190 250 -0 {lab=#net1}
N 40 -220 140 -220 {lab=bpf}
N 250 310 250 370 {lab=#net3}
N 220 310 250 310 {lab=#net3}
N 250 370 280 370 {lab=#net3}
N 220 370 250 370 {lab=#net3}
N -10 -160 -10 -80 {lab=v_dd}
N -10 -160 30 -160 {lab=v_dd}
N 30 -160 30 -140 {lab=v_dd}
N 360 -130 360 -40 {lab=v_dd}
N 360 -130 400 -130 {lab=v_dd}
N 400 -130 400 -110 {lab=v_dd}
N 760 -100 760 -20 {lab=v_dd}
N 760 -100 800 -100 {lab=v_dd}
N 800 -100 800 -80 {lab=v_dd}
N 360 260 360 320 {lab=v_dd}
N 360 260 400 260 {lab=v_dd}
N -120 -220 -120 -90 {lab=#net5}
N 140 -220 140 -0 {lab=bpf}
N 230 430 230 470 {lab=GND}
N 230 430 280 430 {lab=GND}
N 240 60 280 60 {lab=GND}
N -240 -280 -240 -90 {lab=hpf}
N 890 -280 890 -180 {lab=hpf}
N 590 30 590 200 {lab=#net2}
N 590 -180 730 -180 {lab=#net2}
N -240 -280 890 -280 {lab=hpf}
N 250 200 250 310 {lab=#net3}
N 480 200 480 400 {lab=bsf}
N 410 200 480 200 {lab=bsf}
N -150 -90 -120 -90 {lab=#net5}
N -120 -30 -90 -30 {lab=#net5}
N -120 -220 -20 -220 {lab=#net5}
N -150 640 -150 650 {lab=GND}
N -270 640 -270 650 {lab=GND}
N -150 570 -150 580 {lab=v_dd}
N -270 570 -270 580 {lab=v_ss}
N 400 480 400 510 {lab=v_en}
N 400 510 410 510 {lab=v_en}
N -30 570 -30 580 {lab=v_en}
N -30 640 -30 650 {lab=v_ss}
N 360 480 360 510 {lab=v_ss}
N 350 510 360 510 {lab=v_ss}
N 400 110 400 140 {lab=v_en}
N 400 140 410 140 {lab=v_en}
N 360 110 360 140 {lab=v_ss}
N 350 140 360 140 {lab=v_ss}
N 30 80 30 110 {lab=v_en}
N 30 110 40 110 {lab=v_en}
N -10 80 -10 110 {lab=v_ss}
N -20 110 -10 110 {lab=v_ss}
N 800 140 800 170 {lab=v_en}
N 800 170 810 170 {lab=v_en}
N 760 140 760 170 {lab=v_ss}
N 750 170 760 170 {lab=v_ss}
C {res.sym} -180 -90 1 0 {name=R1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {capa.sym} 10 -220 3 1 {name=C1
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 190 0 1 0 {name=R2
value=\{R\}
footprint=1206
device=resistor
m=1}
C {capa.sym} 370 -190 3 1 {name=C2
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 530 30 1 0 {name=R3
value=\{R\}}
C {res.sym} 760 -180 3 1 {name=R4
value=\{R\}}
C {gnd.sym} -140 50 0 0 {name=l1 lab=GND}
C {gnd.sym} 240 100 0 0 {name=l2 lab=GND}
C {gnd.sym} 630 130 0 0 {name=l3 lab=GND}
C {res.sym} 380 200 1 0 {name=R6
value=\{R\}}
C {res.sym} 530 200 1 0 {name=R7
value=\{R\}
}
C {res.sym} 190 310 1 0 {name=R8
value=\{RQ\}}
C {res.sym} 190 370 1 0 {name=R9
value=\{RH\}}
C {gnd.sym} 230 470 0 0 {name=l4 lab=GND}
C {code_shown.sym} -500 160 0 0 {name=NGSPICE only_toplevel=true 
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
C {launcher.sym} 80 710 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; ngspice -b simulations/toplevel.spice"}
C {launcher.sym} 290 710 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {vsource.sym} 110 410 0 1 {name=Vin
value="
+ PULSE(-0.2 0.2 0 0.1u 0.1u 0.5m 1m 10)
+ AC 1
"}
C {gnd.sym} 110 440 0 0 {name=l5 lab=GND}
C {opin.sym} 190 -220 0 0 {name=p3 lab=bpf}
C {opin.sym} 530 -190 0 0 {name=p2 lab=lpf}
C {opin.sym} 940 60 0 0 {name=p4 lab=hpf}
C {opin.sym} 530 400 0 0 {name=p5 lab=bsf}
C {ota-5t.sym} -10 0 0 0 {name=x1}
C {ota-5t.sym} 360 30 0 0 {name=x2}
C {ota-5t.sym} 760 60 0 0 {name=x3}
C {ota-5t.sym} 360 400 0 0 {name=x4}
C {devices/isource.sym} 30 -110 0 0 {name=I1 value=20u pwl(0 0 10u 0 11u 20u)"}
C {devices/isource.sym} 400 -80 0 0 {name=I2 value=20u pwl(0 0 10u 0 11u 20u)"}
C {devices/isource.sym} 800 -50 0 0 {name=I3 value=20u pwl(0 0 10u 0 11u 20u)"}
C {devices/isource.sym} 400 290 0 0 {name=I4 value=20u pwl(0 0 10u 0 11u 20u)"}
C {devices/lab_pin.sym} -10 -160 0 0 {name=p1 sig_type=std_logic lab=v_dd}
C {devices/lab_pin.sym} 760 -100 0 0 {name=p7 sig_type=std_logic lab=v_dd}
C {devices/lab_pin.sym} 360 260 0 0 {name=p8 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} -150 610 0 0 {name=Vdd value=1.5}
C {devices/lab_pin.sym} -150 570 0 0 {name=p6 sig_type=std_logic lab=v_dd}
C {devices/lab_pin.sym} 360 -130 0 0 {name=p9 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} -270 610 0 0 {name=Vss value=0}
C {devices/gnd.sym} -270 650 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -30 610 0 0 {name=Venable value="1.5" savecurrent=false}
C {gnd.sym} -150 650 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -270 570 0 0 {name=p10 sig_type=std_logic lab=v_ss}
C {devices/lab_pin.sym} 410 510 0 1 {name=p11 sig_type=std_logic lab=v_en}
C {devices/lab_pin.sym} -30 570 0 0 {name=p12 sig_type=std_logic lab=v_en}
C {devices/lab_pin.sym} -30 650 0 0 {name=p13 sig_type=std_logic lab=v_ss}
C {devices/lab_pin.sym} 350 510 0 0 {name=p14 sig_type=std_logic lab=v_ss}
C {devices/lab_pin.sym} 410 140 0 1 {name=p15 sig_type=std_logic lab=v_en}
C {devices/lab_pin.sym} 350 140 0 0 {name=p16 sig_type=std_logic lab=v_ss}
C {devices/lab_pin.sym} 40 110 0 1 {name=p17 sig_type=std_logic lab=v_en}
C {devices/lab_pin.sym} -20 110 0 0 {name=p18 sig_type=std_logic lab=v_ss}
C {devices/lab_pin.sym} 810 170 0 1 {name=p19 sig_type=std_logic lab=v_en}
C {devices/lab_pin.sym} 750 170 0 0 {name=p20 sig_type=std_logic lab=v_ss}
C {devices/code_shown.sym} -500 410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
