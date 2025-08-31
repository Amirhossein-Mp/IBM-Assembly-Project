.text
.globl asm_main
asm_main:
	stmg	%r6, %r15, 6*8(%r15)
	aghi	%r15, -160
#-----------------------------
	#Amirhossein_Mohammadpour
    	#402170024
	brasl	%r14, read_int
	lr	10,2
	la	11,0
circle:
	lr	2,11
	brasl	%r14,kayyam 
	brasl	%r14, print_int
	la	2,' '
	brasl	%r14, print_char
	afi	11,1
	cr	11,10
    larl 4,triangle
	bc 2,0(4)
    larl 4,circle
	bc 15,0(4)
triangle:	
    brasl 14,print_nl
#------------------------------------
	aghi	%r15, 160
	lmg	%r6, %r15, 6*8(%r15)
	br	%r14
kayyam:
	stmg	%r6, %r15, 6*8(%r15)
	aghi	%r15, -160
#-------------------------------------
	cr	11,10
    larl 6,ihs
	bc 8,0(6)
	cijl	11,1,ihs
	bctr 10,0
	brasl	14,kayyam
	lr	9,2
	bctr 11,0
	brasl	14,kayyam	
	ar	2, 9
    larl 6,final
	bc 15,0(6)
    ihs:	
    xr 2,2
    afi 2,1
#------------------------------------
final:
	aghi	%r15, 160
	lmg	%r6, %r15, 6*8(%r15)
	br	%r14
