---@meta
---@diagnostic disable: missing-fields -- Engine object declarations without implementations.
-- Sources: common/settings.lua and ge/extensions/core/settings/settings.lua.
-- Only the read API shared by GE and Vehicle Lua is declared here.

---@class BeamNGSettings
---@field getValue fun(key: string, defaultValue?: any, persona?: string|number|{id: string|number}): any # Returns the fallback when the setting is absent. The stored value may have a different type.

---@type BeamNGSettings
settings = {}
