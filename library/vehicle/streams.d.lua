---@meta
---@diagnostic disable: missing-fields -- Engine object declarations without implementations.
-- Source: vehicle/guistreams.lua; exposed as streams in vehicle/main.lua.

---@class BeamNGStreams
---@field willSend fun(name: string): boolean? # Whether the named stream is requested and the UI is ready for an update.
---@field hasActiveStreams fun(): boolean
---@field drawGraph fun(key: string, value: number) # Sends a graph sample when genericGraphAdvanced is requested.

---@type BeamNGStreams
streams = {}
