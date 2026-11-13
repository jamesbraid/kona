"""kona-specific checks for the hardware definitions in devices/ and formats/.

formats/token/command-table.md owns the token numbers. The query tokens (section 2.13)
and every other processor-run or routed token (sections 2 and 3) must appear
in formats/query/format.toml and formats/token/format.toml with the table's value and grade, and
the generated Rust must carry the same constants.

The same table owns the display-request numbers (section 5), which
formats/dispreq/format.toml must carry with their payload counts and reply types, and
the XMAP and video-output-chip register indices (sections 6.3 to 6.5), whose
registers devices/xmap/registers.toml and devices/voc/registers.toml must list.

The checks read the loaded model (the unit's constants and the hdr.regs
dictionary), not header text. The file names in failure messages are the
generated C headers.
"""
import re

TABLE = "formats/token/command-table.md"
ROW = re.compile(r"^\| (0x[0-9a-f]{3}) \|")
RUST_CONST = re.compile(r"pub const (\w+): \w+ = (0x[0-9a-fA-F_]+|\d+);")
FILES = {"query": "generated/c/query.h", "token": "generated/c/token.h"}
RUST_MODULE = "generated/rust/src/%s.rs"


def table_tokens(text):
    """Token -> grade, split into the query set and the rest."""
    def rows(start, end):
        body = text[text.index(start):text.index(end)]
        out = {}
        for line in body.splitlines():
            if ROW.match(line):
                f = [x.strip() for x in line.strip().strip("|").split("|")]
                grade = f[-2]
                if grade.startswith("established for"):
                    grade = "inferred"  # weakest claim on the row
                out[int(f[0], 16)] = grade
        return out
    query = rows("### 2.13 Queries", "### 2.14")
    every = rows("## 2. Processor-run host tokens", "## 4. Token-map")
    rest = {k: v for k, v in every.items() if k not in query}
    return query, rest


def header_tokens(hdr):
    """Token value -> grade, and constant name -> value, from the unit's constants."""
    out, names = {}, {}
    for name, c in hdr.unit.model["constants"].items():
        out[c["value"]] = c["grade"]
        names[name] = c["value"]
    return out, names


def check_final(ctx):
    check_requests(ctx)
    check_xmap_voc(ctx)
    query, rest = table_tokens(ctx.read_doc(TABLE))
    for key, want in (("query", query), ("token", rest)):
        fn = FILES[key]
        got, names = header_tokens(ctx.hdrs[fn])
        for tok in sorted(want.keys() - got.keys()):
            ctx.rep.fail(fn, "table token 0x%03x missing from the header" % tok)
        for tok in sorted(got.keys() - want.keys()):
            ctx.rep.fail(fn, "header token 0x%03x is not in the table" % tok)
        for tok in sorted(want.keys() & got.keys()):
            if want[tok] != got[tok]:
                ctx.rep.fail(fn, "token 0x%03x: table grade %s, header grade %s"
                             % (tok, want[tok], got[tok]))
        # generated Rust carries the same values
        try:
            rust = ctx.read(RUST_MODULE % key)
        except FileNotFoundError:
            continue  # the framework reports a missing module itself
        rc = {}
        for m in RUST_CONST.finditer(rust):
            rc[m.group(1)] = int(m.group(2).replace("_", ""), 0)
        for name, val in names.items():
            rname = rust_name(name)
            if rc.get(rname) != val:
                ctx.rep.fail(RUST_MODULE % key,
                             "constant %s is %s, header says 0x%03x"
                             % (rname, rc.get(rname), val))


def rust_name(name):
    # The generator's rule for a top-level constant: a name that starts with a
    # digit gets an N in front.
    return "N" + name if name[:1].isdigit() else name


# --- display requests (section 5) ------------------------------------------
REQ_ROW = re.compile(
    r"^\| (\d+) \| .*? \| (\d+) \| (none|type 0x([0-9a-f]+), (\d+) bytes) \| (\w+) \|")
REQ_NAME = re.compile(r"(\w+?)(_WORDS|_REPLY_TYPE|_REPLY_BYTES)?")


def table_requests(text):
    body = text[text.index("## 5. Display-generator requests"):text.index("## 6. Display-bus")]
    out = {}
    for line in body.splitlines():
        m = REQ_ROW.match(line)
        if m:
            n, pay, rep, rt, rb, grade = m.groups()
            out[int(n)] = (int(pay), None if rep == "none" else (int(rt, 16), int(rb)), grade)
    return out


def header_requests(hdr):
    """name -> {number, words, reply type, reply bytes, grade}."""
    by = {}
    for const, c in hdr.unit.model["constants"].items():
        m = REQ_NAME.fullmatch(const)
        if m.group(1) == "COUNT":
            continue
        d = by.setdefault(m.group(1), {})
        d[(m.group(2) or "")] = c["value"]
        d["grade" + (m.group(2) or "")] = c["grade"]
    return by


def check_requests(ctx):
    fn = "generated/c/dispreq.h"
    want = table_requests(ctx.read_doc(TABLE))
    got = {}
    for name, d in header_requests(ctx.hdrs[fn]).items():
        if "" not in d:
            ctx.rep.fail(fn, "request %s has no number define" % name)
            continue
        got[d[""]] = (name, d)
    if len(want) != 93:
        ctx.rep.fail(TABLE, "expected 93 display requests, found %d" % len(want))
    for n in sorted(want.keys() - got.keys()):
        ctx.rep.fail(fn, "table request %d missing from the header" % n)
    for n in sorted(got.keys() - want.keys()):
        ctx.rep.fail(fn, "header request %d is not in the table" % n)
    for n in sorted(want.keys() & got.keys()):
        pay, rep, grade = want[n]
        name, d = got[n]
        if d.get("_WORDS") != pay:
            ctx.rep.fail(fn, "request %d (%s): table payload %d words, header %s"
                         % (n, name, pay, d.get("_WORDS")))
        have = None
        if "_REPLY_TYPE" in d or "_REPLY_BYTES" in d:
            have = (d.get("_REPLY_TYPE"), d.get("_REPLY_BYTES"))
        if have != rep:
            ctx.rep.fail(fn, "request %d (%s): table reply %s, header %s" % (n, name, rep, have))
        for k, g in d.items():
            if k.startswith("grade") and g != grade:
                ctx.rep.fail(fn, "request %d (%s): table grade %s, header grade %s" % (n, name, grade, g))


# --- XMAP and video-output chip register indices (sections 6.3 to 6.5) ----
IDX_ROW = re.compile(r"^\| (0x[0-9a-f]{2}[^|]*?) \|")


def table_indices(text, start, end):
    """Single indices, ranges and lists named in the first column; 'x + f' rows give their base."""
    body = text[text.index(start):text.index(end)]
    idx = set()
    for line in body.splitlines():
        m = IDX_ROW.match(line)
        if not m:
            continue
        col = m.group(1)
        if re.search(r"\+ f", col):
            idx.update(int(x, 16) for x in re.findall(r"0x([0-9a-f]{2}) \+ f", col))
            continue
        rng = re.match(r"^0x([0-9a-f]{2})-0x([0-9a-f]{2})$", col)
        if rng:
            idx.update(range(int(rng.group(1), 16), int(rng.group(2), 16) + 1))
            continue
        idx.update(int(x, 16) for x in re.findall(r"0x([0-9a-f]{2})\b", col))
    return idx


def header_regs(hdr, block):
    """(name, offset, count) of every register of the block."""
    return [(key.split(".", 1)[1], r["off"], r["count"])
            for key, r in hdr.regs.items() if key.split(".", 1)[0] == block]


def covered(regs, off):
    return any(o <= off < o + c for _n, o, c in regs)


def check_xmap_voc(ctx):
    text = ctx.read_doc(TABLE)
    fn = "generated/c/xmap.h"
    regs = header_regs(ctx.hdrs[fn], "XMAP")
    direct = table_indices(text, "### 6.3 XMAP direct", "### 6.4")
    for n in sorted(direct):
        if not covered(regs, 0x100 + n):
            ctx.rep.fail(fn, "table XMAP direct register 0x%02x missing" % n)
    for _name, off, _c in regs:
        if off < 0x118 and (off - 0x100) not in direct:
            ctx.rep.fail(fn, "header XMAP register at index 0x%02x is not in the table" % (off - 0x100))
    ind = set()
    body = text[text.index("### 6.4 XMAP indirect"):text.index("### 6.5")]
    for line in body.splitlines():
        m = re.match(r"^\| 0x(11[89a-f]) \|", line)
        if m:
            ind.add(int(m.group(1), 16))
    for a in sorted(ind):
        if not covered(regs, a):
            ctx.rep.fail(fn, "table XMAP indirect port 0x%03x missing" % a)
    for _name, off, _c in regs:
        if 0x118 <= off and off not in ind:
            ctx.rep.fail(fn, "header XMAP port at 0x%03x is not in the table" % off)
    fn = "generated/c/voc.h"
    vregs = header_regs(ctx.hdrs[fn], "VOC")
    vidx = table_indices(text, "### 6.5 Video-output chip", "### 6.6")
    vidx.update(range(0x90, 0x9e))  # the coefficient row names 0x90 and lists 0x90-0x9d
    for n in sorted(vidx):
        if not covered(vregs, 0x200 + n):
            ctx.rep.fail(fn, "table VOC register 0x%02x missing" % n)
    for _name, off, _c in vregs:
        if (off - 0x200) not in vidx:
            ctx.rep.fail(fn, "header VOC register at index 0x%02x is not in the table" % (off - 0x200))
