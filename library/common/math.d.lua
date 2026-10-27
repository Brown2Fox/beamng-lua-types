---@meta
-- Source: common/mathlib.lua.

---@class BeamNGVec3
---@field x number
---@field y number
---@field z number
---@field set fun(self: BeamNGVec3, x: number, y: number, z: number)|fun(self: BeamNGVec3, value: BeamNGVec3)
---@field xyz fun(self: BeamNGVec3): number, number, number
---@field copy fun(self: BeamNGVec3): BeamNGVec3
---@field toTable fun(self: BeamNGVec3): number[]
---@field toDict fun(self: BeamNGVec3): {x: number, y: number, z: number}
---@field length fun(self: BeamNGVec3): number
---@field squaredLength fun(self: BeamNGVec3): number
---@field dot fun(self: BeamNGVec3, other: BeamNGVec3): number
---@field cross fun(self: BeamNGVec3, other: BeamNGVec3): BeamNGVec3
---@field distance fun(self: BeamNGVec3, other: BeamNGVec3): number
---@field squaredDistance fun(self: BeamNGVec3, other: BeamNGVec3): number
---@field normalize fun(self: BeamNGVec3) # Modifies the original vector; returns nothing.
---@field normalized fun(self: BeamNGVec3): BeamNGVec3
---@field resize fun(self: BeamNGVec3, length: number)
---@field resized fun(self: BeamNGVec3, length: number): BeamNGVec3
---@field rotated fun(self: BeamNGVec3, rotation: BeamNGQuat): BeamNGVec3
---@field setAdd fun(self: BeamNGVec3, other: BeamNGVec3)
---@field setSub fun(self: BeamNGVec3, other: BeamNGVec3)
---@field setScaled fun(self: BeamNGVec3, scale: number)
---@field setLerp fun(self: BeamNGVec3, from: BeamNGVec3, to: BeamNGVec3, t: number)
---@operator add(BeamNGVec3): BeamNGVec3
---@operator sub(BeamNGVec3): BeamNGVec3
---@operator unm: BeamNGVec3
---@operator mul(number): BeamNGVec3
---@operator div(number): BeamNGVec3

---@overload fun(): BeamNGVec3
---@overload fun(value: BeamNGVec3|{x: number, y: number, z: number}|number[]): BeamNGVec3
---@param x number
---@param y number
---@param z? number
---@return BeamNGVec3
function vec3(x, y, z) end

---@class BeamNGQuat
---@field x number
---@field y number
---@field z number
---@field w number
---@field set fun(self: BeamNGQuat, value: BeamNGQuat)|fun(self: BeamNGQuat, x: number, y: number, z: number, w: number)
---@field xyzw fun(self: BeamNGQuat): number, number, number, number
---@field copy fun(self: BeamNGQuat): BeamNGQuat
---@field toTable fun(self: BeamNGQuat): number[]
---@field norm fun(self: BeamNGQuat): number
---@field normalize fun(self: BeamNGQuat)
---@field normalized fun(self: BeamNGQuat): BeamNGQuat
---@field inverse fun(self: BeamNGQuat)
---@field inversed fun(self: BeamNGQuat): BeamNGQuat
---@field dot fun(self: BeamNGQuat, other: BeamNGQuat): number
---@field nlerp fun(self: BeamNGQuat, other: BeamNGQuat, t: number): BeamNGQuat
---@field slerp fun(self: BeamNGQuat, other: BeamNGQuat, t: number): BeamNGQuat
---@field toEulerYXZ fun(self: BeamNGQuat): BeamNGVec3
---@operator mul(BeamNGQuat): BeamNGQuat
---@operator mul(BeamNGVec3): BeamNGVec3
---@operator mul(number): BeamNGQuat
---@operator unm: BeamNGQuat

---@overload fun(): BeamNGQuat
---@overload fun(value: BeamNGQuat|{x: number, y: number, z: number, w: number}|number[]): BeamNGQuat
---@param x number
---@param y number
---@param z number
---@param w number
---@return BeamNGQuat
function quat(x, y, z, w) end

---Angles in radians.
---@param x number
---@param y number
---@param z number
---@return BeamNGQuat
function quatFromEuler(x, y, z) end

---@param direction BeamNGVec3
---@param up? BeamNGVec3
---@return BeamNGQuat
function quatFromDir(direction, up) end

---@param axis BeamNGVec3
---@param angleRad number
---@return BeamNGQuat
function quatFromAxisAngle(axis, angleRad) end

---@param value number
---@param minValue number
---@param maxValue number
---@return number
function clamp(value, minValue, maxValue) end

---@param from number
---@param to number
---@param t number
---@return number
function lerp(from, to, t) end

---@param value number
---@param minValue number
---@param maxValue number
---@param minOutput number
---@param maxOutput number
---@return number
function linearScale(value, minValue, maxValue, minOutput, maxOutput) end

---@param value number
---@return number
function sign(value) end

---@param value number
---@return integer
function round(value) end
