---@meta
-- Source: common/filters.lua; used by vehicle/controller/axleLift.lua,
-- vehicle/controller/drivingDynamics/CMU.lua and ge/extensions/core/cameraModes/*.lua.

---@class BeamNGTemporalSmoothing
---@field get fun(self: BeamNGTemporalSmoothing, sample: number, dt: number): number
---@field getCapped fun(self: BeamNGTemporalSmoothing, sample: number, dt: number): number # Limits the result to [-1, 1].
---@field getUncapped fun(self: BeamNGTemporalSmoothing, sample: number, dt: number): number
---@field getWithRate fun(self: BeamNGTemporalSmoothing, sample: number, dt: number, rate: number): number
---@field getWithRateCapped fun(self: BeamNGTemporalSmoothing, sample: number, dt: number, rate: number): number
---@field set fun(self: BeamNGTemporalSmoothing, value: number)
---@field value fun(self: BeamNGTemporalSmoothing): number
---@field reset fun(self: BeamNGTemporalSmoothing) # Restores the starting value.

---Limits the rate of change; dt is in seconds.
---@param inRate? number
---@param outRate? number
---@param autoCenterRate? number
---@param startingValue? number
---@return BeamNGTemporalSmoothing
function newTemporalSmoothing(inRate, outRate, autoCenterRate, startingValue) end

---@class BeamNGTemporalSmoothingNonLinear
---@field get fun(self: BeamNGTemporalSmoothingNonLinear, sample: number, dt: number): number
---@field getWithRate fun(self: BeamNGTemporalSmoothingNonLinear, sample: number, dt: number, rate: number): number
---@field set fun(self: BeamNGTemporalSmoothingNonLinear, value: number)
---@field value fun(self: BeamNGTemporalSmoothingNonLinear): number
---@field reset fun(self: BeamNGTemporalSmoothingNonLinear) # Resets to zero, not the starting value.

---@param inRate? number
---@param outRate? number
---@param startingValue? number
---@return BeamNGTemporalSmoothingNonLinear
function newTemporalSmoothingNonLinear(inRate, outRate, startingValue) end

---@class BeamNGExponentialSmoothing
---@field get fun(self: BeamNGExponentialSmoothing, sample: number): number
---@field getWindow fun(self: BeamNGExponentialSmoothing, sample: number, window: number): number
---@field set fun(self: BeamNGExponentialSmoothing, value: number)
---@field value fun(self: BeamNGExponentialSmoothing): number
---@field reset fun(self: BeamNGExponentialSmoothing, value?: number) # Restores the starting value when omitted.

---Smooths samples at a fixed time step; fixedDt defaults to 0.0005 seconds.
---@param window number
---@param startingValue? number
---@param fixedDt? number
---@return BeamNGExponentialSmoothing
function newExponentialSmoothing(window, startingValue, fixedDt) end
