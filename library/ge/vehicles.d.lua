---@meta
---@diagnostic disable: missing-fields
-- Source: ge/extensions/core/vehicles.lua.

---@class BeamNGModelInfo
---@field key string
---@field Name? string
---@field Brand? string
---@field Type? string

---@class BeamNGModelLookup
---@field model? BeamNGModelInfo
---@field configs? table<string, table>

---@class BeamNGCoreVehicles
---@field getModel fun(key: string): BeamNGModelLookup Returns an empty table when the model is unavailable.

---@type BeamNGCoreVehicles
core_vehicles = {}
