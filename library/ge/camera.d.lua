---@meta
---@diagnostic disable: missing-fields -- Engine object declarations without implementations.
-- Source: ge/extensions/core/camera.lua, ge/extensions/core/cameraInput.lua
-- and ge/extensions/core/cameraModes/*.lua.

---@class BeamNGCameraData
---@field [string] any # Camera modes may expose additional fields.
---@field camRot? BeamNGVec3 # Camera rotation in degrees.
---@field camLastRot? BeamNGVec3 # Smoothed camera rotation in radians.
---@field camMinDist? number
---@field camMaxDist? number
---@field camDist? number
---@field cameraResetted? number # Remaining reset frames.
---@field seatRotation? number # Seat tilt in degrees (occupant camera).
---@field relativePitch? number # Normalized manual pitch (occupant camera).

---@class BeamNGCameraModes
---@field [string] BeamNGCameraData?
---@field orbit? BeamNGCameraData
---@field driver? BeamNGCameraData

---@class BeamNGCameraTarget
---@field vehId integer
---@field camName string

---@class BeamNGCoreCamera
---@field cameraZoom fun(value: number, player?: integer) # Sets zoom input for the player; positive zooms in, negative zooms out, zero stops zooming.
---@field getActiveCamName fun(player?: integer): string?
---@field resetCamera fun(player: integer) # Resets the player's camera and clears its movement inputs.
---@field getCameraDataById fun(vehicleId: integer, contextId?: integer): BeamNGCameraModes?
---@field setDefaultRotation fun(vehId: integer, rotation: BeamNGVec3)
---@field setDefaultRotation fun(target: BeamNGCameraTarget, rotation: BeamNGVec3)
---@field setRotation fun(vehId: integer, rotation: BeamNGVec3|BeamNGQuat)
---@field setRotation fun(target: BeamNGCameraTarget, rotation: BeamNGVec3|BeamNGQuat) # The format depends on the camera mode.
---@field setDefaultDistance fun(vehId: integer, distance: number)
---@field setDefaultDistance fun(target: BeamNGCameraTarget, distance: number)
---@field setDistance fun(vehId: integer, distance: number)
---@field setDistance fun(target: BeamNGCameraTarget, distance: number)
---@field setByName fun(player: integer, name: string, withTransition?: boolean, customData?: table)
---@field setByName fun(name: string, withTransition?: boolean, customData?: table)
---@field getPosition fun(contextId?: integer): BeamNGVec3
---@field getQuat fun(contextId?: integer): BeamNGQuat
---@field getFovDeg fun(contextId?: integer): number

---@type BeamNGCoreCamera
core_camera = {}
