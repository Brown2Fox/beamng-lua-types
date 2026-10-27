---@meta
---@diagnostic disable: missing-fields -- Engine object declarations without implementations.

-- Native object subsets inferred from calls in ge/ge_utils.lua and
-- ge/extensions/core/camera.lua. Not complete engine class definitions.
---@class BeamNGVehicle
---@field getID fun(self: BeamNGVehicle): integer
---@field getId fun(self: BeamNGVehicle): integer
---@field queueLuaCommand fun(self: BeamNGVehicle, source: string)
---@field getPosition fun(self: BeamNGVehicle): BeamNGVec3
---@field getVelocity fun(self: BeamNGVehicle): BeamNGVec3
---@field getDirectionVector fun(self: BeamNGVehicle): BeamNGVec3
---@field getDirectionVectorUp fun(self: BeamNGVehicle): BeamNGVec3

---@class BeamNGEngine
---@field getObjectCount fun(self: BeamNGEngine): integer
---@field getObject fun(self: BeamNGEngine, index: integer): BeamNGVehicle?
---@field getPlayerVehicle fun(self: BeamNGEngine, playerIndex?: integer): BeamNGVehicle?
---@field getPlayerVehicleID fun(self: BeamNGEngine, playerIndex?: integer): integer
---@field getObjectByID fun(self: BeamNGEngine, id: integer): BeamNGVehicle?

---@type BeamNGEngine
be = {}

-- Source: ge/main.lua.
---Keeps the extension loaded across levels (manual) or allows automatic unloading (auto).
---@overload fun(extension: string, mode: 'manual'|'auto')
---@param extension BeamNGExtension
---@param mode 'manual'|'auto'
function setExtensionUnloadMode(extension, mode) end

-- Source: ge/ge_utils.lua. These helpers return cached vehicle references.

---@param player integer
---@return BeamNGVehicle?
function getPlayerVehicle(player) end

---@param id integer
---@return BeamNGVehicle?
function getObjectByID(id) end

---@return BeamNGVehicle[]
function getAllVehicles() end
