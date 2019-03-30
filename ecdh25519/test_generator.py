from random import randint

p = (1 << 255) - 19

def reduced(v):
    while v < 0:
        v += p
    return FE(v % p)

class FE:
    def __init__(self, *args):
        self.v = int(*args) & ((1 << 255) - 1)

    def __int__(self):
        return self.v

    def __repr__(self):
        data = [(self.v >> i) & 0xff for i in range(0, 256, 8)]
        data = ', '.join('0x{:02x}'.format(b) for b in data)
        return '{' + data + '}'

    def __add__(self, other):
        return reduced(self.v + FE(other).v)

    def __sub__(self, other):
        return reduced(self.v - FE(other).v)

    def __mul__(self, other):
        return reduced(self.v * FE(other).v)


def random():
    return FE(randint(0, p - 1))

def fromstr(s):
    limbs = reversed(str(s).split(','))
    return FE(''.join(x.strip()[2:] for x in limbs), 16)

v0 = fromstr('0xb1, 0x7a, 0xa0, 0x76, 0x93, 0xd7, 0x8d, 0x70, 0xfb, 0x44, 0x3a, 0x5b, 0xf1, 0xc6, 0x90, 0xe2, 0xc3, 0x79, 0x39, 0x6f, 0x56, 0xac, 0xc5, 0x5f, 0xb5, 0xfc, 0x1c, 0xc5, 0x58, 0xa2, 0xd9, 0x85')
v1 = fromstr('0xba, 0xdb, 0xc5, 0x8f, 0xc7, 0x97, 0x18, 0xc4, 0x78, 0x32, 0x13, 0x0a, 0x94, 0x2c, 0x80, 0xdb, 0x77, 0x84, 0x34, 0xdc, 0x04, 0xce, 0x19, 0x16, 0xda, 0xe4, 0x16, 0x36, 0x06, 0xca, 0xdd, 0x30')
