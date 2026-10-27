---@meta
---@diagnostic disable: missing-fields -- Engine object declarations without implementations.
-- Native VFS subset inferred from calls in common/extensions.lua, ge/main.lua,
-- ge/ge_utils.lua and ge/extensions/editor/assetBrowser.lua.

---@class BeamNGFileSystem
---@field fileExists fun(self: BeamNGFileSystem, path: string): boolean
---@field directoryExists fun(self: BeamNGFileSystem, path: string): boolean
---@field directoryCreate fun(self: BeamNGFileSystem, path: string, recursive?: boolean): any # Native return type is unspecified.
---@field getFileRealPath fun(self: BeamNGFileSystem, path: string): string?
---@field findFiles fun(self: BeamNGFileSystem, path: string, pattern: string, depth: integer, includeDirs: boolean, onlyDirs: boolean): string[] # depth = -1: all subdirectories.

---@type BeamNGFileSystem
FS = {}
