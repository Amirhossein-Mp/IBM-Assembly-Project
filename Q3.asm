.text
hanoi:
	stmg	%r6, %r15, 6*8(%r15)
	aghi	%r15, -160
    #   ---------------------
    #Amirhossein_Mohammadpour
    #402170024
    la 10,1
    cr 10,9
    je  end

    lr 10,8
    lr 8,7
    lr 7,10
    bctr 9,0
    brasl 14,hanoi

    la 2,'('
    brasl 14,print_char
    lr 2,6 # loading from 
    brasl 14,print_int
    la 2,','
    brasl 14,print_char
    lr 2,7 # loading to 
    brasl 14,print_int
    la 2,')'
    brasl 14,print_char 
    brasl 14,print_nl
    # now i have first (from) in r6 , first (to) in r7 , first (aux) in r8

    lr 10,6 # (to) to (r11) 
    lr 6,8 # (from) to (aux) 
    lr 8,7 # (aux) to (r2)
    lr 7,10
    brasl 14,hanoi
    j end2
    #---------------------
    end:
    la 2,'('
    brasl 14,print_char
    lr 2,6 # loading from 
    brasl 14,print_int
    la 2,','
    brasl 14,print_char
    lr 2,8 # loading to 
    brasl 14,print_int
    la 2,')'
    brasl 14,print_char
    brasl 14,print_nl
    end2:
	aghi	%r15, 160
	lmg	%r6, %r15, 6*8(%r15)
	br	%r14
.globl asm_main
asm_main:
	stmg	%r6, %r15, 6*8(%r15)
	aghi	%r15, -160
    # ---------------------------	
    brasl 14,read_int
    xr 6,6 # storing from in r6 
    la 8,2 # storing aux in r7
    la 7,1 # storing to in r8
    lr 9,2 # storing n in r9 
    brasl 14,hanoi
    # ---------------------------	
	aghi	%r15, 160
	lmg	%r6, %r15, 6*8(%r15)
	br	%r14
