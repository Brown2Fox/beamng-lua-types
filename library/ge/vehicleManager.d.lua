---@meta
---@diagnostic disable: missing-fields
-- Source: ge/extensions/core/vehicle/manager.lua.

---@class BeamNGVehicleBundle
---@field vdata BeamNGVehicleModelData
---@field config BeamNGVehiclePartConfig

---@class BeamNGVehicleManager
---@field getVehicleData fun(id: integer): BeamNGVehicleBundle?

---@class BeamNGExtensions
---@field core_vehicle_manager? BeamNGVehicleManager

---@class BeamNGVehicleModelData
---@field model? string

---@class BeamNGVehiclePartConfig
---@field partConfigFilename? string
