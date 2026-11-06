---@meta
-- Sources: ge/extensions/core/cameraModes/collision.lua and chase.lua.

---@class BeamNGCameraFrame
---@field dt number
---@field pos BeamNGVec3
---@field veh BeamNGVehicle
---@field res BeamNGCameraResult

---@class BeamNGCameraResult
---@field pos BeamNGVec3
---@field rot BeamNGQuat
---@field fov number
---@field nearClip number
---@field targetPos BeamNGVec3
---@field collisionCompatible boolean

---@class BeamNGCameraCollision
---@field update fun(self: BeamNGCameraCollision, data: BeamNGCameraFrame)
---@field onSettingsChanged fun(self: BeamNGCameraCollision)
---@field init fun(self: BeamNGCameraCollision)
---@field collidingCamDistance fun(self: BeamNGCameraCollision): number?

---@return BeamNGCameraCollision
local function create() end
return create
