---@meta
---@diagnostic disable: missing-fields -- Engine object declarations without implementations.
-- Source: vehicle/damageTracker.lua; used by vehicle/powertrain/combustionEngine.lua
-- and vehicle/energyStorage/pressureTank.lua. Damage values are caller-defined.

---@class BeamNGDamageTracker
---@field setDamage fun(group: string, name: string, value: any, notifyUI?: boolean)
---@field getDamage fun(group: string, name: string): any # Returns false for an absent entry.
---@field setDamageTemporary fun(group: string, name: string, value: any, timeoutValue: any, timeout: number, notifyUI?: boolean) # Replaces the value after timeout seconds.
---@field sendNow fun() # Schedules damage data for the next graphics update.

---@type BeamNGDamageTracker
damageTracker = {}
