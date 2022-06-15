(Scribbled version of C:\Users\CANERI~1\AppData\Local\Temp\ink_ext_XXXXXX.svg8TXTL1 @ 500.00)
( unicorn.py --tab="plotter_setup" --pen-up-angle=90 --pen-down-angle=90 --start-delay=300 --stop-delay=300 --xy-feedrate=500 --z-feedrate=150 --z-height=0 --finished-height=0 --register-pen=true --x-home=0 --y-home=0 --num-copies=1 --continuous=false --pause-on-layer-change=false C:\Users\CANERI~1\AppData\Local\Temp\ink_ext_XXXXXX.svg8TXTL1 )
G21 (metric ftw)
G90 (absolute mode)
G92 X0.00 Y0.00 Z0.00 (you are here)

M300 S90 (pen down)
G4 P300 (wait 300ms)
M300 S90 (pen up)
G4 P300 (wait 300ms)
M18 (disengage drives)
M01 (Was registration test successful?)
M17 (engage drives if YES, and continue)

(Polyline consisting of 1 segments.)
G1 X51.27 Y69.59 F500.00
M300 S90.00 (pen down)
G4 P300 (wait 300ms)
G1 X50.67 Y45.41 F500.00
G1 X70.02 Y31.20 F500.00
G1 X47.11 Y24.30 F500.00
G1 X39.73 Y1.29 F500.00
G1 X26.17 Y21.21 F500.00
G1 X2.26 Y21.20 F500.00
G1 X16.79 Y40.41 F500.00
G1 X9.39 Y63.41 F500.00
G1 X31.93 Y55.36 F500.00
G1 X51.27 Y69.59 F500.00
M300 S90.00 (pen up)
G4 P300 (wait 300ms)


(end of print job)
M300 S90.00 (pen up)
G4 P300 (wait 300ms)
M300 S255 (turn off servo)
G1 X0 Y0 F500.00
G1 Z0.00 F150.00 (go up to finished level)
G1 X0.00 Y0.00 F500.00 (go home)
M18 (drives off)
