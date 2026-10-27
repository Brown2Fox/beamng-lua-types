---@meta
---@diagnostic disable: missing-fields

-- Sources: vehicle/controller/driveModes.lua and vehicle/controller/esc.lua.
---@class BeamNGControllerState
---@field activeDriveModeIndex? integer
---@field activeDriveModeKey? string
---@field escConfigKey? integer

---@class BeamNGDriveMode
---@field name? string
---@field key string

---@class BeamNGESCConfiguration
---@field name? string
---@field escEnabled? boolean
---@field escConfigurationEnabled? boolean

-- Source: vehicle/wheels.lua (wheel records and manager).
---@class BeamNGWheel
---@field node1 integer
---@field node2 integer
---@field wheelDir number
---@field contactMaterialID1 integer
---@field contactMaterialID2 integer
---@field name string
---@field wheelID integer
---@field hasABS boolean
---@field isTireDeflated? boolean
---@field isBroken? boolean
---@field brakeInputSplit number
---@field brakeSplitCoef number
---@field brakeTorque number
---@field desiredBrakingTorque number

---@class BeamNGWheels
---@field wheelCount integer
---@field wheels table<integer, BeamNGWheel>
---@field getDefaultABSBehavior fun(): string
---@field setABSBehavior fun(behavior: string)
---@type BeamNGWheels
wheels = {}

-- Source: vehicle/main.lua.
---@type {firstPlayerSeated: boolean}
playerInfo = {}
-- Source: vehicle/beamstate.lua.
---@type {damage: number}
beamstate = {}
-- Source: vehicle/sensors.lua.
---@type {gx: number, gy: number, gz: number}
sensors = {}

-- Sources: vehicle/main.lua and vehicle/controller/esc.lua; partial vehicle data.
---@class BeamNGVehicleData
---@field data BeamNGJBeamData
---@field userSettings? {escConfig?: {configurations?: table<string, BeamNGESCConfiguration>}}
---@type BeamNGVehicleData
v = {}

-- Source: vehicle/controller/esc.lua; partial ESC configuration container.
---@class BeamNGModeConfiguration: table<string, string[]|table<string, BeamNGESCConfiguration>|string|number|boolean>
---@field configurations? table<string, BeamNGESCConfiguration>

-- Source: vehicle/wheels.lua, vehicle/extensions/advancedwheeldebug.lua, vehicle/hydros.lua.
---@class BeamNGJBeamWheel
---@field steerAxisUp? integer
---@field steerAxisDown? integer

---@class BeamNGJBeamData: table<string, table>
---@field wheels table<integer, BeamNGJBeamWheel>
---@field input BeamNGVehicleInputConfig

---@class BeamNGHydro
---@field inputSource string

---@class BeamNGHydros
---@field hydros BeamNGHydro[]
---@field forceAtWheelNorm number
---@field forceAtDriverNorm number
---@field forceAtDriver number

---@type BeamNGHydros
hydros = {}

-- Source: vehicle/input.lua (JBeam input settings).
---@class BeamNGVehicleInputConfig
---@field steeringWheelLock? number
