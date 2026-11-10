"""kona-specific checks for the decode headers.

docs/command-table.md owns the token numbers. The query tokens (section 2.13)
and every other processor-run or routed token (sections 2 and 3) must appear
in KONA_QUERY_DECODE.h and KONA_TOKEN_DECODE.h with the table's value and
grade, and the generated Rust must carry the same constants.
"""
import re

TABLE = "docs/command-table.md"
ROW = re.compile(r"^\| (0x[0-9a-f]{3}) \|")
HDR_DEF = re.compile(r"^#define\s+(\w+)\s+(0x[0-9a-f]+)\s+/\*\s*(\w+)\s*\*/")
RUST_CONST = re.compile(r"pub const (\w+): \w+ = (0x[0-9a-fA-F_]+|\d+);")
FILES = {"query": "KONA_QUERY_DECODE.h", "token": "KONA_TOKEN_DECODE.h"}


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


def header_tokens(text):
    out, names = {}, {}
    for line in text.splitlines():
        m = HDR_DEF.match(line)
        if m:
            out[int(m.group(2), 16)] = m.group(3)
            names[m.group(1)] = int(m.group(2), 16)
    return out, names


def check_final(ctx):
    query, rest = table_tokens(ctx.read_doc(TABLE))
    for key, want in (("query", query), ("token", rest)):
        fn = FILES[key]
        got, names = header_tokens(ctx.read(fn))
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
            rust = ctx.read("generated/kona-regs/%s.rs" % key)
        except FileNotFoundError:
            continue  # the framework reports a missing module itself
        rc = {}
        for m in RUST_CONST.finditer(rust):
            rc[m.group(1)] = int(m.group(2).replace("_", ""), 0)
        prefix = "KONA_QUERY_" if key == "query" else "KONA_TOKEN_"
        for name, val in names.items():
            if rc.get(name[len(prefix):]) != val:
                ctx.rep.fail("generated/kona-regs/%s.rs" % key,
                             "constant %s is %s, header says 0x%03x"
                             % (name[len(prefix):], rc.get(name[len(prefix):]), val))
