---@meta
---@diagnostic disable: missing-fields -- Engine object declarations without implementations.
-- Source: common/extensions.lua. Available hooks depend on the Lua environment.

---@class BeamNGExtension
---@field dependencies? string[]
---@field onInit? fun()
---@field onExtensionLoaded? fun(data?: table): boolean? # Returning false cancels loading.
---@field onExtensionUnloaded? fun()
---@field onUpdate? fun(dtReal: number, dtSim: number, dtRaw: number)
---@field onSerialize? fun(): table
---@field onDeserialized? fun(data: table)
---@field onDeserialize? fun(data: table)

---@class BeamNGExtensions
---@field load fun(...: string|string[])
---@field unload fun(name: string)
---@field isExtensionLoaded fun(name: string): boolean
---@field hook fun(eventName: string, ...: any)

---@type BeamNGExtensions
extensions = {}
