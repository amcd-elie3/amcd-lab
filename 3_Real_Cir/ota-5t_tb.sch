v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 -20 -50 -20 {
lab=vr1}
N -250 -200 -250 -180 {lab=v_dd}
N -290 -200 -250 -200 {lab=v_dd}
N -290 -200 -290 -100 {lab=v_dd}
N -250 -120 -250 -100 {lab=#net1}
N -530 10 -370 10 {lab=vf1}
N -530 10 -530 100 {lab=vf1}
N -250 60 -250 80 {lab=v_ena}
N -290 60 -290 160 {lab=v_ss}
N -50 -20 -50 40 {lab=vr1}
N -50 100 -50 160 {lab=v_ss}
N -290 160 -50 160 {lab=v_ss}
N -130 -20 -130 100 {lab=vr1}
N -190 -20 -130 -20 {
lab=vr1}
N -530 -50 -370 -50 {lab=v_in}
N -390 100 -130 100 {lab=vr1}
N -530 100 -450 100 {lab=vf1}
N 630 -20 710 -20 {
lab=#net2}
N 510 -200 510 -180 {lab=v_dd}
N 470 -200 510 -200 {lab=v_dd}
N 470 -200 470 -100 {lab=v_dd}
N 510 -120 510 -100 {lab=#net3}
N 230 10 390 10 {lab=#net4}
N 230 10 230 100 {lab=#net4}
N 510 60 510 80 {lab=v_ena}
N 470 60 470 160 {lab=v_ss}
N 710 -20 710 40 {lab=#net2}
N 710 100 710 160 {lab=v_ss}
N 470 160 710 160 {lab=v_ss}
N 630 -20 630 100 {lab=#net2}
N 570 -20 630 -20 {
lab=#net2}
N 230 -50 390 -50 {lab=v_in}
N 350 100 370 100 {
lab=#net5}
N 470 160 470 220 {lab=v_ss}
N 350 100 350 140 {lab=#net5}
N 330 100 350 100 {
lab=#net5}
N 430 100 630 100 {lab=#net2}
N 230 100 270 100 {lab=#net4}
N 350 200 350 220 {lab=v_ss}
N 350 220 470 220 {lab=v_ss}
N -610 470 -610 490 {
lab=GND}
N -450 470 -450 490 {
lab=GND}
N -450 310 -450 330 {lab=v_ss}
N -610 390 -610 410 {lab=v_dd}
N -450 390 -450 410 {lab=v_ss}
N -610 310 -610 330 {lab=v_ss}
N -610 230 -610 250 {lab=v_in}
N -450 230 -450 250 {lab=v_ena}
C {devices/lab_pin.sym} -290 -200 0 0 {name=p5 sig_type=std_logic lab=v_dd}
C {devices/lab_pin.sym} -290 160 0 0 {name=p6 sig_type=std_logic lab=v_ss}
C {devices/capa.sym} -50 70 0 0 {name=C2
value=50f}
C {devices/lab_wire.sym} -530 -50 0 0 {name=p9 sig_type=std_logic lab=v_in}
C {devices/isource.sym} -250 -150 0 0 {name=I1 value=20u pwl(0 0 10u 0 11u 20u)"}
C {devices/lab_wire.sym} -250 80 0 1 {name=p10 sig_type=std_logic lab=v_ena}
C {devices/vsource.sym} -420 100 3 0 {name=Vtest1 value="dc 0 ac 1"}
C {devices/lab_wire.sym} -490 100 0 0 {name=p3 sig_type=std_logic lab=vf1}
C {devices/lab_wire.sym} -340 100 0 0 {name=p13 sig_type=std_logic lab=vr1}
C {devices/lab_pin.sym} 470 -200 0 0 {name=p14 sig_type=std_logic lab=v_dd}
C {devices/lab_pin.sym} 470 160 0 0 {name=p15 sig_type=std_logic lab=v_ss}
C {devices/capa.sym} 710 70 0 0 {name=C1
value=50f}
C {devices/lab_wire.sym} 230 -50 0 0 {name=p17 sig_type=std_logic lab=v_in}
C {devices/isource.sym} 510 -150 0 0 {name=I2 value=20u pwl(0 0 10u 0 11u 20u)"}
C {devices/lab_wire.sym} 510 80 0 1 {name=p18 sig_type=std_logic lab=v_ena}
C {devices/ammeter.sym} 400 100 1 0 {name=Vir1 savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 300 100 1 0 {name=Vif1 savecurrent=true spice_ignore=0}
C {devices/isource.sym} 350 170 2 0 {name=Itest1 value="dc 0 ac 1"}
C {ota-5t.sym} -290 -20 0 0 {name=x1}
C {ota-5t.sym} 470 -20 0 0 {name=x2}
C {devices/code_shown.sym} -1210 290 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -1220 -310 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write ota-5t_tb.raw
set appendwrite

* AC Analysis
ac dec 101 1 100G
remzerovec
write ota-5t_tb-loopgain.raw
set appendwrite

* Middlebrook's Method
let tv=-v(vr1)/v(vf1)
let ti=-i(vir1)/i(vif1)
let tmb=(tv*ti - 1)/(tv + ti + 2)

plot db(tmb) ylabel 'Magnitude - Middlebrook'
plot 180/pi*cphase(tmb) ylabel 'Phase - Middlebrook'

write ota-5t_tb.raw

*quit
.endc
"}
C {devices/vsource.sym} -610 440 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} -610 490 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -610 390 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} -450 440 0 0 {name=Vss value=0}
C {devices/gnd.sym} -450 490 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -450 390 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} -610 280 0 0 {name=Vin value="dc 0.75"}
C {devices/lab_wire.sym} -610 230 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {devices/vsource.sym} -450 280 0 0 {name=Venable value=1.5 savecurrent=false}
C {devices/lab_wire.sym} -450 230 0 1 {name=p8 sig_type=std_logic lab=v_ena}
C {devices/lab_pin.sym} -610 330 0 0 {name=p11 sig_type=std_logic lab=v_ss}
C {devices/lab_pin.sym} -450 330 0 0 {name=p12 sig_type=std_logic lab=v_ss}
C {devices/launcher.sym} -170 310 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -170 250 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
