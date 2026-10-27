---@meta
---@diagnostic disable: missing-fields -- Engine object declarations without implementations.
-- Source: vehicle/electrics.lua, vehicle/controller/dummy.lua.

---Available signals depend on the vehicle and its controllers.
---@class BeamNGElectricsValues
---@field [string] any
---@field throttle? number
---@field brake? number
---@field clutch? number
---@field steering? number
---@field wheelspeed? number # Speed in m/s.
---@field airspeed? number # Speed in m/s.
---@field rpm? number
---@field gear? string
---@field gearIndex? integer
---@field ignitionLevel? integer
---@field fuel? number
---@field horn? boolean
---@field hazard_enabled? boolean|integer

---@class BeamNGElectrics
---@field toggle_left_signal fun()
---@field toggle_right_signal fun()
---@field values BeamNGElectricsValues
---@field setIgnitionLevel fun(level: integer)
---@field toggle_lights fun()
---@field toggle_warn_signal fun()
---@field set_warn_signal fun(enabled: boolean)

---@type BeamNGElectrics
electrics = {}
