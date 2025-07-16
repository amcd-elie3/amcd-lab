v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 660 -280 660 -240 {lab=#net1}
N 280 -440 350 -440 {lab=inp}
N 390 -410 390 -390 {lab=#net2}
N 720 -390 910 -390 {lab=#net2}
N 910 -410 910 -390 {lab=#net2}
N 910 -530 910 -470 {lab=outp}
N 720 -560 720 -530 {lab=#net3}
N 720 -530 720 -470 {lab=#net3}
N 570 -560 570 -530 {lab=#net3}
N 670 -530 720 -530 {lab=#net3}
N 570 -530 570 -470 {lab=#net3}
N 570 -410 570 -390 {lab=#net2}
N 390 -390 570 -390 {lab=#net2}
N 720 -410 720 -390 {lab=#net2}
N 660 -390 720 -390 {lab=#net2}
N 790 -650 910 -650 {lab=vdd}
N 910 -650 910 -620 {lab=vdd}
N 720 -650 720 -620 {lab=vdd}
N 570 -650 720 -650 {lab=vdd}
N 570 -650 570 -620 {lab=vdd}
N 510 -650 570 -650 {lab=vdd}
N 390 -650 390 -620 {lab=vdd}
N 660 -390 660 -340 {lab=#net2}
N 570 -390 660 -390 {lab=#net2}
N 460 -310 620 -310 {lab=ibias}
N 390 -350 390 -340 {lab=ibias}
N 390 -280 390 -240 {lab=#net4}
N 390 -350 460 -350 {lab=ibias}
N 460 -210 620 -210 {lab=ibias}
N 650 -440 680 -440 {lab=cm}
N 650 -500 650 -440 {lab=cm}
N 610 -440 650 -440 {lab=cm}
N 390 -180 390 -160 {lab=vss}
N 660 -180 660 -160 {lab=vss}
N 390 -160 660 -160 {lab=vss}
N 950 -440 1010 -440 {lab=inn}
N 650 -500 1010 -500 {lab=cm}
N 910 -530 1010 -530 {lab=outp}
N 910 -560 910 -530 {lab=outp}
N 340 -310 390 -310 {lab=vss}
N 300 -210 300 -160 {lab=vss}
N 300 -160 390 -160 {lab=vss}
N 280 -160 300 -160 {lab=vss}
N 300 -210 390 -210 {lab=vss}
N 660 -310 760 -310 {lab=vss}
N 760 -210 760 -160 {lab=vss}
N 660 -160 760 -160 {lab=vss}
N 660 -210 760 -210 {lab=vss}
N 760 -280 760 -210 {lab=vss}
N 280 -350 390 -350 {lab=ibias}
N 330 -590 390 -590 {lab=vdd}
N 330 -650 390 -650 {lab=vdd}
N 330 -650 330 -590 {lab=vdd}
N 270 -650 330 -650 {lab=vdd}
N 720 -590 790 -590 {lab=vdd}
N 790 -650 790 -590 {lab=vdd}
N 720 -650 790 -650 {lab=vdd}
N 910 -590 970 -590 {lab=vdd}
N 970 -650 970 -590 {lab=vdd}
N 910 -650 970 -650 {lab=vdd}
N 510 -590 570 -590 {lab=vdd}
N 510 -650 510 -590 {lab=vdd}
N 390 -650 510 -650 {lab=vdd}
N 610 -590 620 -590 {lab=#net3}
N 620 -590 620 -530 {lab=#net3}
N 570 -530 620 -530 {lab=#net3}
N 670 -590 680 -590 {lab=#net3}
N 670 -590 670 -530 {lab=#net3}
N 620 -530 670 -530 {lab=#net3}
N 620 -590 670 -590 {lab=#net3}
N 390 -530 390 -470 {lab=outn}
N 850 -590 870 -590 {lab=#net3}
N 430 -590 450 -590 {lab=#net3}
N 450 -590 450 -530 {lab=#net3}
N 450 -530 570 -530 {lab=#net3}
N 850 -590 850 -530 {lab=#net3}
N 720 -530 850 -530 {lab=#net3}
N 280 -530 390 -530 {lab=outn}
N 390 -560 390 -530 {lab=outn}
N 300 -310 300 -210 {lab=vss}
N 860 -440 860 -280 {lab=vss}
N 760 -310 760 -280 {lab=vss}
N 460 -350 460 -310 {lab=ibias}
N 430 -310 460 -310 {lab=ibias}
N 460 -310 460 -210 {lab=ibias}
N 430 -210 460 -210 {lab=ibias}
N 720 -440 860 -440 {lab=vss}
N 760 -280 860 -280 {lab=vss}
N 860 -440 910 -440 {lab=vss}
N 480 -440 570 -440 {lab=vss}
N 480 -440 480 -380 {lab=vss}
N 390 -440 480 -440 {lab=vss}
N 340 -380 480 -380 {lab=vss}
N 340 -380 340 -310 {lab=vss}
N 300 -310 340 -310 {lab=vss}
C {sg13g2_pr/sg13_lv_pmos.sym} 590 -590 0 1 {name=M3
l=0.5u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 700 -590 0 0 {name=M4
l=0.5u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 370 -440 0 0 {name=M1
l=0.5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 930 -440 0 1 {name=M2
l=0.5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} 1010 -440 0 1 {name=p5 lab=inn}
C {sg13g2_pr/sg13_lv_nmos.sym} 640 -310 0 0 {name=M11
l=0.5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 890 -590 0 0 {name=M8
l=0.3u
w=2.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 410 -590 0 1 {name=M7
l=0.3u
w=2.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/opin.sym} 1010 -530 0 0 {name=p6 lab=outp}
C {devices/opin.sym} 280 -530 0 1 {name=p13 lab=outn}
C {sg13g2_pr/sg13_lv_nmos.sym} 590 -440 0 1 {name=M5
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 700 -440 0 0 {name=M6
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/iopin.sym} 270 -650 0 1 {name=p2 lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 640 -210 0 0 {name=M12
l=5u
w=47.5u
ng=10
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 410 -310 0 1 {name=M9
l=5u
w=47.5u
ng=10
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 410 -210 0 1 {name=M10
l=5u
w=47.5u
ng=10
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} 1010 -500 0 1 {name=p14 lab=cm}
C {devices/iopin.sym} 280 -160 0 1 {name=p15 lab=vss}
C {devices/ipin.sym} 280 -350 0 0 {name=p3 lab=ibias}
C {devices/ipin.sym} 280 -440 0 0 {name=p7 lab=inp}
