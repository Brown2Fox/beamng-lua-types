---@meta
---@diagnostic disable: missing-fields

-- Native scene API inferred from ge/client/postFx/dof.lua.
-- Partial shared shape for ShaderData, GFXStateBlockData and PostEffect;
-- individual engine classes do not necessarily support every member.
---@class BeamNGSceneObject
---@field DXVertexShaderFile? string
---@field DXPixelShaderFile? string
---@field pixVersion? number
---@field zDefined? boolean
---@field zEnable? boolean
---@field zWriteEnable? boolean
---@field samplersDefined? boolean
---@field registerObject fun(self: BeamNGSceneObject, name: string)
---@field setField fun(self: BeamNGSceneObject, name: string, index: integer, value: string)
---@field add fun(self: BeamNGSceneObject, child: BeamNGSceneObject)
---@field enable fun(self: BeamNGSceneObject)
---@field disable fun(self: BeamNGSceneObject)
---@field setShaderConst fun(self: BeamNGSceneObject, name: string, value: string)

---@type {findObject: fun(name: string): BeamNGSceneObject?}
scenetree = {}

---@param className string
---@return BeamNGSceneObject
function createObject(className) end
