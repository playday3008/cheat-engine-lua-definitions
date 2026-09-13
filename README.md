# Cheat Engine Lua API definitions

[![check](https://github.com/playday3008/cheat-engine-lua-definitions/actions/workflows/check.yml/badge.svg)](https://github.com/playday3008/cheat-engine-lua-definitions/actions/workflows/check.yml)

LuaLS type definitions for the Lua API [Cheat Engine](https://github.com/cheat-engine/cheat-engine)
exposes to table scripts, autorun scripts and the Lua engine window.

Every declaration carries a `---@source` link to the line of Cheat Engine source it was taken
from, pinned to commit
[`ec45d5f4`](https://github.com/cheat-engine/cheat-engine/tree/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37).

## Install

Point `workspace.library` at the `library` directory:

```json
{
  "runtime.version": "Lua 5.3",
  "workspace.library": ["path/to/cheat-engine-lua-definitions/library"]
}
```

Cheat Engine bundles Lua 5.3, so set `runtime.version` to match; declaring 5.4 makes the
language server accept syntax Cheat Engine rejects at runtime.

## What is covered

| | |
|---|---|
| Files | 40 |
| Classes | 129 |
| Global functions and variables | 1067 |
| Class methods | 764 |
| `---@source` links | 2064 |

Declarations are derived from every mechanism Cheat Engine uses to publish a name:
`lua_register`, the `luaclass_add*ToTable` and `luaclass_setDefault*Property` families,
`luaclass_register` class bindings and their `addMetaData` inheritance chains, published Pascal
properties reached through the RTTI fallback in `LuaClass.pas`, `lua_setglobal`, units that build
Lua source and run it through `LUA_DoScript`, `bin/defines.lua`, and the callbacks Cheat Engine
looks up by name.

Methods are declared so that both call styles work, because Cheat Engine accepts both:

```lua
memoryrecord:setValue("100")
memoryrecord.setValue("100")   -- also valid; the object comes from the metatable closure
```

Pre-6.3 flat globals (`memoryrecord_setValue(rec, v)`) live under `library/legacy/` and are
marked `---@deprecated`.

## What is not covered

- **Case-flipped twins.** Cheat Engine's `lua_register` override registers every name twice,
  flipping the case of the first character, so `OpenProcess` works as well as `openProcess`.
  Only the spelling Cheat Engine passes to `lua_register` is declared. The five twins Cheat
  Engine's own shipped scripts call are the documented exception and live in
  `library/aliases-caseflip.d.lua`.
- **`forceModule`**, which is plugin-scoped.
- **LCL properties** are covered where there is evidence for them - a `.lfm` that streams the
  property, or Cheat Engine code that reads or writes it - not exhaustively. The Lazarus LCL is
  not vendored in the Cheat Engine repository, so these cannot be checked against a declaration.

## Accuracy

Behaviour that is surprising or outright broken is documented rather than smoothed over, for
example that `executeCodeLocal(f, 20)` calls `f(0x20)` because the parameter is stringified and
parsed as hex, or that `convertToUTF8` discards its result and reads through an uninitialised
pointer when given a string.

The definitions were checked against Cheat Engine's own 48 bundled Lua scripts (27895 lines),
which is also how the dot-call and case-flip gaps above were found.

## Licence

Cheat Engine ships no licence file, so the terms covering work derived from its source are
unclear. These definitions contain no Cheat Engine code - they are declarations and prose
describing its API - but anyone redistributing them should form their own view.
