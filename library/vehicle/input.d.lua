---@meta
---@diagnostic disable: missing-fields -- Engine object declarations without implementations.
-- Source: vehicle/input.lua, common/inputFilters.lua.

---@type integer
FILTER_KBD = 0
---@type integer
FILTER_PAD = 1
---@type integer
FILTER_DIRECT = 2
---@type integer
FILTER_KBD2 = 3
---@type string
FILTER_AI = 'FILTER_AI'

---@alias BeamNGInputEvent fun(name: string, value: number, filter: integer|string, angle?: number, lockType?: integer, osClockHP?: number, source?: string)

---@class BeamNGInput
---@field updateGFX fun(dt: number)
---@field event BeamNGInputEvent
---@field toggleEvent fun(name: string)
---@field neutralizeControls fun()
---@field setAllowedInputSource fun(name: string, source: string, enabled: boolean)

---@type BeamNGInput
input = {}
