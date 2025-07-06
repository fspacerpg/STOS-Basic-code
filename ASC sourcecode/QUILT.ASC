1 mode 0
2 key off : flash off : hide : curs off 
100 dim ARRAY#(50,50)
110 input A#,B#,C#,D#,K#
120 X#=0.1 : Y#=0.3
130 for N=1 to 20
140 X1#=A#*sin(2*pi*X#)+B#*sin(2*pi*X#)*cos(2*pi*Y#)+C#*sin(4*pi*X#)+D#*sin(6*pi*X#)*cos(4*pi*Y#)+K#*X#
150 X1#=X1#-int(X1#)
160 Y1#=A#*sin(2*pi*Y#)+B#*sin(2*pi*Y#)*cos(2*pi*X#)+C#*sin(4*pi*Y#)+D#*sin(6*pi*Y#)*cos(4*pi*X#)+K#*Y#
170 Y1#=Y1#-int(Y1#)
180 X#=X1# : Y#=Y1#
190 next N
200 for N=1 to 1000
210 X1#=A#*sin(2*pi*X#)+B#*sin(2*pi*X#)*cos(2*pi*Y#)+C#*sin(4*pi*X#)+D#*sin(6*pi*X#)*cos(4*pi*Y#)+K#*X#
220 X1#=X1#-int(X1#)
230 Y1#=A#*sin(2*pi*Y#)+B#*sin(2*pi*Y#)*cos(2*pi*X#)+C#*sin(4*pi*Y#)+D#*sin(6*pi*Y#)*cos(4*pi*X#)+K#*Y#
240 Y1#=Y1#-int(Y1#)
250 X#=X1# : Y#=Y1#
260 ARRAY#(50*X#,50*Y#)=ARRAY#(50*X#,50*Y#)+1
270 next N
280 for I=1 to 50
290 for J=1 to 50
300 for P=0 to 3
310 for Q=0 to 3
320 rem color selection
330 CL=ARRAY#(I,J)/5
340 if CL>15 then CL=15
350 XAXIS=I+50*P
360 YAXIS=J+50*Q
400 extension #N logic,XAXIS,YAXIS,CL
410 next Q
420 next P
430 next J
440 next I
450 stop 
