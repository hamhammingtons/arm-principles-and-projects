.data
numbers: .word 10, 20, 30, 40, 50 @ analogy of a list 

.text
.global _start

_start:
    @. 1. Offset (Doesnt change the registers value itself)
    @ =numbers is used to get the first index of numbers (roughly speaking)
    ldr r1, =numbers       @ r1 = X (x represents the address 10 (first index))
    ldr r2, [r1, #4]       @ reads X+4 -> r2 = 20
                           @ r1 is still X

    @ 2. PRE-INDEXED: move first, then access
    ldr r1, =numbers       @ reset r1 = X
    ldr r3, [r1, #4]!      @ r1 becomes X+4, then reads X+4 -> r3 = 20
                           @ r1 is now X+4

    @ 3. POST-INDEXED: access first, then move
    ldr r1, =numbers       @ reset r1 = X 
    ldr r4, [r1], #4       @ reads X -> r4 = 10, then r1 becomes X+4
                           @ r1 is now X+4

    bkpt