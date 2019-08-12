;Subtract
;swaraj pal
;Roll : 35000117024

jmp start

start: nop
LXI D,974BH ;store in DE register-pair
LXI H,587CH ;store in HL register-pair
MOV A,E     ;A <-- E
SUB L       ;A <-- A - L
MOV L,A     ;store result in L register
MOV A,D     ;A <-- D
SBB H       ;A <-- A - H(subtract with borrow)
MOV H,A     ;store result in H register

hlt