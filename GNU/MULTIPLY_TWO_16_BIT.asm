
;<Program title>

jmp start

;data


;code
start: nop
LHLD 0000
SPHL 
LHLD 0002 
XCHG
LXI H,0000H 
LXI B,0000H
NEXT: DAD SP
JNC LOOP
INX B
LOOP: DCX D
MOV A,E
ORA D
JNZ NEXT
SHLD 0004
MOV L,C
MOV H,B
SHLD 0006
HLT