.text
.globl asm_main
    asm_main:
    stg     %r14, -4(%r15)
    lay     %r15, -8(%r15)
    # ---------------------------	
    brasl 14,read_int
    lr 6,2 # r6 keeps the result
    # r7 recognizes the operators
main_loop:
    #Amirhossein_Mohammadpour
    #402170024
    brasl 14,read_char
    la 7,38
    cr 7,2
    jz and
    la 7, 124
    cr 2,7
    jz or
    la 7,94
    cr 2,7
    jz xor
    la 7,126
    cr 2,7
    jz not
    la 7,10
    cr 2,7
    j end
    j main_loop
and: 
    brasl 14,read_int
    nr 6,2
    j main_loop
or: 
    brasl 14,read_int
    or 6,2
    j main_loop
xor:
    brasl 14,read_int
    xr 6,2
    j main_loop
not:
    la 7,1
    lcr 7,7
    xr 6,7
    j main_loop
end:
    lr 2,6
    brasl 14,print_int
    # ---------------------------	
    lay     %r15, 8(%r15)
    lg      %r14, -4(%r15)
    br      %r14
