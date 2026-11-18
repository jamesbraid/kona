#!/usr/bin/env -S uv run --script
# /// script
# requires-python = ">=3.9"
# ///
"""Search for a polynomial MISR that explains the raster-bus CRC gold values.

Model, per stream j of n_j bus words w_i (each a polynomial over GF(2)):

    gold_j = M * (x^(k*n_j) * s0 + sum_i x^(k*(n_j-1-i)) * w_i) + T   (mod p)

p is the unknown degree-64 feedback polynomial. M, s0 and T are unknown ring
elements shared by every stream: M absorbs a common trailer's clocks, s0 a
common prefix or seed, T a common trailer's data or a final xor. Eliminating
T, s0 and M leaves polynomial identities that p must divide, so p is a factor
of their gcd. Nothing is brute-forced, whatever the weight of p.

usage: raster_crc_scan.py DATA_DIR [--streams a,b,c,d,e] [--k 1,2,4]
       raster_crc_scan.py --selftest
"""
import argparse, collections, random, subprocess, sys

def zcat(path):
    return subprocess.run(["zcat", path], capture_output=True, check=True).stdout.decode("latin1")

def load_streams(data):
    """tbusdata.Z vectors plus aaspoke.tbus: name -> [(mode, word)]."""
    out, cur = {}, None
    for ln in zcat(data + "/tbusdata.Z").split("\n"):
        if ln.startswith("#start "):
            cur = ln.split()[1].replace(".tbus", ""); out[cur] = []
        elif not ln.startswith("#") and cur:
            p = ln.split()
            if len(p) == 3: out[cur].append((int(p[1]), int(p[2], 16)))
    out["aaspoke"] = [(int(l.split()[1]), int(l.split()[2], 16))
                      for l in open(data + "/aaspoke.tbus") if l.strip() and l[0] != "#"]
    return out

def load_gold(data, test):
    """The 64-bit raster-bus value (field 4 of the host-interface row) in irsaudit.h.gold."""
    name = None
    for ln in open(data + "/irsaudit.h.gold", encoding="latin1"):
        if ln[0] == "#": name = ln[1:].strip(); continue
        if name and name.startswith(test + ".") and ln[2:5] == "H01":
            return int(ln.split()[4], 16)

def rev64(w): return int(format(w, "064b")[::-1], 2)
def bswap(w): return int.from_bytes(w.to_bytes(8, "big"), "little")
def swaph(w): return ((w & 0xffffffff) << 32) | (w >> 32)
MAPS = {"id": lambda w: w, "rev": rev64, "bswap": bswap, "swaph": swaph,
        "rev+swaph": lambda w: rev64(swaph(w)), "bswap+swaph": lambda w: bswap(swaph(w)),
        "revbytebits": lambda w: rev64(bswap(w)), "revbytebits+swaph": lambda w: rev64(bswap(swaph(w)))}

def horner(words, k):
    d = 0
    for w in words: d = (d << k) ^ w
    return d

def clmul(a, b):
    if a.bit_count() > b.bit_count(): a, b = b, a
    r = 0
    while a:
        low = a & -a; r ^= b << (low.bit_length() - 1); a ^= low
    return r

def pgcd(a, b):
    while b:
        while a and a.bit_length() >= b.bit_length(): a ^= b << (a.bit_length() - b.bit_length())
        a, b = b, a
    return a

def strip(d):
    return d >> ((d & -d).bit_length() - 1) if d else 0

def gcd_degree(words, golds, k):
    """Degree of the common factor p must divide, after removing powers of x."""
    n = [len(w) for w in words]
    W = [horner(w, k) for w in words]
    u = [(1 << (k * n[0])) ^ (1 << (k * n[a])) for a in range(len(W))]
    V = [golds[0] ^ g for g in golds]
    Y = [W[0] ^ w for w in W]
    eq = [(clmul(V[a], u[a + 1]) ^ clmul(V[a + 1], u[a]),
           clmul(Y[a], u[a + 1]) ^ clmul(Y[a + 1], u[a])) for a in range(1, len(W) - 1)]
    cross = [clmul(L, eq[0][1]) ^ clmul(eq[0][0], R) for L, R in eq[1:]]
    d = cross[0]
    for e in cross[1:]: d = pgcd(d, e)
    return strip(d).bit_length() - 1 if d else -1

def excess(words, golds, k, rng):
    """Degree above what random gold values give: a real model adds about 64."""
    base = gcd_degree(words, [rng.getrandbits(64) for _ in golds], k)
    return gcd_degree(words, golds, k) - base

def scan(streams, golds, names, ks, thr):
    subsets = {"all": lambda m: True, "m23": lambda m: m in (2, 3), "m1": lambda m: m == 1,
               "m2": lambda m: m == 2, "m3": lambda m: m == 3}
    rng, best = random.Random(3), []
    for sub, f in subsets.items():
        for mi, fi in MAPS.items():
            for mo, fo in MAPS.items():
                words = [[fi(w) for m, w in streams[n] if f(m)] for n in names]
                g = [fo(golds[n]) for n in names]
                for k in ks:
                    ex = excess(words, g, k, rng)
                    best.append((ex, sub, mi, mo, k))
                    if ex >= thr: print("HIT", best[-1], flush=True)
    best.sort(reverse=True)
    return best[:5]

def selftest():
    P = (1 << 64) | 0x42f0e1eba9ea3693
    def mulx(s):
        s <<= 1
        return s ^ P if s >> 64 else s
    rng = random.Random(7)
    s0, T, trailer = rng.getrandbits(64), rng.getrandbits(64), 9
    words = [[rng.getrandbits(64) for _ in range(rng.randint(60, 120))] for _ in range(5)]
    golds = []
    for ws in words:
        s = s0
        for w in ws: s = mulx(s) ^ w
        for _ in range(trailer): s = mulx(s)
        golds.append(s ^ T)
    ex = excess(words, golds, 1, random.Random(3))
    print("selftest excess", ex, "(about 64 expected)")
    return ex >= 50

if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("data", nargs="?")
    ap.add_argument("--streams", default="aaspoke,fog1,msalpha,samplemask,linesRus")
    ap.add_argument("--k", default="1,2,4")
    ap.add_argument("--thr", type=int, default=24)
    ap.add_argument("--selftest", action="store_true")
    a = ap.parse_args()
    if a.selftest: sys.exit(0 if selftest() else 1)
    names = a.streams.split(",")
    S = load_streams(a.data)
    G = {n: load_gold(a.data, n) for n in names}
    # Gold values are per configuration tag; the raster-bus value is the same in all of them.
    print(scan(S, G, names, [int(x) for x in a.k.split(",")], a.thr))
