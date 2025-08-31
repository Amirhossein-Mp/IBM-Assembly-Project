.text
.globl asm_main
    asm_main:
    #Amirhossein_Mohammadpour
    #402170024
    stg     %r14, -4(%r15)
    lay     %r15, -8(%r15)
    # ---------------------------	
    brasl 14,read_int
    lr 9,2 # saving r2 in r9
loop: 
    brasl 14,print_int
    la 2,' '
    brasl 14,print_char
    la 10,1
    cr 9,10
    jz end
    la 10,2 # saving 2 in r9
    lr 7,9
    xr 6,6
    dr 6,10
    la 10,0
    cr 6,10
    jz even
    la 10,3
    mr 8,10
    la 9,1(9)
    lr 2,9
    j loop
even:
    lr 9,7
    lr 2,9
    j loop
    end:
    # ---------------------------	

    lay     %r15, 8(%r15)
    lg      %r14, -4(%r15)
    br      %r14
