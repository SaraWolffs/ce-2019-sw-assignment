
    add r0, r4, rol #0
    eor x12, r0, ror #0
    add r8, x12, rol #8
    eor r4, r8, ror #0
    add r0, r4, rol #12
    eor x12, r0, ror #8
    add r8, x12, rol #24
    eor r4, r8, ror #12

    add r1, r5, rol #0
    eor x13, r1, ror #0
    add r9, x13, rol #8
    eor r5, r9, ror #0
    add r1, r5, rol #12
    eor x13, r1, ror #8
    add r9, x13, rol #24
    eor r5, r9, ror #12

    stmia sp, {r12,r13}
    ldmdb sp, {r12,r13} # now r12=x14, r13=x15
    add r2, r6, rol #0
    eor x14, r2, ror #0
    add r10, x14, rol #8
    eor r6, r10, ror #0
    add r2, r6, rol #12
    eor x14, r2, ror #8
    add r10, x14, rol #24
    eor r6, r10, ror #12

    add r3, r7, rol #0
    eor x15, r3, ror #0
    add r11, x15, rol #8
    eor r7, r11, ror #0
    add r3, r7, rol #12
    eor x15, r3, ror #8
    add r11, x15, rol #24
    eor r7, r11, ror #12
# switch to diagonal.
# note that quarterrounds are independent: we're doing the last one
# first, because it's loaded. Then the first, then load x12, x13 and
# do the second and third:
    add r3, r4, rol #19
    eor x14, r3, ror #24
    add r9, x14, rol #0
    eor r4, r9, ror #19
    add r3, r4, rol #31
    eor x14, r3, ror #0
    add r9, x14, rol #16
    eor r4, r9, ror #31

    add r0, r5, rol #19
    eor x15, r0, ror #24
    add r10, x15, rol #0
    eor r5, r10, ror #19
    add r0, r5, rol #31
    eor x15, r0, ror #0
    add r10, x15, rol #16
    eor r5, r10, ror #31

    stmdb sp, {r12,r13} 
    ldmia sp, {r12,r13} # now r12=x12, r13=x13
    add r1, r6, rol #19
    eor x12, r1, ror #24
    add r11, x12, rol #0
    eor r6, r11, ror #19
    add r1, r6, rol #31
    eor x12, r1, ror #0
    add r11, x12, rol #16
    eor r6, r11, ror #31

    add r2, r7, rol #19
    eor x13, r2, ror #24
    add r8, x13, rol #0
    eor r7, r8, ror #19
    add r2, r7, rol #31
    eor x13, r2, ror #0
    add r8, x13, rol #16
    eor r7, r8, ror #31
# second doubleround, to realign x12,x13,x14,x15
    add r0, r4, rol #6
    eor x12, r0, ror #16
    add r8, x12, rol #24
    eor r4, r8, ror #6
    add r0, r4, rol #18
    eor x12, r0, ror #24
    add r8, x12, rol #8
    eor r4, r8, ror #18

    add r1, r5, rol #6
    eor x13, r1, ror #16
    add r9, x13, rol #24
    eor r5, r9, ror #6
    add r1, r5, rol #18
    eor x13, r1, ror #24
    add r9, x13, rol #8
    eor r5, r9, ror #18

    stmia sp, {r12,r13}
    ldmdb sp, {r12,r13} # now r12=x14, r13=x15
    add r2, r6, rol #6
    eor x14, r2, ror #16
    add r10, x14, rol #24
    eor r6, r10, ror #6
    add r2, r6, rol #18
    eor x14, r2, ror #24
    add r10, x14, rol #8
    eor r6, r10, ror #18

    add r3, r7, rol #6
    eor x15, r3, ror #16
    add r11, x15, rol #24
    eor r7, r11, ror #6
    add r3, r7, rol #18
    eor x15, r3, ror #24
    add r11, x15, rol #8
    eor r7, r11, ror #18
# switch to diagonal.
# note that quarterrounds are independent: we're doing the last one
# first, because it's loaded. Then the first, then load x12, x13 and
# do the second and third:
    add r3, r4, rol #25
    eor x14, r3, ror #8
    add r9, x14, rol #16
    eor r4, r9, ror #25
    add r3, r4, rol #5
    eor x14, r3, ror #16
    add r9, x14, rol #0
    eor r4, r9, ror #5

    add r0, r5, rol #25
    eor x15, r0, ror #8
    add r10, x15, rol #16
    eor r5, r10, ror #25
    add r0, r5, rol #5
    eor x15, r0, ror #16
    add r10, x15, rol #0
    eor r5, r10, ror #5

    stmdb sp, {r12,r13} 
    ldmia sp, {r12,r13} # now r12=x12, r13=x13
    add r1, r6, rol #25
    eor x12, r1, ror #8
    add r11, x12, rol #16
    eor r6, r11, ror #25
    add r1, r6, rol #5
    eor x12, r1, ror #16
    add r11, x12, rol #0
    eor r6, r11, ror #5

    add r2, r7, rol #25
    eor x13, r2, ror #8
    add r8, x13, rol #16
    eor r7, r8, ror #25
    add r2, r7, rol #5
    eor x13, r2, ror #16
    add r8, x13, rol #0
    eor r7, r8, ror #5





