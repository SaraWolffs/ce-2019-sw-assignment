q:
m`o    add Ra, Rb, rol #"=(@e+0)%32
    eor Rd, Ra, ror #"=(@f+0)%32
    add Rc, Rd, rol #"=(@f+8)%32
    eor Rb, Rc, ror #"=(@e+0)%32
    add Ra, Rb, rol #"=(@e+12)%32
    eor Rd, Ra, ror #"=(@f+8)%32
    add Rc, Rd, rol #"=(@f+24)%32
    eor Rb, Rc, ror #"=(@e+12)%32

v:
@q
:'<,'>s/Ra/\='r' . (@r+0)%16/g
:'<,'>s/Rb/\='r' . (@r+4)%16/g
:'<,'>s/Rc/\='r' . (@r+8)%16/g
:'<,'>s/Rd/\='r' . (@r+12)%16/g



dsafjk
    add r1, r5, rol #0
    eor r13, r1, ror #0
    add r9, r13, rol #8
    eor r5, r9, ror #0
    add r1, r5, rol #12
    eor r13, r1, ror #8
    add r9, r13, rol #24
    eor r5, r9, ror #12
lkdsajf
lkdsajf
    add r1, r5, rol #0
    eor r13, r1, ror #0
    add r9, r13, rol #8
    eor r5, r9, ror #0
    add r1, r5, rol #12
    eor r13, r1, ror #8
    add r9, r13, rol #24
    eor r5, r9, ror #12

    add r1, r5, rol #0
    eor r13, r1, ror #0
    add r9, r13, rol #8
    eor r5, r9, ror #0
    add r1, r5, rol #12
    eor r13, r1, ror #8
    add r9, r13, rol #24
    eor r5, r9, ror #12

kjldsaf
ljdsakf