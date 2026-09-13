#!/usr/bin/env python3
"""Structural checks on the definitions that lua-language-server does not make.

Each rule exists because the corresponding mistake was actually made while the
definitions were being written, and nothing else caught it.

The ---@source links point into the Cheat Engine repository, which is not checked
out here, so their line numbers cannot be verified in CI. Pass the path to a Cheat
Engine checkout as argv[1] to enable that check too.
"""
import re, os, sys, glob, collections, urllib.parse

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
CE = sys.argv[1] if len(sys.argv) > 1 else None
files = sorted(glob.glob(os.path.join(ROOT, 'library', '**', '*.lua'), recursive=True))
err, msgs = collections.Counter(), []
classes, funcs = {}, collections.defaultdict(list)
srccount = 0

def rel(p): return os.path.relpath(p, ROOT)

for fp in files:
    L = open(fp).read().split('\n')
    block = []
    for i, l in enumerate(L):
        s = l.strip()
        if s.startswith('---'):
            block.append(s); continue
        m = re.match(r'^function\s+([\w.:]+)\s*\((.*?)\)\s*end\s*$', s)
        if m:
            name, args = m.group(1), m.group(2)
            ps = [a.strip() for a in args.split(',') if a.strip()]
            declared = [re.match(r'^---@param\s+([\w.]+)', b).group(1)
                        for b in block if re.match(r'^---@param\s+', b)]
            core = [p for p in ps if p != '...']
            dcore = [d for d in declared if d != '...']
            if dcore != core:
                err['param-mismatch'] += 1
                msgs.append('%s:%d %s params %s vs @param %s' % (rel(fp), i+1, name, core, dcore))
            if len(set(core)) != len(core):
                err['dup-param'] += 1
                msgs.append('%s:%d %s has a duplicate parameter name' % (rel(fp), i+1, name))
            funcs[name].append('%s:%d' % (rel(fp), i+1))
        cm = re.match(r'^local\s+(\w+)\s*=\s*\{\}\s*$', s)
        if cm:
            cls, fields = None, []
            for b in block:
                mm = re.match(r'^---@class\s+([\w.]+)', b)
                if mm: cls = mm.group(1)
                fm = re.match(r'^---@field\s+(\[?[\w\]]+)', b)
                if fm: fields.append(fm.group(1))
            if cls:
                if cls in classes:
                    err['dup-class'] += 1
                    msgs.append('class %s declared in %s and %s' % (cls, classes[cls], rel(fp)))
                classes[cls] = rel(fp)
                dup = [k for k, v in collections.Counter(fields).items() if v > 1]
                if dup:
                    err['dup-field'] += 1
                    msgs.append('%s: class %s has duplicate fields %s' % (rel(fp), cls, dup))
        for b in block:
            sm = re.match(r'^---@source\s+(\S+)', b)
            if not sm: continue
            srccount += 1
            mm = re.search(r'/blob/[0-9a-f]{40}/(.+?)#L(\d+)$', sm.group(1))
            if not mm:
                err['source-malformed'] += 1
                msgs.append('%s: %s' % (rel(fp), sm.group(1)))
            elif CE:
                path = os.path.join(CE, urllib.parse.unquote(mm.group(1)))
                if not os.path.exists(path):
                    err['source-nofile'] += 1
                    msgs.append('%s: no such source file %s' % (rel(fp), mm.group(1)))
                elif int(mm.group(2)) > sum(1 for _ in open(path, 'rb')):
                    err['source-oob'] += 1
                    msgs.append('%s: %s is past the end of the file' % (rel(fp), sm.group(1)))
        block = []

for n, locs in funcs.items():
    if len(locs) > 1:
        err['dup-symbol'] += 1
        msgs.append('%s declared at %s' % (n, locs))

# variable-style globals: an edit once appended a second tableIsLoading
seen = collections.defaultdict(list)
for fp in files:
    for i, l in enumerate(open(fp)):
        m = re.match(r'^([A-Za-z_][A-Za-z0-9_]*)\s*=\s*(nil|false|true|\{\})\s*$', l.strip())
        if m: seen[m.group(1)].append('%s:%d' % (rel(fp), i+1))
for k, v in seen.items():
    if len(v) > 1:
        err['dup-variable-global'] += 1
        msgs.append('global %s declared at %s' % (k, v))

# a shared comment block once let an edit swallow two sibling classes
H = re.compile(r'^---@(class|alias|enum)\b'); C = re.compile(r'^---(@field\b|\|)')
for fp in files:
    L = open(fp).read().split('\n')
    for i in range(1, len(L)):
        a, b = L[i-1].strip(), L[i].strip()
        if H.match(b) and (H.match(a) or C.match(a)):
            err['shared-annotation-block'] += 1
            msgs.append('%s:%d %s follows %s with no blank line' % (rel(fp), i+1, b[:38], a[:38]))

# instructional prose must never be pasted into a declaration
for fp in files:
    for i, l in enumerate(open(fp)):
        if re.match(r'^--- (Also retype|Apply this|Replace lines|Note to )', l.strip()):
            err['pasted-instruction'] += 1
            msgs.append('%s:%d %s' % (rel(fp), i+1, l.strip()[:70]))

# every class or alias used in a type position must be declared
decl = set(classes)
for fp in files:
    for l in open(fp):
        m = re.match(r'^---@(class|alias)\s+([\w.]+)', l.strip())
        if m: decl.add(m.group(2))
builtin = {'any','nil','boolean','number','integer','string','table','function','thread',
           'userdata','true','false','self','unknown','fun','T'}
for fp in files:
    for i, l in enumerate(open(fp)):
        m = re.match(r'^---@(param|return|field)\s+(.*)$', l.strip())
        if not m: continue
        rest = m.group(2)
        if m.group(1) in ('param', 'field'):
            rest = re.sub(r'^\[?[\w\]]+\]?\??\s*', '', rest, count=1)
        t = re.split(r'\s{2,}| # | ', rest)[0]
        if '(' in t: continue
        for w in re.findall(r'\b[A-Z][A-Za-z0-9_]*\b', t):
            if w not in decl and w not in builtin:
                err['undefined-type'] += 1
                msgs.append('%s:%d type %s is never declared' % (rel(fp), i+1, w))

print('files %d  classes %d  symbols %d  @source %d%s'
      % (len(files), len(classes), len(funcs), srccount,
         '' if CE else '  (source line numbers not checked: no Cheat Engine checkout)'))
if not err:
    print('all integrity checks pass')
    sys.exit(0)
for k, v in sorted(err.items()):
    print('ERROR %-24s %d' % (k, v))
for m in msgs[:40]:
    print('  -', m)
sys.exit(1)
