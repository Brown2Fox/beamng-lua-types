---@meta
---@diagnostic disable: missing-fields -- Engine object declarations without implementations.
-- Source: vehicle/energyStorage.lua, vehicle/energyStorage/*.lua.

---@class BeamNGEnergyStorage
---@field remainingVolume? number
---@field capacity? number
---@field name string
---@field type string
---@field storedEnergy number # Energy in joules.
---@field energyCapacity number # Energy capacity in joules.
---@field remainingRatio number

---@class BeamNGEnergyStorageManager
---@field getStorage fun(name: string): BeamNGEnergyStorage?
---@field getStorages fun(): table<string, BeamNGEnergyStorage>
---@field getStorageSafe fun(name: string): table<string, any> # Returns a placeholder if the storage is missing.

---@type BeamNGEnergyStorageManager
energyStorage = {}
