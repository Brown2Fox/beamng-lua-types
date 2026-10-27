---@meta
---@diagnostic disable: missing-fields -- Engine object declarations without implementations.
-- Source: common/guihooks.lua, common/utils.lua.

---@class BeamNGTranslatedMessage
---@field txt string # Translation key.
---@field context? table<string, any>

---@alias BeamNGMessage string|BeamNGTranslatedMessage

---@class BeamNGGuihooks
---@field trigger fun(eventName: string, ...: any)
---@field triggerStream fun(streamName: string, data: any)
---@field queueStream fun(streamName: string, data: any) # Queues stream data for the next UI update; Vehicle Lua requires an active stream update.
---@field message fun(message: BeamNGMessage, ttl?: number, category?: string, icon?: string, availableOptionsCount?: integer, currentOptionIndex?: integer)

---@type BeamNGGuihooks
guihooks = {}

---Displays a message; ttl is the duration in seconds (default: 5).
---@param message BeamNGMessage
---@param ttl? number
---@param category? string
---@param icon? string
function ui_message(message, ttl, category, icon) end
