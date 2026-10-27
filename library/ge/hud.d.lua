---@meta
---@diagnostic disable: missing-fields

-- Source: ge/extensions/ui/visibility.lua.
---@type {get: fun(): boolean}
ui_visibility = {}
-- Compatibility probe used by HUD mods; not confirmed in the current game Lua source.
-- Keep optional: callers must check that the function exists.
---@type {isLoadingScreenActive?: fun(): boolean}
ui_router = {}
-- Source: ge/extensions/core/gamestate.lua.
---@type {loading: fun(): boolean}
core_gamestate = {}
-- Source: ge/extensions/core/input/bindings.lua.
---@type {getMenuActionMapEnabled: fun(): boolean}
core_input_bindings = {}
-- Source: ge/extensions/gameplay/missions/missionManager.lua; may return nil.
---@type {isCurrentlyProcessingStep: fun(): boolean?}
gameplay_missions_missionManager = {}
-- Sources: ge/extensions/core/flowgraphManager.lua and
-- ge/extensions/flowgraph/modules/uiModule.lua.
---@class BeamNGFlowgraphManager
---@field modules {ui: {isFadeScreenActive: boolean}}
---@type {getAllManagers: fun(): table<integer, BeamNGFlowgraphManager>}
core_flowgraphManager = {}
-- Source: ge/extensions/scenario/scenarios.lua.
---@class BeamNGScenario
---@field state string
---@type {getScenario: fun(): BeamNGScenario?}
scenario_scenarios = {}
-- Source: ge/extensions/render/openxr.lua.
---@type {isSessionRunning: fun(): boolean}
render_openxr = {}

-- Source: ge/extensions/gameplay/race/race.lua (race state and event records).
---@class BeamNGRaceTime
---@field duration? number
---@field beginTime? number
---@field endTime? number
---@field lapTime? number
---@field segmentTimes? BeamNGRaceTime[]
---@class BeamNGRaceState
---@field historicTimes BeamNGRaceTime[]
---@field currentTimes BeamNGRaceTime[]
---@class BeamNGRace
---@field states table<integer, BeamNGRaceState>
---@class BeamNGRaceEvent
---@field race BeamNGRace
---@field time number
