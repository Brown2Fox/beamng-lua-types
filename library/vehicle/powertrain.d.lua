---@meta
---@diagnostic disable: missing-fields -- Engine object declarations without implementations.
-- Source: vehicle/powertrain.lua, vehicle/powertrain/*.lua.

---Common device fields; additional fields depend on the device type.
---@class BeamNGPowertrainDevice
---@field maxRPM? number
---@field revLimiterRPM? number
---@field idleRPM? number
---@field throttleFactor? number
---@field electricsThrottleFactorName? string
---@field name string
---@field type string
---@field deviceCategories table<string, boolean>
---@field inputName? string
---@field inputIndex? integer
---@field gearRatio? number
---@field isBroken? boolean

---@class BeamNGPowertrain
---@field getDevice fun(name: string): BeamNGPowertrainDevice?
---@field getDevices fun(): table<string, BeamNGPowertrainDevice>
---@field getOrderedDevices fun(): BeamNGPowertrainDevice[]
---@field getDevicesByType fun(deviceType: string): BeamNGPowertrainDevice[]
---@field getDevicesByCategory fun(category: string): BeamNGPowertrainDevice[]
---@field setDeviceMode fun(name: string, mode: string)
---@field toggleDeviceMode fun(name: string)

---@type BeamNGPowertrain
powertrain = {}
