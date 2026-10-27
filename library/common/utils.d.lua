---@meta
-- Source: common/utils.lua. log is provided by the engine.

---@param logType 'D'|'I'|'W'|'E'|'A'
---@param context string
---@param message string
function log(logType, context, message) end

---@param ... any
function dump(...) end

---@param ... any
---@return string
function dumps(...) end

---@generic T
---@param value T
---@return T
function deepcopy(value) end

---@generic T
---@param value T
---@return T
function shallowcopy(value) end

---@param value table
---@return integer
function tableSize(value) end

---@param value table
---@return boolean
function tableIsEmpty(value) end

---@generic T: table
---@param destination T
---@param source table
---@return T
function tableMerge(destination, source) end

---@param path string
---@return string?
function readFile(path) end

---@param path string
---@param data string
---@return boolean?
function writeFile(path, data) end

---JSON contents; nil if the file is missing or cannot be read.
---@param path string
---@return any
function jsonReadFile(path) end

---@param path string
---@param data table
---@param pretty? boolean
---@param numberPrecision? integer
---@param atomicWrite? boolean|string
---@return boolean
function jsonWriteFile(path, data, pretty, numberPrecision, atomicWrite) end

---@param value any
---@return string
function jsonEncode(value) end

---@param value any
---@param level? integer
---@param numberPrecision? integer
---@return string
function jsonEncodePretty(value, level, numberPrecision) end

---Returns nil on a decoding error; context is used in error messages.
---@param content string
---@param context? string
---@return any
function jsonDecode(content, context) end

---Returns a Lua expression representing the value.
---@param value any
---@return string
function serialize(value) end

---Evaluates a serialized Lua expression. Invalid expressions raise an error.
---@param source string|nil
---@return any
function deserialize(source) end

---@param values table
---@param value any
---@return boolean
function tableContains(values, value) end

---Returns false when the value is absent.
---@param values any[]
---@param value any
---@return integer|false
function arrayFindValueIndex(values, value) end

---@generic K, V
---@param values table<K, V>
---@param target? K[]
---@return K[]
function tableKeys(values, target) end
