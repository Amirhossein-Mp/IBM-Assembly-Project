.data 
one: .zero 4
.text
.globl asm_main
asm_main:
    #Amirhossein_Mohammadpour
    #402170024
	stmg	%r6, %r15, 6*8(%r15)
	aghi	%r15, -160
	brasl	14,read_int
	lr	6,2 #loading n in 6
	la	13,1 # initilizing 13 with 1
	la	7,1 # initilizing 7 with 1 to shift in by n
	sll	7,0(6)
    xr 12,12
	afi 12,1
	lcr	12,12 # storing -1 in r12
circle:	
    larl 10,one
    l	10,0(10)
	sr	7,13
	cr	7,12
    larl 12,end2
	bc 8,0(12) # jump to end2 if equal
	lr	8,7
	xr	9,9		
	srdl    8,0(6)
	la 3,'{'
	lr	2,3
	brasl	14,print_char
	la	12,1
circle2:	
	sldl 	8,0(13)
	nr	8,13
	ar	10,13
	cr	10,6
	jh	end1
	cr	8,13
    larl 5,display
	bc 8,0(5)
    larl 5,circle2
	bc 15,0(5) # jump anyway to circle2
display:	cr	12,13
	je	display1
	la      2,','
    brasl   14,print_char
display1:	lr	2,'\n'
	brasl	14,print_int
	larl 12,one
    l	12,0(12)	
    larl 5,circle2
	bc 15,0(5) # jump anyway to circle2
end1:
	la	2,'}'
	brasl	14,print_char
	la	2,10
	brasl	14,print_char
    larl 5,circle # jump anyway to circle
	bc 15,0(5)
end2:
	aghi	%r15, 160
	lmg	%r6, %r15, 6*8(%r15)
	br	%r14
