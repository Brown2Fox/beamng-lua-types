---@meta
---@diagnostic disable: missing-fields -- Engine object declarations without implementations.
-- Native Vehicle Lua object; distinct from the GE Lua vehicle object.
-- Inferred from calls in vehicle/controller/dummy.lua, vehicle/bdebugImpl.lua
-- and vehicle/extensions/*.lua; not a complete native class definition.

---@class BeamNGVehicleObject
---@field getID fun(self: BeamNGVehicleObject): integer
---@field getWheelAvgTemperature fun(self: BeamNGVehicleObject, wheelID: integer): number # Temperature in Kelvin; see vehicle/bdebugImpl.lua.
---@field getId fun(self: BeamNGVehicleObject): integer
---@field getPosition fun(self: BeamNGVehicleObject): BeamNGVec3
---@field getVelocity fun(self: BeamNGVehicleObject): BeamNGVec3
---@field getDirectionVector fun(self: BeamNGVehicleObject): BeamNGVec3
---@field getDirectionVectorUp fun(self: BeamNGVehicleObject): BeamNGVec3
---@field getNodePositionRelative fun(self: BeamNGVehicleObject, nodeId: integer): BeamNGVec3
---@field getNodeVelocityVector fun(self: BeamNGVehicleObject, nodeId: integer): BeamNGVec3
---@field getYawAngularVelocity fun(self: BeamNGVehicleObject): number
---@field getGroundSpeed fun(self: BeamNGVehicleObject): number
---@field queueGameEngineLua fun(self: BeamNGVehicleObject, source: string)

---@type BeamNGVehicleObject
obj = {}
