10 hide 
20 curs off 
30 key off 
40 timer=0
50 COL=15
60 mode 0
70 S=255
80 dim C(S)
90 input "x,y:";J#,K#
100 input "  s:";QI#
105 input "pixels:";Q
110 cls
120 VAR#=COL/log(S)
130 for N=1 to S
140 C(N)=COL-int(log(N)*VAR#)
150 next N
160 rem Main Loop
170 M=128
180 repeat 
190 L#=QI#/M
200 H=Q/M
210 for J=0 to M-1
220 for K=0 to M-1
230 gosub 310
240 next K
250 next J
260 M=M*2
270 until M=256
280 print timer/50
290 end 
310 rem plotting square
320 X#=J#+L#*J
330 Y#=K#+L#*K
331 VM#=Y#
332 UM#=X#
340 N=-1 : XM#=0 : YM#=0
350 repeat 
360 Y2M#=YM#*YM#
370 X2M#=XM#*XM#
380 YM#=2.0*XM#*YM#+VM#
390 XM#=X2M#-Y2M#+UM#
400 N=N+1
410 until N=S or X2M#+Y2M#>=4.0
420 ink (C(N))
430 X=J*H
440 Y=K*H
460 bar X+H-1,Y+H-1 to X,Y
470 return 
