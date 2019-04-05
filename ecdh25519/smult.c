#include "smult.h"
#include "group.h"

int crypto_scalarmult(unsigned char *ss, const unsigned char *sk,
                      const unsigned char *pk) {
    group_ge k;
    unsigned char t[32];
    int i, j = 5;

    for (i = 0; i < 32; i++) {
        t[i] = sk[i];
    }

    t[0] &= 248;
    t[31] &= 127;
    t[31] |= 64;

    group_ge multiples[WINDOWSIZE + 1];
    multiples[0] = group_ge_neutral;
    if (group_ge_unpack(multiples + 1, pk))
        return -1;

    for (i = 2; i < WINDOWSIZE + 1; i++) {
        group_ge_add(multiples + i, multiples + i - 1, multiples + 1);
    }

    k = multiples[1];
    for (i = 31; i >= 0; i--) {
        for (; j >= 0; j--) {
            group_ge_double(&k, &k);
            group_ge_add_index(&k, &multiples, (t[i] >> j) & WINDOWMASK);
        }
        j = 7;
    }

    group_ge_pack(ss, &k);
    return 0;
}

int crypto_scalarmult_base(unsigned char *pk, const unsigned char *sk) {
    unsigned char t[GROUP_GE_PACKEDBYTES];
    group_ge_pack(t, &group_ge_base);
    return crypto_scalarmult(pk, sk, t);
}
