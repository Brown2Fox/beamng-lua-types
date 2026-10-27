# BeamNG Lua types

Partial BeamNG.drive API declarations for LuaLS and EmmyLua. These files provide editor types, not runtime implementations.

Sources are noted in the declaration files, with paths relative to the game's `lua/` directory. Native API types are inferred from Lua call sites; unconfirmed compatibility helpers are marked explicitly.

Use `library/common` together with **one** environment: `library/ge` for Game Engine Lua or `library/vehicle` for Vehicle Lua. Do not load both environments into the same workspace.

## Setup

Replace `/path/to/beamng-lua-types` with your checkout path. For a vehicle mod, replace `library/ge` with `library/vehicle`.

LuaLS: add to your mod's `.luarc.json`:

```json
{
  "runtime.version": "LuaJIT",
  "workspace.library": [
    "/path/to/beamng-lua-types/library/common",
    "/path/to/beamng-lua-types/library/ge"
  ]
}
```

EmmyLua: add to your mod's `.emmyrc.json`:

```json
{
  "runtime": { "version": "LuaJIT" },
  "workspace": {
    "library": [
      "/path/to/beamng-lua-types/library/common",
      "/path/to/beamng-lua-types/library/ge"
    ]
  }
}
```

Game globals are available automatically once connected. Use annotations such as `---@type BeamNGGEExtension` for your own extension tables.

Licensed under [MIT](LICENSE). This license covers this project's declarations and documentation, not BeamNG.drive or its source files.
