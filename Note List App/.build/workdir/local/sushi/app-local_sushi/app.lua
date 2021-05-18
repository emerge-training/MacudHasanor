jk = jk or {}

jk.lang = jk.lang or {}

jk.lang.CharacterObject = {}

jk.lang.StringObject = {}

jk.lang.VariableReference = {}
jk.lang.VariableReference.__index = jk.lang.VariableReference
_vm:set_metatable(jk.lang.VariableReference, {})

function jk.lang.VariableReference._create()
	local v = _vm:set_metatable({}, jk.lang.VariableReference)
	return v
end

function jk.lang.VariableReference:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.VariableReference'
	self['_isType.jk.lang.VariableReference'] = true
	self.setter = nil
	self.getter = nil
end

function jk.lang.VariableReference:_construct0()
	jk.lang.VariableReference._init(self)
	return self
end

function jk.lang.VariableReference:_construct2(setter, getter)
	jk.lang.VariableReference._init(self)
	self.setter = setter
	self.getter = getter
	return self
end

function jk.lang.VariableReference:set(value)
	do self.setter(value) end
	do return self end
end

function jk.lang.VariableReference:get()
	do return self.getter() end
end

jk.lang.Closable = {}

jk.lang.LongIntegerIterator = {}

jk.lang.Iterator = {}

jk.lang.StringIterator = {}

jk.lang.Matrix = {}
jk.lang.Matrix.__index = jk.lang.Matrix
_vm:set_metatable(jk.lang.Matrix, {})

function jk.lang.Matrix._create()
	local v = _vm:set_metatable({}, jk.lang.Matrix)
	return v
end

function jk.lang.Matrix:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Matrix'
	self['_isType.jk.lang.Matrix'] = true
	self.vector = nil
	self.columnCount = 0
end

function jk.lang.Matrix:_construct0()
	jk.lang.Matrix._init(self)
	return self
end

function jk.lang.Matrix:_construct2(rowSize, columnSize)
	jk.lang.Matrix._init(self)
	self.vector = {}
	do self:setSize(rowSize, columnSize) end
	return self
end

function jk.lang.Matrix:set(row, column, val)
	if not (self.vector ~= nil) then
		do return end
	end
	if not (row >= 0 or column >= 0) then
		do return end
	end
	do
		local size = row * self.columnCount + column
		if not (_g.jk.lang.Vector:getSize(self.vector) > size) then
			do return end
		end
		do _g.jk.lang.Vector:set(self.vector, size, val) end
	end
end

function jk.lang.Matrix:get(row, column)
	if not (self.vector ~= nil) then
		do return nil end
	end
	if not (row >= 0 or column >= 0) then
		do return nil end
	end
	do
		local size = row * self.columnCount + column
		if not (_g.jk.lang.Vector:getSize(self.vector) > size) then
			do return nil end
		end
		do return _g.jk.lang.Vector:get(self.vector, size) end
	end
end

function jk.lang.Matrix:setSize(rowSize, colSize)
	if not (self.vector ~= nil) then
		do return nil end
	end
	self.columnCount = colSize
	do _g.jk.lang.Vector:setSize(self.vector, rowSize * colSize) end
	do return self end
end

function jk.lang.Matrix:getRowCount()
	if not (self.vector ~= nil) then
		do return 0 end
	end
	do return _g.jk.lang.Vector:getSize(self.vector) / self.columnCount end
end

function jk.lang.Matrix:getColumnCount()
	if not (self.vector ~= nil) then
		do return 0 end
	end
	do return self.columnCount end
end

jk.lang.Task = {}

jk.lang.Stack = {}
jk.lang.Stack.__index = jk.lang.Stack
_vm:set_metatable(jk.lang.Stack, {})

function jk.lang.Stack._create()
	local v = _vm:set_metatable({}, jk.lang.Stack)
	return v
end

function jk.lang.Stack:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Stack'
	self['_isType.jk.lang.Stack'] = true
	self.data = nil
end

function jk.lang.Stack:_construct0()
	jk.lang.Stack._init(self)
	self.data = {}
	return self
end

function jk.lang.Stack:push(o)
	do _g.jk.lang.Vector:append(self.data, o) end
end

function jk.lang.Stack:pop()
	local sz = _g.jk.lang.Vector:getSize(self.data)
	if sz < 1 then
		do return nil end
	end
	do
		local v = _g.jk.lang.Vector:getAt(self.data, sz - 1)
		do _g.jk.lang.Vector:remove(self.data, sz - 1) end
		do return v end
	end
end

function jk.lang.Stack:peek()
	local sz = _g.jk.lang.Vector:getSize(self.data)
	if sz < 1 then
		do return nil end
	end
	do return _g.jk.lang.Vector:getAt(self.data, sz - 1) end
end

function jk.lang.Stack:isEmpty()
	do return self:getSize() < 1 end
end

function jk.lang.Stack:getSize()
	do return _g.jk.lang.Vector:getSize(self.data) end
end

function jk.lang.Stack:dupData()
	local v = {}
	if self.data ~= nil then
		local n = 0
		local m = _g.jk.lang.Vector:getSize(self.data)
		do
			n = 0
			while n < m do
				local o = self.data[n + 1]
				if o ~= nil then
					do _g.jk.lang.Vector:append(v, o) end
				end
				do n = n + 1 end
			end
		end
	end
	do return v end
end

function jk.lang.Stack:dup()
	local v = _g.jk.lang.Stack._construct0(_g.jk.lang.Stack._create())
	do v:setData(self:dupData()) end
	do return v end
end

function jk.lang.Stack:getData()
	do return self.data end
end

function jk.lang.Stack:setData(v)
	self.data = v
	do return self end
end

jk.lang.IntegerObject = {}

jk.lang.Set = {}
jk.lang.Set.__index = jk.lang.Set
_vm:set_metatable(jk.lang.Set, {})

function jk.lang.Set._create()
	local v = _vm:set_metatable({}, jk.lang.Set)
	return v
end

function jk.lang.Set:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Set'
	self['_isType.jk.lang.Set'] = true
end

function jk.lang.Set:_construct0()
	jk.lang.Set._init(self)
	return self
end

function jk.lang.Set:add(set, value)
	if not (set ~= nil) then
		do return end
	end
	_io:write_to_stdout("[jk.lang.Set.add] (Set.sling:50:3): Not implemented" .. "\n")
end

function jk.lang.Set:remove(set, value)
	if not (set ~= nil) then
		do return end
	end
	_io:write_to_stdout("[jk.lang.Set.remove] (Set.sling:76:3): Not implemented" .. "\n")
end

function jk.lang.Set:clear(set)
	if not (set ~= nil) then
		do return end
	end
	_io:write_to_stdout("[jk.lang.Set.clear] (Set.sling:102:3): Not implemented" .. "\n")
end

function jk.lang.Set:getSize(set)
	if not (set ~= nil) then
		do return 0 end
	end
	_io:write_to_stdout("[jk.lang.Set.getSize] (Set.sling:128:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.lang.Set:contains(set, value)
	if not (set ~= nil) then
		do return false end
	end
	_io:write_to_stdout("[jk.lang.Set.contains] (Set.sling:155:3): Not implemented" .. "\n")
	do return false end
end

function jk.lang.Set:getValues(set)
	if not (set ~= nil) then
		do return nil end
	end
	_io:write_to_stdout("[jk.lang.Set.getValues] (Set.sling:214:3): Not implemented" .. "\n")
	do return nil end
end

jk.lang.LongIntegerObject = {}

jk.lang.Runnable = {}

jk.lang.StringObjectWithDebug = {}

jk.lang.DynamicMapObject = {}

jk.lang.Error = {}
jk.lang.Error.__index = jk.lang.Error
_vm:set_metatable(jk.lang.Error, {})

function jk.lang.Error._create()
	local v = _vm:set_metatable({}, jk.lang.Error)
	return v
end

function jk.lang.Error:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Error'
	self['_isType.jk.lang.Error'] = true
	self['_isType.jk.lang.StringObject'] = true
	self['_isType.jk.lang.StringObjectWithDebug'] = true
	self.code = nil
	self.detail = nil
end

function jk.lang.Error:_construct0()
	jk.lang.Error._init(self)
	return self
end

function jk.lang.Error:throw(code, detail)
	_vm:throw_error(_g.jk.lang.ExceptionWithError:forError(_g.jk.lang.Error:forCode(code, detail)))
end

function jk.lang.Error:forCode(code, detail)
	do return _g.jk.lang.Error._construct0(_g.jk.lang.Error._create()):setCode(code):setDetail(detail) end
end

function jk.lang.Error:asString(error)
	if not (error ~= nil) then
		do return "error" end
	end
	do return error:toString() end
end

function jk.lang.Error:set(error, code, detail)
	if not (error ~= nil) then
		do return nil end
	end
	do error:setCode(code) end
	do error:setDetail(detail) end
	do return error end
end

function jk.lang.Error:setErrorCode(error, code)
	do return _g.jk.lang.Error:set(error, code, nil) end
end

function jk.lang.Error:setErrorDetail(error, detail)
	do return _g.jk.lang.Error:set(error, nil, detail) end
end

function jk.lang.Error:isError(o)
	if not (o ~= nil) then
		do return false end
	end
	if not (_vm:to_table_with_key(o, '_isType.jk.lang.Error') ~= nil) then
		do return false end
	end
	do
		local e = o
		if _g.jk.lang.String:isEmpty(e:getCode()) then
			do return false end
		end
		do return true end
	end
end

function jk.lang.Error:clear()
	self.code = nil
	self.detail = nil
	do return self end
end

function jk.lang.Error:toStringWithDefault(debug, defaultError)
	local details = nil
	if (_vm:to_table_with_key(self.detail, '_isType.jk.lang.StringObjectWithDebug') ~= nil) then
		details = self.detail:toStringWithDebug(debug)
	else
		details = _g.jk.lang.String:asString(self.detail)
	end
	if _g.jk.lang.String:isEmpty(self.code) == false then
		if _g.jk.lang.String:isEmpty(details) == false then
			do return _g.jk.lang.String:safeString(self.code) .. ":" .. _g.jk.lang.String:safeString(details) end
		end
		do return self.code end
	end
	if _g.jk.lang.String:isEmpty(details) == false then
		do return "errorWithDetail:" .. _g.jk.lang.String:safeString(details) end
	end
	do return defaultError end
end

function jk.lang.Error:toStringWithDebug(debug)
	do return self:toStringWithDefault(debug, "unknownError") end
end

function jk.lang.Error:toString()
	do return self:toStringWithDebug(false) end
end

function jk.lang.Error:getCode()
	do return self.code end
end

function jk.lang.Error:setCode(v)
	self.code = v
	do return self end
end

function jk.lang.Error:getDetail()
	do return self.detail end
end

function jk.lang.Error:setDetail(v)
	self.detail = v
	do return self end
end

jk.lang.Integer = {}
jk.lang.Integer.__index = jk.lang.Integer
_vm:set_metatable(jk.lang.Integer, {})

function jk.lang.Integer._create()
	local v = _vm:set_metatable({}, jk.lang.Integer)
	return v
end

function jk.lang.Integer:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Integer'
	self['_isType.jk.lang.Integer'] = true
	self['_isType.jk.lang.IntegerObject'] = true
	self.value = 0
end

function jk.lang.Integer:_construct0()
	jk.lang.Integer._init(self)
	return self
end

function jk.lang.Integer:forValue(value)
	do return _g.jk.lang.Integer:asObject(value) end
end

function jk.lang.Integer:asObject(integer)
	local v = _g.jk.lang.Integer._construct0(_g.jk.lang.Integer._create())
	do v:setValue(integer) end
	do return v end
end

function jk.lang.Integer:asInteger(obj)
	if not (obj ~= nil) then
		do return 0 end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		do return _util:convert_to_integer(obj) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.IntegerObject') ~= nil) then
		local oi = obj
		do return oi:toInteger() end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		local v = _util:convert_to_integer(obj)
		do return v end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.LongIntegerObject') ~= nil) then
		local oi = obj
		do return oi:toLong() end
	end
	if (_vm:get_variable_type(obj) == 'string') then
		do return _g.jk.lang.String:toInteger(obj) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.StringObject') ~= nil) then
		do return _g.jk.lang.String:toInteger(obj:toString()) end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		local v = obj
		do return _util:convert_to_integer(v) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.DoubleObject') ~= nil) then
		local od = obj
		do return _util:convert_to_integer(od:toDouble()) end
	end
	if (_vm:get_variable_type(obj) == 'boolean') then
		if obj == true then
			do return 1 end
		end
		do return 0 end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.BooleanObject') ~= nil) then
		if obj:toBoolean() then
			do return 1 end
		end
		do return 0 end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		local v = obj
		do return _util:convert_to_integer(v) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.CharacterObject') ~= nil) then
		local oc = obj
		do return _util:convert_to_integer(oc:toCharacter()) end
	end
	do return 0 end
end

function jk.lang.Integer:add(amount)
	self.value = self.value + amount
end

function jk.lang.Integer:toInteger()
	do return self.value end
end

function jk.lang.Integer:getValue()
	do return self.value end
end

function jk.lang.Integer:setValue(v)
	self.value = v
	do return self end
end

jk.lang.KeyValueList = {}
jk.lang.KeyValueList.__index = jk.lang.KeyValueList
_vm:set_metatable(jk.lang.KeyValueList, {})

function jk.lang.KeyValueList._create()
	local v = _vm:set_metatable({}, jk.lang.KeyValueList)
	return v
end

function jk.lang.KeyValueList:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.KeyValueList'
	self['_isType.jk.lang.KeyValueList'] = true
	self.values = nil
end

function jk.lang.KeyValueList:_construct0()
	jk.lang.KeyValueList._init(self)
	return self
end

function jk.lang.KeyValueList:add(key, val)
	if self.values == nil then
		self.values = {}
	end
	do
		local kvp = _g.jk.lang.KeyValuePair._construct0(_g.jk.lang.KeyValuePair._create())
		kvp.key = key
		kvp.value = val
		do _g.jk.lang.Vector:append(self.values, kvp) end
	end
end

function jk.lang.KeyValueList:addPair(pair)
	if self.values == nil then
		self.values = {}
	end
	do _g.jk.lang.Vector:append(self.values, pair) end
end

function jk.lang.KeyValueList:prepend(key, val)
	if self.values == nil then
		self.values = {}
	end
	do
		local kvp = _g.jk.lang.KeyValuePair._construct0(_g.jk.lang.KeyValuePair._create())
		kvp.key = key
		kvp.value = val
		do _g.jk.lang.Vector:prepend(self.values, kvp) end
	end
end

function jk.lang.KeyValueList:prependPair(pair)
	if self.values == nil then
		self.values = {}
	end
	do _g.jk.lang.Vector:prepend(self.values, pair) end
end

function jk.lang.KeyValueList:iterate()
	local v = _g.jk.lang.Vector:iterate(self.values)
	do return v end
end

function jk.lang.KeyValueList:asVector()
	do return self.values end
end

function jk.lang.KeyValueList:dup()
	local v = _g.jk.lang.KeyValueList._construct0(_g.jk.lang.KeyValueList._create())
	local it = self:iterate()
	while true do
		local kvp = it:next()
		if kvp == nil then
			do break end
		end
		do v:add(kvp.key, kvp.value) end
	end
	do return v end
end

function jk.lang.KeyValueList:getKey(index)
	if self.values == nil then
		do return nil end
	end
	do
		local kvp = _g.jk.lang.Vector:get(self.values, index)
		if kvp == nil then
			do return nil end
		end
		do return kvp.key end
	end
end

function jk.lang.KeyValueList:getValue(index)
	if self.values == nil then
		do return nil end
	end
	do
		local kvp = _g.jk.lang.Vector:get(self.values, index)
		if kvp == nil then
			do return nil end
		end
		do return kvp.value end
	end
end

function jk.lang.KeyValueList:count()
	if self.values == nil then
		do return 0 end
	end
	do return _g.jk.lang.Vector:getSize(self.values) end
end

function jk.lang.KeyValueList:remove(index)
	do _g.jk.lang.Vector:remove(self.values, index) end
end

function jk.lang.KeyValueList:clear()
	self.values = nil
end

jk.lang.ObjectWithSize = {}

jk.lang.KeyValuePair = {}
jk.lang.KeyValuePair.__index = jk.lang.KeyValuePair
_vm:set_metatable(jk.lang.KeyValuePair, {})

function jk.lang.KeyValuePair._create()
	local v = _vm:set_metatable({}, jk.lang.KeyValuePair)
	return v
end

function jk.lang.KeyValuePair:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.KeyValuePair'
	self['_isType.jk.lang.KeyValuePair'] = true
	self.key = nil
	self.value = nil
end

function jk.lang.KeyValuePair:_construct0()
	jk.lang.KeyValuePair._init(self)
	return self
end

function jk.lang.KeyValuePair:_construct2(key, value)
	jk.lang.KeyValuePair._init(self)
	self.key = key
	self.value = value
	return self
end

jk.lang.ObjectWrapper = {}
jk.lang.ObjectWrapper.__index = jk.lang.ObjectWrapper
_vm:set_metatable(jk.lang.ObjectWrapper, {})

function jk.lang.ObjectWrapper._create()
	local v = _vm:set_metatable({}, jk.lang.ObjectWrapper)
	return v
end

function jk.lang.ObjectWrapper:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.ObjectWrapper'
	self['_isType.jk.lang.ObjectWrapper'] = true
	self.value = nil
end

function jk.lang.ObjectWrapper:_construct0()
	jk.lang.ObjectWrapper._init(self)
	return self
end

function jk.lang.ObjectWrapper:getValue()
	do return self.value end
end

function jk.lang.ObjectWrapper:setValue(v)
	self.value = v
	do return self end
end

jk.lang.ArrayObject = {}

jk.lang.Iterateable = {}

jk.lang.MapObject = {}

jk.lang.VectorObject = {}

jk.lang.BitOp = {}
jk.lang.BitOp.__index = jk.lang.BitOp
_vm:set_metatable(jk.lang.BitOp, {})

function jk.lang.BitOp._create()
	local v = _vm:set_metatable({}, jk.lang.BitOp)
	return v
end

function jk.lang.BitOp:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.BitOp'
	self['_isType.jk.lang.BitOp'] = true
end

function jk.lang.BitOp:_construct0()
	jk.lang.BitOp._init(self)
	return self
end

function jk.lang.BitOp:_or(v1, v2)
	do return _vm:bitwise_or(v1, v2) end
end

function jk.lang.BitOp:_and(v1, v2)
	do return _vm:bitwise_and(v1, v2) end
end

function jk.lang.BitOp:xor(v1, v2)
	do return _vm:bitwise_xor(v1, v2) end
end

function jk.lang.BitOp:_not(v)
	do return _vm:bitwise_not(v) end
end

jk.lang.IntegerIterator = {}

jk.lang.CharacterIterator = {}

jk.lang.LongInteger = {}
jk.lang.LongInteger.__index = jk.lang.LongInteger
_vm:set_metatable(jk.lang.LongInteger, {})

function jk.lang.LongInteger._create()
	local v = _vm:set_metatable({}, jk.lang.LongInteger)
	return v
end

function jk.lang.LongInteger:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.LongInteger'
	self['_isType.jk.lang.LongInteger'] = true
	self['_isType.jk.lang.LongIntegerObject'] = true
	self.value = 0
end

function jk.lang.LongInteger:_construct0()
	jk.lang.LongInteger._init(self)
	return self
end

function jk.lang.LongInteger:forValue(value)
	do return _g.jk.lang.LongInteger:asObject(value) end
end

function jk.lang.LongInteger:asObject(value)
	local v = _g.jk.lang.LongInteger._construct0(_g.jk.lang.LongInteger._create())
	do v:setValue(value) end
	do return v end
end

function jk.lang.LongInteger:asLong(obj)
	if not (obj ~= nil) then
		do return 0 end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		do return _util:convert_to_integer(obj) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.LongIntegerObject') ~= nil) then
		local oi = obj
		do return oi:toLong() end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		local v = _util:convert_to_integer(obj)
		do return v end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.IntegerObject') ~= nil) then
		local oi = obj
		do return oi:toInteger() end
	end
	if (_vm:get_variable_type(obj) == 'string') then
		do return _g.jk.lang.String:toLong(obj) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.StringObject') ~= nil) then
		do return _g.jk.lang.String:toLong(obj:toString()) end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		local v = obj
		do return _util:convert_to_integer(v) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.DoubleObject') ~= nil) then
		local od = obj
		do return _util:convert_to_integer(od:toDouble()) end
	end
	if (_vm:get_variable_type(obj) == 'boolean') then
		if obj == true then
			do return 1 end
		end
		do return 0 end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.BooleanObject') ~= nil) then
		if obj:toBoolean() then
			do return 1 end
		end
		do return 0 end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		local v = obj
		do return _util:convert_to_integer(v) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.CharacterObject') ~= nil) then
		local oc = obj
		do return _util:convert_to_integer(oc:toCharacter()) end
	end
	do return 0 end
end

function jk.lang.LongInteger:add(amount)
	self.value = self.value + amount
end

function jk.lang.LongInteger:toLong()
	do return self.value end
end

function jk.lang.LongInteger:getValue()
	do return self.value end
end

function jk.lang.LongInteger:setValue(v)
	self.value = v
	do return self end
end

jk.lang.DoubleObject = {}

jk.lang.Duplicateable = {}

jk.lang.DoubleIterator = {}

jk.lang.BufferObject = {}

jk.lang.Range = {}
jk.lang.Range.__index = jk.lang.Range
_vm:set_metatable(jk.lang.Range, {})

jk.lang.Range.TYPE_NONE = 0
jk.lang.Range.TYPE_EXCLUDE_UPPER_BOUND = 1
jk.lang.Range.TYPE_EXCLUDE_LOWER_BOUND = 2
jk.lang.Range.TYPE_EXCLUDE_BOTH_BOUNDS = 3

function jk.lang.Range._create()
	local v = _vm:set_metatable({}, jk.lang.Range)
	return v
end

function jk.lang.Range:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Range'
	self['_isType.jk.lang.Range'] = true
	self['_isType.jk.lang.Iterateable'] = true
	self.lowerBound = 0.0
	self.upperBound = 0.0
	self.exclusionType = 0
end

function jk.lang.Range:forIntegerValues(lowerBound, upperBound, exclusionType)
	local v = _g.jk.lang.Range._construct0(_g.jk.lang.Range._create())
	do v:setLowerBound(lowerBound) end
	do v:setUpperBound(upperBound) end
	do v:setExclusionType(exclusionType) end
	do return v end
end

function jk.lang.Range:forDoubleValues(lowerBound, upperBound, exclusionType)
	local v = _g.jk.lang.Range._construct0(_g.jk.lang.Range._create())
	do v:setLowerBound(lowerBound) end
	do v:setUpperBound(upperBound) end
	do v:setExclusionType(exclusionType) end
	do return v end
end

function jk.lang.Range:forValues(lowerBound, upperBound, exclusionType)
	if (_vm:get_variable_type(lowerBound) == 'number') and (_vm:get_variable_type(upperBound) == 'number') then
		do return _g.jk.lang.Range:forDoubleValues(lowerBound, upperBound, exclusionType) end
	end
	if (_vm:get_variable_type(lowerBound) == 'number') and (_vm:get_variable_type(upperBound) == 'number') then
		do return _g.jk.lang.Range:forIntegerValues(_util:convert_to_integer(lowerBound), _util:convert_to_integer(upperBound), exclusionType) end
	end
	do return nil end
end

function jk.lang.Range:_construct0()
	jk.lang.Range._init(self)
	return self
end

function jk.lang.Range:setLowerBound(lowerBound)
	self.lowerBound = lowerBound
end

function jk.lang.Range:setUpperBound(upperBound)
	self.upperBound = upperBound
end

function jk.lang.Range:setExclusionType(exclusionType)
	self.exclusionType = exclusionType
end

function jk.lang.Range:getLowerBoundAsInteger()
	do return _util:convert_to_integer(self.lowerBound) end
end

function jk.lang.Range:getLowerBoundAsDouble()
	do return self.lowerBound end
end

function jk.lang.Range:getUpperBoundAsInteger()
	do return _util:convert_to_integer(self.upperBound) end
end

function jk.lang.Range:getUpperBoundAsDouble()
	do return self.upperBound end
end

function jk.lang.Range:containsIntegerValue(value)
	do return self:containsDoubleValue(value) end
end

function jk.lang.Range:containsDoubleValue(value)
	if self.exclusionType == _g.jk.lang.Range.TYPE_NONE then
		do return value >= self.lowerBound and value <= self.upperBound end
	elseif self.exclusionType == _g.jk.lang.Range.TYPE_EXCLUDE_UPPER_BOUND then
		do return value >= self.lowerBound and value < self.upperBound end
	elseif self.exclusionType == _g.jk.lang.Range.TYPE_EXCLUDE_LOWER_BOUND then
		do return value > self.lowerBound and value <= self.upperBound end
	elseif self.exclusionType == _g.jk.lang.Range.TYPE_EXCLUDE_BOTH_BOUNDS then
		do return value > self.lowerBound and value < self.upperBound end
	end
	do return false end
end

jk.lang.Range.RangeIterator = {}
jk.lang.Range.RangeIterator.__index = jk.lang.Range.RangeIterator
_vm:set_metatable(jk.lang.Range.RangeIterator, {})

function jk.lang.Range.RangeIterator._create()
	local v = _vm:set_metatable({}, jk.lang.Range.RangeIterator)
	return v
end

function jk.lang.Range.RangeIterator:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Range.RangeIterator'
	self['_isType.jk.lang.Range.RangeIterator'] = true
	self['_isType.jk.lang.Iterator'] = true
	self.lowerBound = 0
	self.upperBound = 0
	self.increment = 0
	self.current = nil
end

function jk.lang.Range.RangeIterator:_construct0()
	jk.lang.Range.RangeIterator._init(self)
	return self
end

function jk.lang.Range.RangeIterator:_construct2(lowerBound, upperBound)
	jk.lang.Range.RangeIterator._init(self)
	self.lowerBound = lowerBound
	self.upperBound = upperBound
	if lowerBound <= upperBound then
		self.increment = 1
	else
		self.increment = -1
	end
	return self
end

function jk.lang.Range.RangeIterator:next()
	if not (self.current ~= nil) then
		self.current = _g.jk.lang.Integer:forValue(self.lowerBound)
	else
		do self.current:add(self.increment) end
	end
	do return self.current:getValue() end
end

function jk.lang.Range.RangeIterator:hasNext()
	if not (self.current ~= nil) then
		do return true end
	end
	if self.increment > 0 then
		do return self.current:getValue() < self.upperBound end
	end
	do return self.current:getValue() > self.upperBound end
end

function jk.lang.Range:iterate()
	local lv = _util:convert_to_integer(self.lowerBound)
	local uv = _util:convert_to_integer(self.upperBound)
	if self.exclusionType == _g.jk.lang.Range.TYPE_NONE then
	end
	if self.exclusionType == _g.jk.lang.Range.TYPE_EXCLUDE_UPPER_BOUND then
		uv = uv - 1
	elseif self.exclusionType == _g.jk.lang.Range.TYPE_EXCLUDE_LOWER_BOUND then
		lv = lv + 1
	elseif self.exclusionType == _g.jk.lang.Range.TYPE_EXCLUDE_BOTH_BOUNDS then
		uv = uv - 1
		lv = lv + 1
	end
	do return _g.jk.lang.Range.RangeIterator._construct2(_g.jk.lang.Range.RangeIterator._create(), lv, uv) end
end

jk.lang.StringDataReceiver = {}

jk.lang.Array = {}
jk.lang.Array.__index = jk.lang.Array
_vm:set_metatable(jk.lang.Array, {})

function jk.lang.Array._create()
	local v = _vm:set_metatable({}, jk.lang.Array)
	return v
end

function jk.lang.Array:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Array'
	self['_isType.jk.lang.Array'] = true
end

function jk.lang.Array:_construct0()
	jk.lang.Array._init(self)
	return self
end

jk.lang.Array.MyArrayObject = {}
jk.lang.Array.MyArrayObject.__index = jk.lang.Array.MyArrayObject
_vm:set_metatable(jk.lang.Array.MyArrayObject, {})

function jk.lang.Array.MyArrayObject._create()
	local v = _vm:set_metatable({}, jk.lang.Array.MyArrayObject)
	return v
end

function jk.lang.Array.MyArrayObject:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Array.MyArrayObject'
	self['_isType.jk.lang.Array.MyArrayObject'] = true
	self['_isType.jk.lang.ArrayObject'] = true
	self['_isType.jk.lang.ObjectWithSize'] = true
	self.array = nil
end

function jk.lang.Array.MyArrayObject:_construct0()
	jk.lang.Array.MyArrayObject._init(self)
	return self
end

function jk.lang.Array.MyArrayObject:toArray()
	do return self.array end
end

function jk.lang.Array.MyArrayObject:getSize()
	do return #self.array end
end

function jk.lang.Array.MyArrayObject:getArray()
	do return self.array end
end

function jk.lang.Array.MyArrayObject:setArray(v)
	self.array = v
	do return self end
end

function jk.lang.Array:asObject(array)
	local v = _g.jk.lang.Array.MyArrayObject._construct0(_g.jk.lang.Array.MyArrayObject._create())
	do v:setArray(array) end
	do return v end
end

function jk.lang.Array:isEmpty(array)
	if array == nil then
		do return true end
	end
	if #array < 1 then
		do return true end
	end
	do return false end
end

function jk.lang.Array:isNotEmpty(array)
	do return not _g.jk.lang.Array:isEmpty(array) end
end

function jk.lang.Array:contains(array, element)
	if not (array ~= nil) then
		do return false end
	end
	if array ~= nil then
		local n = 0
		local m = #array
		do
			n = 0
			while n < m do
				local oo = array[n + 1]
				if oo ~= nil then
					if element == oo then
						do return true end
					end
				end
				do n = n + 1 end
			end
		end
	end
	do return false end
end

function jk.lang.Array:toVector(array)
	do return _g.jk.lang.Vector:forArray(array) end
end

function jk.lang.Array:copyFrom(array, src, soffset, doffset, size)
	if not (array ~= nil) then
		do return end
	end
	if not (src ~= nil) then
		do return end
	end
	do
		local n = 0
		while n < size do
			array[doffset + n + 1] = src[soffset + n + 1]
			do n = n + 1 end
		end
	end
end

jk.lang.DynamicVector = {}
jk.lang.DynamicVector.__index = jk.lang.DynamicVector
_vm:set_metatable(jk.lang.DynamicVector, {})

function jk.lang.DynamicVector._create()
	local v = _vm:set_metatable({}, jk.lang.DynamicVector)
	return v
end

function jk.lang.DynamicVector:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.DynamicVector'
	self['_isType.jk.lang.DynamicVector'] = true
	self['_isType.jk.lang.Duplicateable'] = true
	self['_isType.jk.lang.Iterateable'] = true
	self['_isType.jk.lang.VectorObject'] = true
	self['_isType.jk.lang.ObjectWithSize'] = true
	self.vector = nil
end

function jk.lang.DynamicVector:asDynamicVector(object)
	if not (object ~= nil) then
		do return nil end
	end
	if (_vm:to_table_with_key(object, '_isType.jk.lang.DynamicVector') ~= nil) then
		do return object end
	end
	if (function(x) return x ~= nil and _vm:get_variable_type(x) == 'table' and not x._isClassInstance == true and #x > 0 end)(object) then
		do return _g.jk.lang.DynamicVector:forArray(object) end
	end
	if (function(x) return x ~= nil and _vm:get_variable_type(x) == 'table' and not x._isClassInstance == true and #x > 0 end)(object) then
		do return _g.jk.lang.DynamicVector:forObjectVector(object) end
	end
	do return nil end
end

function jk.lang.DynamicVector:forStringVector(vector)
	local v = _g.jk.lang.DynamicVector._construct0(_g.jk.lang.DynamicVector._create())
	if vector ~= nil then
		local n = 0
		local m = _g.jk.lang.Vector:getSize(vector)
		do
			n = 0
			while n < m do
				local item = vector[n + 1]
				if item ~= nil then
					do v:appendObject(item) end
				end
				do n = n + 1 end
			end
		end
	end
	do return v end
end

function jk.lang.DynamicVector:forObjectVector(vector)
	local v = _g.jk.lang.DynamicVector._construct0(_g.jk.lang.DynamicVector._create())
	if vector ~= nil then
		local n = 0
		local m = _g.jk.lang.Vector:getSize(vector)
		do
			n = 0
			while n < m do
				local item = vector[n + 1]
				if item ~= nil then
					do v:appendObject(item) end
				end
				do n = n + 1 end
			end
		end
	end
	do return v end
end

function jk.lang.DynamicVector:forArray(array)
	local v = _g.jk.lang.DynamicVector._construct0(_g.jk.lang.DynamicVector._create())
	if array ~= nil then
		local n = 0
		local m = #array
		do
			n = 0
			while n < m do
				local item = array[n + 1]
				if item ~= nil then
					do v:appendObject(item) end
				end
				do n = n + 1 end
			end
		end
	end
	do return v end
end

function jk.lang.DynamicVector:_construct0()
	jk.lang.DynamicVector._init(self)
	self.vector = {}
	return self
end

function jk.lang.DynamicVector:toVector()
	do return self.vector end
end

function jk.lang.DynamicVector:toVectorOfStrings()
	local v = {}
	if self.vector ~= nil then
		local n = 0
		local m = _g.jk.lang.Vector:getSize(self.vector)
		do
			n = 0
			while n < m do
				local o = self.vector[n + 1]
				if o ~= nil then
					local s = _g.jk.lang.String:asString(o)
					if s ~= nil then
						do _g.jk.lang.Vector:append(v, s) end
					end
				end
				do n = n + 1 end
			end
		end
	end
	do return v end
end

function jk.lang.DynamicVector:toVectorOfDynamicMaps()
	local v = {}
	if self.vector ~= nil then
		local n = 0
		local m = _g.jk.lang.Vector:getSize(self.vector)
		do
			n = 0
			while n < m do
				local o = _vm:to_table_with_key(self.vector[n + 1], '_isType.jk.lang.DynamicMap')
				if o ~= nil then
					do _g.jk.lang.Vector:append(v, o) end
				end
				do n = n + 1 end
			end
		end
	end
	do return v end
end

function jk.lang.DynamicVector:duplicate()
	local v = _g.jk.lang.DynamicVector._construct0(_g.jk.lang.DynamicVector._create())
	local it = self:iterate()
	while it ~= nil do
		local o = it:next()
		if o == nil then
			do break end
		end
		do v:appendObject(o) end
	end
	do return v end
end

function jk.lang.DynamicVector:mergeDynamicVector(dynamicVector)
	if not (dynamicVector ~= nil) or dynamicVector:getSize() < 1 then
		do return self end
	end
	do return self:mergeVector(dynamicVector:toVector()) end
end

function jk.lang.DynamicVector:mergeVector(vector)
	if vector ~= nil then
		local n = 0
		local m = _g.jk.lang.Vector:getSize(vector)
		do
			n = 0
			while n < m do
				local item = vector[n + 1]
				if item ~= nil then
					do self:appendObject(item) end
				end
				do n = n + 1 end
			end
		end
	end
	do return self end
end

function jk.lang.DynamicVector:appendObject(object)
	do _g.jk.lang.Vector:append(self.vector, object) end
	do return self end
end

function jk.lang.DynamicVector:appendString(string)
	do _g.jk.lang.Vector:append(self.vector, string) end
	do return self end
end

function jk.lang.DynamicVector:appendInteger(value)
	do _g.jk.lang.Vector:append(self.vector, _g.jk.lang.Integer:asObject(value)) end
	do return self end
end

function jk.lang.DynamicVector:appendLong(value)
	do _g.jk.lang.Vector:append(self.vector, _g.jk.lang.LongInteger:asObject(value)) end
	do return self end
end

function jk.lang.DynamicVector:appendBoolean(value)
	do _g.jk.lang.Vector:append(self.vector, _g.jk.lang.Boolean:asObject(value)) end
	do return self end
end

function jk.lang.DynamicVector:appendDouble(value)
	do _g.jk.lang.Vector:append(self.vector, _g.jk.lang.Double:asObject(value)) end
	do return self end
end

function jk.lang.DynamicVector:setObject(index, object)
	do _g.jk.lang.Vector:set(self.vector, index, object) end
	do return self end
end

function jk.lang.DynamicVector:setInteger(index, value)
	do _g.jk.lang.Vector:set(self.vector, index, _g.jk.lang.Integer:asObject(value)) end
	do return self end
end

function jk.lang.DynamicVector:setLong(index, value)
	do _g.jk.lang.Vector:set(self.vector, index, _g.jk.lang.LongInteger:asObject(value)) end
	do return self end
end

function jk.lang.DynamicVector:setBoolean(index, value)
	do _g.jk.lang.Vector:set(self.vector, index, _g.jk.lang.Boolean:asObject(value)) end
	do return self end
end

function jk.lang.DynamicVector:setDouble(index, value)
	do _g.jk.lang.Vector:set(self.vector, index, _g.jk.lang.Double:asObject(value)) end
	do return self end
end

function jk.lang.DynamicVector:get(index)
	do return _g.jk.lang.Vector:getAt(self.vector, index) end
end

function jk.lang.DynamicVector:getString(index, defval)
	local v = _g.jk.lang.String:asString(self:get(index))
	if v == nil then
		do return defval end
	end
	do return v end
end

function jk.lang.DynamicVector:getInteger(index, defval)
	local vv = self:get(index)
	if vv == nil then
		do return defval end
	end
	do return _g.jk.lang.Integer:asInteger(vv) end
end

function jk.lang.DynamicVector:getLongInteger(index, defval)
	local vv = self:get(index)
	if vv == nil then
		do return defval end
	end
	do return _g.jk.lang.LongInteger:asLong(vv) end
end

function jk.lang.DynamicVector:getBoolean(index, defval)
	local vv = self:get(index)
	if vv == nil then
		do return defval end
	end
	do return _g.jk.lang.Boolean:asBoolean(vv, false) end
end

function jk.lang.DynamicVector:getDouble(index, defval)
	local vv = self:get(index)
	if vv == nil then
		do return defval end
	end
	do return _g.jk.lang.Double:asDouble(vv) end
end

function jk.lang.DynamicVector:getMap(index)
	do return _vm:to_table_with_key(self:get(index), '_isType.jk.lang.DynamicMap') end
end

function jk.lang.DynamicVector:getVector(index)
	do return _vm:to_table_with_key(self:get(index), '_isType.jk.lang.DynamicVector') end
end

function jk.lang.DynamicVector:iterate()
	local v = _g.jk.lang.Vector:iterate(self.vector)
	do return v end
end

function jk.lang.DynamicVector:iterateReverse()
	local v = _g.jk.lang.Vector:iterateReverse(self.vector)
	do return v end
end

function jk.lang.DynamicVector:remove(index)
	do _g.jk.lang.Vector:remove(self.vector, index) end
end

function jk.lang.DynamicVector:removeValue(value)
	do _g.jk.lang.Vector:removeValue(self.vector, value) end
end

function jk.lang.DynamicVector:clear()
	do _g.jk.lang.Vector:clear(self.vector) end
end

function jk.lang.DynamicVector:contains(object)
	do return _g.jk.lang.Vector:contains(self.vector, object) end
end

function jk.lang.DynamicVector:getSize()
	do return _g.jk.lang.Vector:getSize(self.vector) end
end

function jk.lang.DynamicVector:setCapacity(capacity)
	do _g.jk.lang.Vector:setCapacity(self.vector, capacity) end
end

function jk.lang.DynamicVector:sort()
	do _g.jk.lang.Vector:sort(self.vector, function(a, b)
		do return _g.jk.lang.String:compare(_g.jk.lang.String:asString(a), _g.jk.lang.String:asString(b)) end
	end) end
end

function jk.lang.DynamicVector:sortWithComparer(comparer)
	if comparer == nil then
		do self:sort() end
		do return end
	end
	do _g.jk.lang.Vector:sort(self.vector, comparer) end
end

function jk.lang.DynamicVector:sortReverse()
	do _g.jk.lang.Vector:sortReverse(self.vector, function(a, b)
		do return _g.jk.lang.String:compare(_g.jk.lang.String:asString(a), _g.jk.lang.String:asString(b)) end
	end) end
end

function jk.lang.DynamicVector:sortReverseWithComparer(comparer)
	if comparer == nil then
		do self:sortReverse() end
		do return end
	end
	do _g.jk.lang.Vector:sortReverse(self.vector, comparer) end
end

jk.lang.Queue = {}
jk.lang.Queue.__index = jk.lang.Queue
_vm:set_metatable(jk.lang.Queue, {})

function jk.lang.Queue._create()
	local v = _vm:set_metatable({}, jk.lang.Queue)
	return v
end

function jk.lang.Queue:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Queue'
	self['_isType.jk.lang.Queue'] = true
	self.data = nil
end

function jk.lang.Queue:_construct0()
	jk.lang.Queue._init(self)
	self.data = {}
	return self
end

function jk.lang.Queue:clear()
	self.data = {}
end

function jk.lang.Queue:push(o)
	do _g.jk.lang.Vector:append(self.data, o) end
end

function jk.lang.Queue:pop()
	local sz = _g.jk.lang.Vector:getSize(self.data)
	if sz < 1 then
		do return nil end
	end
	do
		local v = _g.jk.lang.Vector:getAt(self.data, 0)
		do _g.jk.lang.Vector:remove(self.data, 0) end
		do return v end
	end
end

function jk.lang.Queue:peek()
	local sz = _g.jk.lang.Vector:getSize(self.data)
	if sz < 1 then
		do return nil end
	end
	do return _g.jk.lang.Vector:getAt(self.data, 0) end
end

function jk.lang.Queue:isEmpty()
	do return self:getSize() < 1 end
end

function jk.lang.Queue:getSize()
	do return _g.jk.lang.Vector:getSize(self.data) end
end

function jk.lang.Queue:getData()
	do return self.data end
end

function jk.lang.Queue:setData(v)
	self.data = v
	do return self end
end

jk.lang.Vector = {}
jk.lang.Vector.__index = jk.lang.Vector
_vm:set_metatable(jk.lang.Vector, {})

function jk.lang.Vector._create()
	local v = _vm:set_metatable({}, jk.lang.Vector)
	return v
end

function jk.lang.Vector:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Vector'
	self['_isType.jk.lang.Vector'] = true
end

function jk.lang.Vector:_construct0()
	jk.lang.Vector._init(self)
	return self
end

function jk.lang.Vector:asVector(obj)
	local vo = _vm:to_table_with_key(obj, '_isType.jk.lang.VectorObject')
	if not (vo ~= nil) then
		do return nil end
	end
	do return vo:toVector() end
end

function jk.lang.Vector:asObjectVector(o)
	local it = _g.jk.lang.DynamicObject:iterate(o)
	if not (it ~= nil) then
		do return nil end
	end
	do
		local v = {}
		while true do
			local oo = it:next()
			if not (oo ~= nil) then
				do break end
			end
			do _g.jk.lang.Vector:append(v, oo) end
		end
		do return v end
	end
end

function jk.lang.Vector:forIterator(iterator)
	if not (iterator ~= nil) then
		do return nil end
	end
	do
		local v = {}
		while true do
			local o = iterator:next()
			if o == nil then
				do break end
			end
			do _g.jk.lang.Vector:append(v, o) end
		end
		do return v end
	end
end

function jk.lang.Vector:forArray(array)
	if not (array ~= nil) then
		do return nil end
	end
	do
		local v = {}
		do
			local n = 0
			while n < #array do
				do _g.jk.lang.Vector:append(v, array[n + 1]) end
				do n = n + 1 end
			end
		end
		do return v end
	end
end

function jk.lang.Vector:toVectorOfObject(collection)
	if not (collection ~= nil) then
		do return nil end
	end
	do
		local nvec = {}
		if collection ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(collection)
			do
				n = 0
				while n < m do
					local item = collection[n + 1]
					if item ~= nil then
						do _g.jk.lang.Vector:append(nvec, item) end
					end
					do n = n + 1 end
				end
			end
		end
		do return nvec end
	end
end

function jk.lang.Vector:dupObjectVector(vector)
	if not (vector ~= nil) then
		do return nil end
	end
	do
		local v = {}
		if vector ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(vector)
			do
				n = 0
				while n < m do
					local o = vector[n + 1]
					if o ~= nil then
						do _g.jk.lang.Vector:append(v, o) end
					end
					do n = n + 1 end
				end
			end
		end
		do return v end
	end
end

function jk.lang.Vector:contains(vector, object)
	if not (vector ~= nil) then
		do return false end
	end
	if vector ~= nil then
		local n = 0
		local m = _g.jk.lang.Vector:getSize(vector)
		do
			n = 0
			while n < m do
				local oo = vector[n + 1]
				if oo ~= nil then
					if object == oo then
						do return true end
					end
				end
				do n = n + 1 end
			end
		end
	end
	do return false end
end

function jk.lang.Vector:append(vector, object)
	do local sz = vector["n"] or 0 vector[sz + 1] = object vector["n"] = sz + 1 end
end

function jk.lang.Vector:prepend(vector, object)
	do _g.jk.lang.Vector:insert(vector, object, 0) end
end

function jk.lang.Vector:insert(vector, object, index)
	do local sz = vector["n"] or 0 _vm:insert_to_indexed_table(vector, index + 1, object) vector["n"] = sz + 1 end
end

function jk.lang.Vector:setCapacity(vector, capacity)
	if not (vector ~= nil) then
		do return end
	end
end

function jk.lang.Vector:setSize(vector, newSize)
	if not (vector ~= nil) then
		do return nil end
	end
	do
		local sz = newSize
		if sz < 0 then
			sz = 0
		end
		do
			local osz = _g.jk.lang.Vector:getSize(vector)
			if sz == osz then
				do return vector end
			end
			if sz < osz then
				do
					local n = osz - 1
					while n >= sz do
						do _g.jk.lang.Vector:remove(vector, n) end
						do n = n - 1 end
					end
				end
			else
				do
					local n = osz
					while n < sz do
						do _g.jk.lang.Vector:append(vector, nil) end
						do n = n + 1 end
					end
				end
			end
			do return vector end
		end
	end
end

function jk.lang.Vector:getSize(vector)
	if vector == nil then
		do return 0 end
	end
	do return vector["n"] or 0 end
end

function jk.lang.Vector:getAt(vector, index)
	do return _g.jk.lang.Vector:get(vector, index) end
end

function jk.lang.Vector:get(vector, index)
	if index < 0 or index >= _g.jk.lang.Vector:getSize(vector) then
		do return nil end
	end
	do return vector[index + 1] end
end

function jk.lang.Vector:getFirst(vector)
	do return _g.jk.lang.Vector:get(vector, 0) end
end

function jk.lang.Vector:getLast(vector)
	do return _g.jk.lang.Vector:get(vector, _g.jk.lang.Vector:getSize(vector) - 1) end
end

function jk.lang.Vector:set(vector, index, val)
	if index < 0 or index >= _g.jk.lang.Vector:getSize(vector) then
		do return end
	end
	do vector[index + 1]  = val end
end

function jk.lang.Vector:remove(vector, index)
	local sz = _g.jk.lang.Vector:getSize(vector)
	if index < 0 or index >= sz then
		do return nil end
	end
	do _vm:remove_from_indexed_table(vector, index+1) vector["n"] = sz - 1 end
end

function jk.lang.Vector:popFirst(vector)
	if vector == nil or _g.jk.lang.Vector:getSize(vector) < 1 then
		do return nil end
	end
	do
		local v = _g.jk.lang.Vector:get(vector, 0)
		do _g.jk.lang.Vector:removeFirst(vector) end
		do return v end
	end
end

function jk.lang.Vector:removeFirst(vector)
	if vector == nil or _g.jk.lang.Vector:getSize(vector) < 1 then
		do return end
	end
	do _g.jk.lang.Vector:remove(vector, 0) end
end

function jk.lang.Vector:popLast(vector)
	local sz = _g.jk.lang.Vector:getSize(vector)
	if vector == nil or sz < 1 then
		do return nil end
	end
	do
		local v = _g.jk.lang.Vector:get(vector, sz - 1)
		do _g.jk.lang.Vector:removeLast(vector) end
		do return v end
	end
end

function jk.lang.Vector:removeLast(vector)
	if vector == nil then
		do return end
	end
	do
		local sz = _g.jk.lang.Vector:getSize(vector)
		if sz < 1 then
			do return end
		end
		do _g.jk.lang.Vector:remove(vector, sz - 1) end
	end
end

function jk.lang.Vector:removeValue(vector, value)
	local n = 0
	do
		n = 0
		while n < _g.jk.lang.Vector:getSize(vector) do
			if vector[n + 1] == value then
				do _g.jk.lang.Vector:remove(vector, n) end
				do return n end
			end
			do n = n + 1 end
		end
	end
	do return -1 end
end

function jk.lang.Vector:clear(vector)
	do _vm:clear_table(vector) vector["n"] = 0 end
end

function jk.lang.Vector:isEmpty(vector)
	if vector == nil then
		do return true end
	end
	do
		local v = false
		do local sz = vector["n"] if sz == nil or sz < 1 then v = true end end
		do return v end
	end
end

function jk.lang.Vector:isNotEmpty(vector)
	do return not _g.jk.lang.Vector:isEmpty(vector) end
end

function jk.lang.Vector:removeRange(vector, index, count)
	do
		local n = 0
		while n < count do
			do _g.jk.lang.Vector:remove(vector, index) end
			do n = n + 1 end
		end
	end
end

jk.lang.Vector.VectorIterator = {}
jk.lang.Vector.VectorIterator.__index = jk.lang.Vector.VectorIterator
_vm:set_metatable(jk.lang.Vector.VectorIterator, {})

function jk.lang.Vector.VectorIterator._create()
	local v = _vm:set_metatable({}, jk.lang.Vector.VectorIterator)
	return v
end

function jk.lang.Vector.VectorIterator:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Vector.VectorIterator'
	self['_isType.jk.lang.Vector.VectorIterator'] = true
	self['_isType.jk.lang.Iterator'] = true
	self.vector = nil
	self.index = 0
	self.increment = 1
end

function jk.lang.Vector.VectorIterator:_construct0()
	jk.lang.Vector.VectorIterator._init(self)
	return self
end

function jk.lang.Vector.VectorIterator:_construct2(vector, increment)
	jk.lang.Vector.VectorIterator._init(self)
	self.vector = vector
	self.increment = increment
	if increment < 0 and vector ~= nil then
		self.index = _g.jk.lang.Vector:getSize(vector) - 1
	end
	return self
end

function jk.lang.Vector.VectorIterator:next()
	if self.vector == nil then
		do return nil end
	end
	if self.index < 0 or self.index >= _g.jk.lang.Vector:getSize(self.vector) then
		do return nil end
	end
	do
		local v = self.vector[self.index + 1]
		self.index = self.index + self.increment
		do return v end
	end
end

function jk.lang.Vector.VectorIterator:hasNext()
	if not (self.vector ~= nil) then
		do return false end
	end
	if not (self.index < _g.jk.lang.Vector:getSize(self.vector) - 1) then
		do return false end
	end
	do return true end
end

function jk.lang.Vector:iterate(vector)
	do return _g.jk.lang.Vector.VectorIterator._construct2(_g.jk.lang.Vector.VectorIterator._create(), vector, 1) end
end

function jk.lang.Vector:iterateReverse(vector)
	do return _g.jk.lang.Vector.VectorIterator._construct2(_g.jk.lang.Vector.VectorIterator._create(), vector, -1) end
end

function jk.lang.Vector:sort(vector, comparer)
	if not (vector ~= nil) then
		do return end
	end
	do _vm:sort_table(vector, comparer) end
end

function jk.lang.Vector:sortReverse(vector, comparer)
	local cc = comparer
	do _g.jk.lang.Vector:sort(vector, function(a, b)
		do return -cc(a, b) end
	end) end
end

function jk.lang.Vector:sortAsStrings(vector)
	do _g.jk.lang.Vector:sort(vector, function(a, b)
		do return _g.jk.lang.String:compare(_g.jk.lang.String:asString(a), _g.jk.lang.String:asString(b)) end
	end) end
end

function jk.lang.Vector:sortAsStringsReverse(vector)
	do _g.jk.lang.Vector:sortReverse(vector, function(a, b)
		do return _g.jk.lang.String:compare(_g.jk.lang.String:asString(a), _g.jk.lang.String:asString(b)) end
	end) end
end

function jk.lang.Vector:reverse(vector)
	if not (vector ~= nil) then
		do return end
	end
	do
		local a = 0
		local b = _g.jk.lang.Vector:getSize(vector) - 1
		while a < b do
			local t = _g.jk.lang.Vector:getAt(vector, b)
			do _g.jk.lang.Vector:set(vector, b, _g.jk.lang.Vector:getAt(vector, a)) end
			do _g.jk.lang.Vector:set(vector, a, t) end
			do a = a + 1 end
			do b = b - 1 end
		end
	end
end

jk.lang.BooleanObject = {}

jk.lang.Boolean = {}
jk.lang.Boolean.__index = jk.lang.Boolean
_vm:set_metatable(jk.lang.Boolean, {})

function jk.lang.Boolean._create()
	local v = _vm:set_metatable({}, jk.lang.Boolean)
	return v
end

function jk.lang.Boolean:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Boolean'
	self['_isType.jk.lang.Boolean'] = true
	self['_isType.jk.lang.BooleanObject'] = true
	self.value = false
end

function jk.lang.Boolean:_construct0()
	jk.lang.Boolean._init(self)
	return self
end

function jk.lang.Boolean:asObject(value)
	local v = _g.jk.lang.Boolean._construct0(_g.jk.lang.Boolean._create())
	do v:setValue(value) end
	do return v end
end

function jk.lang.Boolean:asBoolean(obj, default)
	if obj == nil then
		do return false end
	end
	if (_vm:get_variable_type(obj) == 'boolean') then
		do return obj end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.BooleanObject') ~= nil) then
		local bo = obj
		do return bo:toBoolean() end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		if _util:convert_to_integer(obj) == 0 then
			do return false end
		end
		do return true end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.IntegerObject') ~= nil) then
		if obj:toInteger() == 0 then
			do return false end
		end
		do return true end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		if _util:convert_to_integer(obj) == 0 then
			do return false end
		end
		do return true end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.LongIntegerObject') ~= nil) then
		if obj:toLong() == 0 then
			do return false end
		end
		do return true end
	end
	if (_vm:get_variable_type(obj) == 'string') then
		local str = _g.jk.lang.String:toLowerCase(obj)
		if str == "yes" or str == "true" or str == "1" then
			do return true end
		end
		if str == "no" or str == "false" or str == "0" then
			do return false end
		end
		do return default end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.StringObject') ~= nil) then
		local str = obj:toString()
		if str ~= nil then
			str = _g.jk.lang.String:toLowerCase(str)
			if str == "yes" or str == "true" or str == "1" then
				do return true end
			end
			if str == "no" or str == "false" or str == "0" then
				do return false end
			end
		end
		do return default end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		if obj == 0.0 then
			do return false end
		end
		do return true end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.DoubleObject') ~= nil) then
		if obj:toDouble() == 0.0 then
			do return false end
		end
		do return true end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		if _util:convert_to_integer(obj) == 0 then
			do return false end
		end
		do return true end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.CharacterObject') ~= nil) then
		if _util:convert_to_integer(obj:toCharacter()) == 0 then
			do return false end
		end
		do return true end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.ObjectWithSize') ~= nil) then
		local sz = obj:getSize()
		if sz == 0 then
			do return false end
		end
		do return true end
	end
	do return default end
end

function jk.lang.Boolean:toBoolean()
	do return self.value end
end

function jk.lang.Boolean:getValue()
	do return self.value end
end

function jk.lang.Boolean:setValue(v)
	self.value = v
	do return self end
end

jk.lang.TimeValue = {}
jk.lang.TimeValue.__index = jk.lang.TimeValue
_vm:set_metatable(jk.lang.TimeValue, {})

function jk.lang.TimeValue._create()
	local v = _vm:set_metatable({}, jk.lang.TimeValue)
	return v
end

function jk.lang.TimeValue:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.TimeValue'
	self['_isType.jk.lang.TimeValue'] = true
	self.seconds = 0
	self.microSeconds = 0
end

function jk.lang.TimeValue:_construct0()
	jk.lang.TimeValue._init(self)
	return self
end

function jk.lang.TimeValue:forSeconds(seconds)
	local v = _g.jk.lang.TimeValue._construct0(_g.jk.lang.TimeValue._create())
	v.seconds = seconds
	do return v end
end

function jk.lang.TimeValue:toString()
	local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	do sb:appendString(_g.jk.lang.String:forLongInteger(self.seconds)) end
	do sb:appendCharacter(46) end
	do sb:appendString(_g.jk.lang.String:forLongInteger(self.microSeconds)) end
	do return sb:toString() end
end

function jk.lang.TimeValue:dup()
	local v = _g.jk.lang.TimeValue._construct0(_g.jk.lang.TimeValue._create())
	do v:copyFrom(self) end
	do return v end
end

function jk.lang.TimeValue:reset()
	self.seconds = 0
	self.microSeconds = 0
end

function jk.lang.TimeValue:copyFrom(tv)
	self.seconds = tv.seconds
	self.microSeconds = tv.microSeconds
end

function jk.lang.TimeValue:set(tv)
	self.seconds = tv:getSeconds()
	self.microSeconds = tv:getMicroSeconds()
end

function jk.lang.TimeValue:setSeconds(value)
	self.seconds = value
end

function jk.lang.TimeValue:setMilliSeconds(value)
	self.microSeconds = value * 1000
end

function jk.lang.TimeValue:setMicroSeconds(value)
	self.microSeconds = value
end

function jk.lang.TimeValue:add(s, us)
	local ts = self:getSeconds() + s
	local tus = self:getMicroSeconds() + us
	if tus > 1000000 then
		ts = ts + _util:convert_to_integer(tus / 1000000)
		tus = _util:convert_to_integer(tus % 1000000)
	end
	while tus < 0 do
		do ts = ts - 1 end
		tus = tus + 1000000
	end
	do
		local v = _g.jk.lang.TimeValue._construct0(_g.jk.lang.TimeValue._create())
		v.seconds = ts
		v.microSeconds = tus
		do return v end
	end
end

function jk.lang.TimeValue:addTimeValue(tv)
	if tv == nil then
		do return self end
	end
	do return self:add(tv:getSeconds(), tv:getMicroSeconds()) end
end

function jk.lang.TimeValue:subtract(tv)
	if tv == nil then
		do return self end
	end
	do return self:add(-tv:getSeconds(), -tv:getMicroSeconds()) end
end

function jk.lang.TimeValue:asMicroSeconds()
	do return self:getSeconds() * 1000000 + self:getMicroSeconds() end
end

function jk.lang.TimeValue:diff(a, b)
	if a == nil and b == nil then
		do return 0 end
	end
	if a == nil then
		do return b:asMicroSeconds() end
	end
	if b == nil then
		do return a:asMicroSeconds() end
	end
	do
		local r = (a.seconds - b.seconds) * 1000000 + (a.microSeconds - b.microSeconds)
		do return r end
	end
end

function jk.lang.TimeValue:diffDouble(a, b)
	do return _g.jk.lang.TimeValue:diff(a, b) / 1000000.0 end
end

function jk.lang.TimeValue:getSeconds()
	do return self.seconds end
end

function jk.lang.TimeValue:getMicroSeconds()
	do return self.microSeconds end
end

jk.lang.DynamicIterator = {}

jk.lang.String = {}
jk.lang.String.__index = jk.lang.String
_vm:set_metatable(jk.lang.String, {})

function jk.lang.String._create()
	local v = _vm:set_metatable({}, jk.lang.String)
	return v
end

function jk.lang.String:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.String'
	self['_isType.jk.lang.String'] = true
end

function jk.lang.String:_construct0()
	jk.lang.String._init(self)
	return self
end

function jk.lang.String:asString(obj)
	if not (obj ~= nil) then
		do return nil end
	end
	if (_vm:get_variable_type(obj) == 'string') then
		do return obj end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.StringObject') ~= nil) then
		local os = obj
		do return os:toString() end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		do return _g.jk.lang.String:forInteger(_util:convert_to_integer(obj)) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.IntegerObject') ~= nil) then
		do return _g.jk.lang.String:forInteger(obj:toInteger()) end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		do return _g.jk.lang.String:forLongInteger(_util:convert_to_integer(obj)) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.LongIntegerObject') ~= nil) then
		do return _g.jk.lang.String:forLongInteger(obj:toLong()) end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		do return _g.jk.lang.String:forDouble(obj) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.DoubleObject') ~= nil) then
		do return _g.jk.lang.String:forDouble(obj:toDouble()) end
	end
	if (_vm:get_variable_type(obj) == 'boolean') then
		do return _g.jk.lang.String:forBoolean(obj) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.BooleanObject') ~= nil) then
		do return _g.jk.lang.String:forBoolean(obj:toBoolean()) end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		do return _g.jk.lang.String:forCharacter(obj) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.CharacterObject') ~= nil) then
		do return _g.jk.lang.String:forCharacter(obj:toCharacter()) end
	end
	if _util:is_buffer(obj) then
		do return _g.jk.lang.String:forBufferHex(obj) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.BufferObject') ~= nil) then
		local v = obj:toBuffer()
		if not (v ~= nil) then
			do return "" end
		end
		do return _g.jk.lang.String:forBufferHex(v) end
	end
	do return nil end
end

function jk.lang.String:forObject(obj)
	do return _g.jk.lang.String:asString(obj) end
end

function jk.lang.String:safeString(str)
	if not (str ~= nil) then
		do return "" end
	end
	do return str end
end

function jk.lang.String:isEmpty(str)
	if not (str ~= nil) then
		do return true end
	end
	if _util:get_string_length(str) < 1 then
		do return true end
	end
	do return false end
end

function jk.lang.String:isNotEmpty(str)
	do return not _g.jk.lang.String:isEmpty(str) end
end

function jk.lang.String:forBuffer(data, encoding)
	if not (data ~= nil) then
		do return nil end
	end
	if _g.jk.lang.String:equalsIgnoreCase("UTF8", encoding) or _g.jk.lang.String:equalsIgnoreCase("UTF-8", encoding) then
		do return _g.jk.lang.String:forUTF8Buffer(data) end
	end
	if _g.jk.lang.String:equalsIgnoreCase("UCS2", encoding) or _g.jk.lang.String:equalsIgnoreCase("UCS-2", encoding) then
		do return _g.jk.lang.String:forUCS2Buffer(data) end
	end
	if _g.jk.lang.String:equalsIgnoreCase("ASCII", encoding) then
		do return _g.jk.lang.String:forASCIIBuffer(data) end
	end
	do return nil end
end

function jk.lang.String:forASCIIBuffer(data)
	if not (data ~= nil) then
		do return nil end
	end
	do return _util:convert_buffer_ascii_to_string(data) end
end

function jk.lang.String:forUTF8Buffer(data)
	if not (data ~= nil) then
		do return nil end
	end
	do return _util:convert_buffer_to_string(data) end
end

function jk.lang.String:forUCS2Buffer(data)
	if data == nil then
		do return nil end
	end
	_io:write_to_stdout("[jk.lang.String.forUCS2Buffer] (String.sling:312:3): Not implemented." .. "\n")
	do return nil end
end

function jk.lang.String:forCharArray(chars, offset, count)
	if not (chars ~= nil) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		local sz = #chars
		do
			local n = 0
			while n < count and n + offset < sz do
				do sb:appendCharacter(chars[n + offset + 1]) end
				do n = n + 1 end
			end
		end
		do return sb:toString() end
	end
end

function jk.lang.String:forBoolean(vv)
	if vv == true then
		do return "true" end
	end
	do return "false" end
end

function jk.lang.String:forInteger(vv)
	do return _util:create_decimal_string_for_integer(vv) end
end

function jk.lang.String:forLongInteger(vv)
	do return _util:create_decimal_string_for_integer(vv) end
end

function jk.lang.String:forIntegerWithPadding(vv, length, paddingString)
	local r = _g.jk.lang.String:forInteger(vv)
	if not (r ~= nil) then
		do return nil end
	end
	do
		local ll = _g.jk.lang.String:getLength(r)
		if ll >= length then
			do return r end
		end
		do
			local ps = paddingString
			if ps == nil then
				ps = "0"
			end
			do
				local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
				local n = 0
				do
					n = 0
					while n < length - ll do
						do sb:appendString(ps) end
						do n = n + 1 end
					end
				end
				do sb:appendString(r) end
				do return sb:toString() end
			end
		end
	end
end

function jk.lang.String:forIntegerHex(vv, minlength)
	local v = nil
	v = _util:create_hex_string_for_integer(vv)
	if not (v ~= nil) then
		do return nil end
	end
	if minlength > 0 then
		while _g.jk.lang.String:getLength(v) < minlength do
			v = "0" .. _g.jk.lang.String:safeString(v)
		end
	end
	do return v end
end

function jk.lang.String:forLongIntegerHex(vv, minlength)
	local v = nil
	v = _util:create_hex_string_for_integer(vv)
	if not (v ~= nil) then
		do return nil end
	end
	if minlength > 0 then
		while _g.jk.lang.String:getLength(v) < minlength do
			v = "0" .. _g.jk.lang.String:safeString(v)
		end
	end
	do return v end
end

function jk.lang.String:forIntegerOctal(vv)
	local v = nil
	v = _util:create_octal_string_for_integer(vv)
	do return v end
end

function jk.lang.String:forIntegerBinary(vv)
	local v = nil
	_io:write_to_stdout("[jk.lang.String.forIntegerBinary] (String.sling:606:3): Not implemented" .. "\n")
	do return nil end
end

function jk.lang.String:forBufferHex(buffer)
	local size = _g.jk.lang.Buffer:getSize(buffer)
	if not (size ~= 0) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		local p = 0
		while p < size do
			local s = _g.jk.lang.String:forIntegerHex(_g.jk.lang.Buffer:getByte(buffer, p), 0)
			if _g.jk.lang.String:getLength(s) < 2 then
				do sb:appendCharacter(48) end
			end
			do sb:appendString(s) end
			do p = p + 1 end
		end
		do return sb:toString() end
	end
end

function jk.lang.String:forCharacter(vv)
	if vv < 128 then
		do return _util:create_string_for_byte(vv) end
	end
	if vv < 2048 then
		local v1 = _vm:bitwise_or(192, _vm:bitwise_right_shift(vv, 6))
		local v2 = _vm:bitwise_or(128, _vm:bitwise_and(vv, 63))
		do return _util:create_string_for_byte(v1) .. _util:create_string_for_byte(v2) end
	end
	if vv < 65536 then
		local v1 = _vm:bitwise_or(224, _vm:bitwise_right_shift(vv, 12))
		local v2 = _vm:bitwise_or(128, _vm:bitwise_and(_vm:bitwise_right_shift(vv, 6), 63))
		local v3 = _vm:bitwise_or(128, _vm:bitwise_and(vv, 63))
		do return _util:create_string_for_byte(v1) .. _util:create_string_for_byte(v2) .. _util:create_string_for_byte(v3) end
	end
	do
		local v1 = _vm:bitwise_or(240, _vm:bitwise_right_shift(vv, 18))
		local v2 = _vm:bitwise_or(128, _vm:bitwise_and(_vm:bitwise_right_shift(vv, 12), 63))
		local v3 = _vm:bitwise_or(128, _vm:bitwise_and(_vm:bitwise_right_shift(vv, 6), 63))
		local v4 = _vm:bitwise_or(128, _vm:bitwise_and(vv, 63))
		do return _util:create_string_for_byte(v1) .. _util:create_string_for_byte(v2) .. _util:create_string_for_byte(v3) .. _util:create_string_for_byte(v4) end
	end
end

function jk.lang.String:forFloat(vv)
	do return _util:create_string_for_float(vv) end
end

function jk.lang.String:forDouble(vv)
	do return _util:create_string_for_float(vv) end
end

function jk.lang.String:toUTF8Buffer(str)
	if not (str ~= nil) then
		do return nil end
	end
	do return _util:convert_string_to_buffer(str) end
end

function jk.lang.String:toBuffer(str, charset)
	if not (str ~= nil) then
		do return nil end
	end
	if not (charset ~= nil) then
		do return nil end
	end
	if _g.jk.lang.String:equalsIgnoreCase("UTF8", charset) or _g.jk.lang.String:equalsIgnoreCase("UTF-8", charset) then
		do return _g.jk.lang.String:toUTF8Buffer(str) end
	end
	do
		local bytes = _g.jk.lang.String:getBytesUnsigned(str, charset)
		if not (bytes ~= nil) then
			do return nil end
		end
		do
			local c = #bytes
			local bb = _util:allocate_buffer(c)
			local n = 0
			do
				n = 0
				while n < c do
					do _g.jk.lang.Buffer:setByte(bb, n, bytes[n + 1]) end
					do n = n + 1 end
				end
			end
			do return bb end
		end
	end
end

function jk.lang.String:getBytesUnsignedUTF8(str)
	do return _g.jk.lang.String:getBytesUnsigned(str, "UTF-8") end
end

function jk.lang.String:getBytesUnsigned(str, charset)
	if not (str ~= nil) then
		do return nil end
	end
	if not (charset ~= nil) then
		do return nil end
	end
	_io:write_to_stdout("[jk.lang.String.getBytesUnsigned] (String.sling:938:3): Not implemented" .. "\n")
	do return nil end
end

function jk.lang.String:getBytesSignedUTF8(str)
	do return _g.jk.lang.String:getBytesSigned(str, "UTF-8") end
end

function jk.lang.String:getBytesSigned(str, charset)
	if str == nil or charset == nil then
		do return nil end
	end
	_io:write_to_stdout("[jk.lang.String.getBytesSigned] (String.sling:988:3): Not implemented" .. "\n")
	do return nil end
end

function jk.lang.String:getLength(str)
	if str == nil then
		do return 0 end
	end
	do return _util:get_utf8_character_count(str) end
end

function jk.lang.String:appendString(str1, str2)
	if str1 == nil then
		do return str2 end
	end
	if str2 == nil then
		do return str1 end
	end
	do return str1 .. str2 end
end

function jk.lang.String:appendInteger(str, intvalue)
	do return _g.jk.lang.String:appendString(str, _g.jk.lang.String:forInteger(intvalue)) end
end

function jk.lang.String:appendCharacter(str, charvalue)
	do return _g.jk.lang.String:appendString(str, _g.jk.lang.String:forCharacter(charvalue)) end
end

function jk.lang.String:appendFloat(str, floatvalue)
	do return _g.jk.lang.String:appendString(str, _g.jk.lang.String:forFloat(floatvalue)) end
end

function jk.lang.String:appendDouble(str, doublevalue)
	do return _g.jk.lang.String:appendString(str, _g.jk.lang.String:forDouble(doublevalue)) end
end

function jk.lang.String:appendBoolean(str, boolvalue)
	do return _g.jk.lang.String:appendString(str, _g.jk.lang.String:forBoolean(boolvalue)) end
end

function jk.lang.String:toLowerCase(str)
	if not (str ~= nil) then
		do return nil end
	end
	do return _util:change_string_to_lowercase(str) end
end

function jk.lang.String:toUpperCase(str)
	if not (str ~= nil) then
		do return nil end
	end
	do return _util:change_string_to_uppercase(str) end
end

function jk.lang.String:capitalize(str)
	if not (str ~= nil) then
		do return nil end
	end
	do
		local c = _g.jk.lang.String:getChar(str, 0)
		if _g.jk.lang.Character:isLowercaseAlpha(c) == false then
			do return str end
		end
		do return _g.jk.lang.String:safeString(_g.jk.lang.String:forCharacter(_g.jk.lang.Character:toUppercase(c))) .. _g.jk.lang.String:safeString(_g.jk.lang.String:getEndOfString(str, 1)) end
	end
end

function jk.lang.String:getChar(str, index)
	if str == nil or index < 0 then
		do return 0 end
	end
	do
		local it = _g.jk.lang.String:iterate(str)
		local n = 0
		while it ~= nil do
			local c = it:getNextChar()
			if _g.jk.lang.Character:isEOF(c) then
				do break end
			end
			if n == index then
				do return c end
			end
			do n = n + 1 end
		end
		do return 0 end
	end
end

function jk.lang.String:equals(str1, str2)
	if str1 == nil and str2 == nil then
		do return true end
	end
	if not (str1 ~= nil and str2 ~= nil) then
		do return false end
	end
	do return str1 == str2 end
end

function jk.lang.String:isNotEqual(str1, str2)
	do return not _g.jk.lang.String:equals(str1, str2) end
end

function jk.lang.String:equalsIgnoreCase(str1, str2)
	if str1 == nil and str2 == nil then
		do return true end
	end
	if not (str1 ~= nil and str2 ~= nil) then
		do return false end
	end
	do return 0 == _util:compare_string_ignore_case(str1, str2) end
end

function jk.lang.String:compare(str1, str2)
	if str1 == nil or str2 == nil then
		do return 0 end
	end
	do
		local it1 = _g.jk.lang.String:iterate(str1)
		local it2 = _g.jk.lang.String:iterate(str2)
		if it1 == nil or it2 == nil then
			do return 0 end
		end
		while true do
			if it1:hasEnded() and it2:hasEnded() then
				do break end
			end
			if it1:hasEnded() then
				do return -1 end
			end
			if it2:hasEnded() then
				do return 1 end
			end
			do
				local c1 = it1:getNextChar()
				local c2 = it2:getNextChar()
				if c1 < c2 then
					do return -1 end
				end
				if c1 > c2 then
					do return 1 end
				end
			end
		end
		do return 0 end
	end
end

function jk.lang.String:compareToIgnoreCase(str1, str2)
	if str1 == nil or str2 == nil then
		do return 0 end
	end
	do
		local it1 = _g.jk.lang.String:iterate(str1)
		local it2 = _g.jk.lang.String:iterate(str2)
		if it1 == nil or it2 == nil then
			do return 0 end
		end
		while true do
			if it1:hasEnded() and it2:hasEnded() then
				do break end
			end
			if it1:hasEnded() then
				do return -1 end
			end
			if it2:hasEnded() then
				do return 1 end
			end
			do
				local c1 = _g.jk.lang.Character:toLowercase(it1:getNextChar())
				local c2 = _g.jk.lang.Character:toLowercase(it2:getNextChar())
				if c1 < c2 then
					do return -1 end
				end
				if c1 > c2 then
					do return 1 end
				end
			end
		end
		do return 0 end
	end
end

function jk.lang.String:getHashCode(str)
	if str == nil then
		do return 0 end
	end
	do
		local hash = 0
		local it = _g.jk.lang.String:iterate(str)
		while it ~= nil do
			local ch = it:getNextChar()
			if _g.jk.lang.Character:isEOF(ch) then
				do break end
			end
			hash = _vm:bitwise_left_shift(hash, 5) - hash + ch
			hash = _vm:bitwise_and(hash, hash)
		end
		do return hash end
	end
end

function jk.lang.String:getIndexOfCharacter(str, c, start)
	if str == nil or c == 0 then
		do return -1 end
	end
	do return _util:get_index_of_character(str, c, start) end
end

function jk.lang.String:getIndexOfString(str, s, start)
	if str == nil or s == nil then
		do return -1 end
	end
	if _g.jk.lang.String:isEmpty(s) then
		do return 0 end
	end
	do return _util:get_index_of_substring(str, s, start) end
end

function jk.lang.String:getLastIndexOfCharacter(str, c, start)
	if str == nil then
		do return -1 end
	end
	do
		local ss = start
		if ss < 0 then
			ss = 0
		end
		do
			local ii = _g.jk.lang.String:getIndexOfCharacter(str, c, ss)
			if ii >= 0 then
				while true do
					local ix = _g.jk.lang.String:getIndexOfCharacter(str, c, ii + 1)
					if ix < 0 then
						do break end
					end
					ii = ix
				end
			end
			do return ii end
		end
	end
end

function jk.lang.String:getLastIndexOfString(str, s, start)
	if str == nil then
		do return -1 end
	end
	do
		local ss = start
		if ss < 0 then
			ss = 0
		end
		do
			local ii = _g.jk.lang.String:getIndexOfString(str, s, ss)
			if ii >= 0 then
				while true do
					local ix = _g.jk.lang.String:getIndexOfString(str, s, ii + 1)
					if ix < 0 then
						do break end
					end
					ii = ix
				end
			end
			do return ii end
		end
	end
end

function jk.lang.String:getEndOfString(str, start)
	if not (str ~= nil) then
		do return nil end
	end
	do
		local ss = start
		if ss < 0 then
			ss = 0
		end
		do return _util:get_substring(str, ss, #str) end
	end
end

function jk.lang.String:getSubString(str, start, length)
	if not (str ~= nil) then
		do return nil end
	end
	do
		local ss = start
		if ss < 0 then
			ss = 0
		end
		do
			local v = _util:get_substring(str, ss, ss+length)
			if not (v ~= nil) then
				v = ""
			end
			do return v end
		end
	end
end

function jk.lang.String:contains(str1, str2)
	if not (str1 ~= nil) then
		do return false end
	end
	if not (str2 ~= nil) then
		do return false end
	end
	if _g.jk.lang.String:getIndexOfString(str1, str2, 0) >= 0 then
		do return true end
	end
	do return false end
end

function jk.lang.String:startsWith(str1, str2, offset)
	if not (str1 ~= nil) then
		do return false end
	end
	if not (str2 ~= nil) then
		do return false end
	end
	do
		local nstr = nil
		if offset > 0 then
			nstr = _g.jk.lang.String:getEndOfString(str1, offset)
		else
			nstr = str1
		end
		do return _util:string_starts_with(str1, str2, offset) end
	end
end

function jk.lang.String:startsWithAny(str, strings)
	if strings ~= nil then
		local n = 0
		local m = #strings
		do
			n = 0
			while n < m do
				local str2 = (function(o)
					if (_vm:get_variable_type(o) == 'string') then
						do return o end
					end
					do return nil end
				end)(strings[n + 1])
				if str2 ~= nil then
					if _g.jk.lang.String:startsWith(str, str2, 0) then
						do return str2 end
					end
				end
				do n = n + 1 end
			end
		end
	end
	do return nil end
end

function jk.lang.String:startsWithIgnoreCase(str1, str2, offset)
	do return _g.jk.lang.String:startsWith(_g.jk.lang.String:toLowerCase(str1), _g.jk.lang.String:toLowerCase(str2), offset) end
end

function jk.lang.String:startsWithAnyIgnoreCase(str, strings)
	local ostr = _g.jk.lang.String:toLowerCase(str)
	if strings ~= nil then
		local n = 0
		local m = #strings
		do
			n = 0
			while n < m do
				local str2 = (function(o)
					if (_vm:get_variable_type(o) == 'string') then
						do return o end
					end
					do return nil end
				end)(strings[n + 1])
				if str2 ~= nil then
					if _g.jk.lang.String:startsWith(ostr, _g.jk.lang.String:toLowerCase(str2), 0) then
						do return str2 end
					end
				end
				do n = n + 1 end
			end
		end
	end
	do return nil end
end

function jk.lang.String:endsWith(str1, str2)
	if not (str1 ~= nil) then
		do return false end
	end
	if not (str2 ~= nil) then
		do return false end
	end
	do
		local s1 = _util:get_utf8_character_count(str1)
		do return _util:get_substring(str1, s1 -_util:get_utf8_character_count(str2), s1) == str2 end
	end
end

function jk.lang.String:endsWithAny(str, strings)
	if strings ~= nil then
		local n = 0
		local m = #strings
		do
			n = 0
			while n < m do
				local str2 = (function(o)
					if (_vm:get_variable_type(o) == 'string') then
						do return o end
					end
					do return nil end
				end)(strings[n + 1])
				if str2 ~= nil then
					if _g.jk.lang.String:endsWith(str, str2) then
						do return str2 end
					end
				end
				do n = n + 1 end
			end
		end
	end
	do return nil end
end

function jk.lang.String:endsWithIgnoreCase(str1, str2)
	do return _g.jk.lang.String:endsWith(_g.jk.lang.String:toLowerCase(str1), _g.jk.lang.String:toLowerCase(str2)) end
end

function jk.lang.String:endsWithAnyIgnoreCase(str, strings)
	local ostr = _g.jk.lang.String:toLowerCase(str)
	if strings ~= nil then
		local n = 0
		local m = #strings
		do
			n = 0
			while n < m do
				local str2 = (function(o)
					if (_vm:get_variable_type(o) == 'string') then
						do return o end
					end
					do return nil end
				end)(strings[n + 1])
				if str2 ~= nil then
					if _g.jk.lang.String:endsWith(ostr, _g.jk.lang.String:toLowerCase(str2)) then
						do return str2 end
					end
				end
				do n = n + 1 end
			end
		end
	end
	do return nil end
end

function jk.lang.String:strip(str)
	if not (str ~= nil) then
		do return nil end
	end
	do return _g.jk.lang.String:stripFromStart(_g.jk.lang.String:stripFromEnd(str)) end
end

function jk.lang.String:stripFromEnd(str)
	if not (str ~= nil) then
		do return nil end
	end
	do
		local ll = _g.jk.lang.String:getLength(str)
		if ll < 1 then
			do return str end
		end
		do
			local n = 0
			while true do
				local c = _g.jk.lang.String:getChar(str, ll - 1 - n)
				if c == 32 or c == 9 or c == 13 or c == 10 then
					do n = n + 1 end
				else
					do break end
				end
			end
			if n < 1 then
				do return str end
			end
			do return _g.jk.lang.String:getSubString(str, 0, ll - n) end
		end
	end
end

function jk.lang.String:stripFromStart(str)
	if not (str ~= nil) then
		do return nil end
	end
	do
		local n = 0
		while true do
			local c = _g.jk.lang.String:getChar(str, n)
			if c == 32 or c == 9 or c == 13 or c == 10 then
				do n = n + 1 end
			else
				do break end
			end
		end
		if n < 1 then
			do return str end
		end
		do return _g.jk.lang.String:getEndOfString(str, n) end
	end
end

function jk.lang.String:replaceCharacter(str, oldChar, newChar)
	if not (str ~= nil) then
		do return nil end
	end
	do return _g.jk.lang.String:replaceString(str, _g.jk.lang.String:forCharacter(oldChar), _g.jk.lang.String:forCharacter(newChar)) end
end

function jk.lang.String:replaceString(str, target, replacement)
	if not (str ~= nil) then
		do return nil end
	end
	if _g.jk.lang.String:isEmpty(target) then
		do return str end
	end
	do
		local rr = replacement
		if not (rr ~= nil) then
			rr = ""
		end
		do
			local v = str
			while true do
				local p = _g.jk.lang.String:getIndexOfString(v, target, 0)
				if p < 0 then
					do break end
				end
				do
					local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
					do sb:appendString(_g.jk.lang.String:getSubString(v, 0, p)) end
					do sb:appendString(rr) end
					do sb:appendString(_g.jk.lang.String:getEndOfString(v, p + _g.jk.lang.String:getLength(target))) end
					v = sb:toString()
				end
			end
			do return v end
		end
	end
end

function jk.lang.String:toCharArray(str)
	if not (str ~= nil) then
		do return nil end
	end
	do
		local it = _g.jk.lang.String:iterate(str)
		local v = nil
		do v = {} end
		do
			local n = 0
			while it ~= nil do
				local c = it:getNextChar()
				if _g.jk.lang.Character:isEOF(c) then
					do break end
				end
				do v[n + 1] = c end
				do n = n + 1 end
			end
			do return v end
		end
	end
end

function jk.lang.String:split(str, delim, max)
	local v = {}
	if str == nil then
		do return v end
	end
	do
		local it = _g.jk.lang.String:iterate(str)
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		local n = 0
		while true do
			local c = it:getNextChar()
			if _g.jk.lang.Character:isEOF(c) then
				do break end
			end
			if c == delim and (max < 1 or n < max - 1) then
				local s = sb:toString()
				if not (s ~= nil) then
					s = ""
				end
				do _g.jk.lang.Vector:append(v, s) end
				do sb:clear() end
				do n = n + 1 end
			else
				do sb:appendCharacter(c) end
			end
		end
		do
			local s = sb:toString()
			if not (s ~= nil) then
				s = ""
			end
			do _g.jk.lang.Vector:append(v, s) end
			do return v end
		end
	end
end

function jk.lang.String:isInteger(str)
	if not (str ~= nil) then
		do return false end
	end
	do
		local it = _g.jk.lang.String:iterate(str)
		if not (it ~= nil) then
			do return false end
		end
		while true do
			local c = it:getNextChar()
			if c < 1 then
				do break end
			end
			if c < 48 or c > 57 then
				do return false end
			end
		end
		do return true end
	end
end

function jk.lang.String:toInteger(str)
	if _g.jk.lang.String:isEmpty(str) then
		do return 0 end
	end
	do
		local iter = _g.jk.lang.String:iterate(str)
		if not (iter ~= nil) then
			do return 0 end
		end
		do
			local v = 0
			local first = true
			local negative = false
			while true do
				local c = iter:getNextChar()
				if first and c == 45 then
					negative = true
					first = false
					goto _continue2
				end
				if c >= 48 and c <= 57 then
					v = v * 10
					v = v + _util:convert_to_integer(c - 48)
				else
					do break end
				end
				first = false
				::_continue2::
			end
			if negative then
				v = v * -1
			end
			do return v end
		end
	end
end

function jk.lang.String:toLong(str)
	if _g.jk.lang.String:isEmpty(str) then
		do return 0 end
	end
	do
		local iter = _g.jk.lang.String:iterate(str)
		if not (iter ~= nil) then
			do return 0 end
		end
		do
			local v = 0
			local first = true
			local negative = false
			while true do
				local c = iter:getNextChar()
				if first and c == 45 then
					negative = true
					first = false
					goto _continue3
				end
				if c >= 48 and c <= 57 then
					v = v * 10
					v = v + _util:convert_to_integer(c - 48)
				else
					do break end
				end
				first = false
				::_continue3::
			end
			if negative then
				v = v * -1
			end
			do return v end
		end
	end
end

function jk.lang.String:toIntegerFromHex(str)
	if _g.jk.lang.String:isEmpty(str) then
		do return 0 end
	end
	do
		local iter = _g.jk.lang.String:iterate(str)
		if not (iter ~= nil) then
			do return 0 end
		end
		do
			local v = 0
			while true do
				local c = iter:getNextChar()
				if c >= 48 and c <= 57 then
					v = v * 16
					v = v + _util:convert_to_integer(c - 48)
				elseif c >= 97 and c <= 102 then
					v = v * 16
					v = v + (10 + c - 97)
				elseif c >= 65 and c <= 70 then
					v = v * 16
					v = v + (10 + c - 65)
				else
					do break end
				end
			end
			do return v end
		end
	end
end

function jk.lang.String:toLongIntegerFromHex(str)
	if _g.jk.lang.String:isEmpty(str) then
		do return 0 end
	end
	do
		local iter = _g.jk.lang.String:iterate(str)
		if not (iter ~= nil) then
			do return 0 end
		end
		do
			local v = 0
			while true do
				local c = iter:getNextChar()
				if c >= 48 and c <= 57 then
					v = v * 16
					v = v + _util:convert_to_integer(c - 48)
				elseif c >= 97 and c <= 102 then
					v = v * 16
					v = v + (10 + c - 97)
				elseif c >= 65 and c <= 70 then
					v = v * 16
					v = v + (10 + c - 65)
				else
					do break end
				end
			end
			do return v end
		end
	end
end

function jk.lang.String:toIntegerFromOctal(str)
	if _g.jk.lang.String:isEmpty(str) then
		do return 0 end
	end
	do
		local iter = _g.jk.lang.String:iterate(str)
		if not (iter ~= nil) then
			do return 0 end
		end
		do
			local v = 0
			while true do
				local c = iter:getNextChar()
				if c >= 48 and c <= 55 then
					v = v * 8
					v = v + _util:convert_to_integer(c - 48)
				else
					do break end
				end
			end
			do return v end
		end
	end
end

function jk.lang.String:toIntegerFromBinary(str)
	if _g.jk.lang.String:isEmpty(str) then
		do return 0 end
	end
	do
		local iter = _g.jk.lang.String:iterate(str)
		if not (iter ~= nil) then
			do return 0 end
		end
		do
			local v = 0
			while true do
				local c = iter:getNextChar()
				if c >= 48 and c <= 49 then
					v = v * 2
					v = v + _util:convert_to_integer(c - 48)
				else
					do break end
				end
			end
			do return v end
		end
	end
end

function jk.lang.String:toDouble(str)
	if str == nil then
		do return 0.0 end
	end
	do return _util:to_number(str) end
end

function jk.lang.String:iterate(string)
	do return _g.jk.lang.CharacterIteratorForString:forString(string) end
end

function jk.lang.String:reverse(string)
	if not (string ~= nil) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		local it = _g.jk.lang.String:iterate(string)
		local c = 0
		while (function()
			c = it:getNextChar()
			do return c end
		end)() > 0 do
			do sb:insertCharacter(0, c) end
		end
		do return sb:toString() end
	end
end

function jk.lang.String:iterateReverse(string)
	do return _g.jk.lang.String:iterate(_g.jk.lang.String:reverse(string)) end
end

jk.lang.StringSet = {}
jk.lang.StringSet.__index = jk.lang.StringSet
_vm:set_metatable(jk.lang.StringSet, {})

function jk.lang.StringSet._create()
	local v = _vm:set_metatable({}, jk.lang.StringSet)
	return v
end

function jk.lang.StringSet:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.StringSet'
	self['_isType.jk.lang.StringSet'] = true
	self.data = nil
end

function jk.lang.StringSet:_construct0()
	jk.lang.StringSet._init(self)
	self.data = {}
	return self
end

function jk.lang.StringSet:add(string)
	do _g.jk.lang.Map:setValue(self.data, string, _g.jk.lang.Boolean:asObject(true)) end
end

function jk.lang.StringSet:remove(string)
	do _g.jk.lang.Map:remove(self.data, string) end
end

function jk.lang.StringSet:count()
	do return _g.jk.lang.Map:count(self.data) end
end

function jk.lang.StringSet:contains(string)
	if _g.jk.lang.Map:getValue(self.data, string) ~= nil then
		do return true end
	end
	do return false end
end

function jk.lang.StringSet:getAll()
	local v = _g.jk.lang.Map:getKeys(self.data)
	do return v end
end

function jk.lang.StringSet:clear()
	do _g.jk.lang.Map:clear(self.data) end
end

jk.lang.Exception = {}
jk.lang.Exception.__index = jk.lang.Exception
_vm:set_metatable(jk.lang.Exception, {})

function jk.lang.Exception._create()
	local v = _vm:set_metatable({}, jk.lang.Exception)
	return v
end

function jk.lang.Exception:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Exception'
	self['_isType.jk.lang.Exception'] = true
end

function jk.lang.Exception:_construct0()
	jk.lang.Exception._init(self)
	return self
end

jk.lang.CharacterDecoder = {}
jk.lang.CharacterDecoder.__index = jk.lang.CharacterDecoder
_vm:set_metatable(jk.lang.CharacterDecoder, {})

jk.lang.CharacterDecoder.UTF8 = 0
jk.lang.CharacterDecoder.ASCII = 1
jk.lang.CharacterDecoder.UCS2 = 2

function jk.lang.CharacterDecoder._create()
	local v = _vm:set_metatable({}, jk.lang.CharacterDecoder)
	return v
end

function jk.lang.CharacterDecoder:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.CharacterDecoder'
	self['_isType.jk.lang.CharacterDecoder'] = true
	self['_isType.jk.lang.CharacterIterator'] = true
	self.encoding = 0
	self.current = 0
	self.surrogatePair = nil
	self.counter = 0
	self.currentSize = 0
	self.ended = false
end

function jk.lang.CharacterDecoder:_construct0()
	jk.lang.CharacterDecoder._init(self)
	return self
end

function jk.lang.CharacterDecoder:resetDecoder()
	self.current = 0
	self.surrogatePair = nil
	self.counter = 0
	self.currentSize = 0
	self.ended = false
end

function jk.lang.CharacterDecoder:copyTo(o)
	o.encoding = self.encoding
	o.current = self.current
	o.currentSize = self.currentSize
	o.ended = self.ended
end

function jk.lang.CharacterDecoder:moveToPreviousByte()
	do return false end
end

function jk.lang.CharacterDecoder:moveToNextByte()
	do return false end
end

function jk.lang.CharacterDecoder:getCurrentByte()
	do return 0 end
end

function jk.lang.CharacterDecoder:setEncoding(ee)
	if _g.jk.lang.String:equalsIgnoreCase(ee, "UTF8") or _g.jk.lang.String:equalsIgnoreCase(ee, "UTF-8") then
		self.encoding = _g.jk.lang.CharacterDecoder.UTF8
		self.currentSize = 1
		do return self end
	end
	if _g.jk.lang.String:equalsIgnoreCase(ee, "ASCII") then
		self.encoding = _g.jk.lang.CharacterDecoder.ASCII
		self.currentSize = 1
		do return self end
	end
	if _g.jk.lang.String:equalsIgnoreCase(ee, "UCS2") or _g.jk.lang.String:equalsIgnoreCase(ee, "UCS-2") then
		self.encoding = _g.jk.lang.CharacterDecoder.UCS2
		self.currentSize = 2
		do return self end
	end
	do return nil end
end

function jk.lang.CharacterDecoder:getEncoding()
	do return self.encoding end
end

function jk.lang.CharacterDecoder:moveToPreviousChar()
	local op = self:getCurrentPosition()
	local cs = self.currentSize
	if cs > 1 then
		local n = 0
		do
			n = 0
			while n < cs - 1 do
				if not self:moveToPreviousByte() then
					do return false end
				end
				do n = n + 1 end
			end
		end
	end
	do
		local v = self:doMoveToPreviousChar()
		if not v then
			do self:setCurrentPosition(op) end
		end
		if v and self.ended then
			self.ended = false
		end
		do return v end
	end
end

function jk.lang.CharacterDecoder:convertToChar(v)
	do return v end
end

function jk.lang.CharacterDecoder:getSurrogatePair()
	if not (self.surrogatePair ~= nil) then
		do return 0 end
	end
	do
		local c = self.surrogatePair[self.counter + 1]
		do self.counter = self.counter + 1 end
		if self.counter == 2 then
			self.counter = 0
			self.surrogatePair = nil
		end
		do return c end
	end
end

function jk.lang.CharacterDecoder:doMoveToPreviousChar()
	if self.encoding == _g.jk.lang.CharacterDecoder.UTF8 then
		if not self:moveToPreviousByte() then
			do return false end
		end
		do
			local c2 = self:getCurrentByte()
			if c2 <= 127 then
				self.current = c2
				self.currentSize = 1
				do return true end
			end
			if not self:moveToPreviousByte() then
				do return false end
			end
			do
				local c1 = self:getCurrentByte()
				if _vm:bitwise_and(c1, 192) == 192 then
					if not self:moveToNextByte() then
						do return false end
					end
					do
						local v = _vm:bitwise_left_shift(_vm:bitwise_and(c1, 31), 6)
						v = v + _vm:bitwise_and(c2, 63)
						self.current = self:convertToChar(v)
						self.currentSize = 2
						do return true end
					end
				end
				if not self:moveToPreviousByte() then
					do return false end
				end
				do
					local c0 = self:getCurrentByte()
					if _vm:bitwise_and(c0, 224) == 224 then
						if not self:moveToNextByte() then
							do return false end
						end
						if not self:moveToNextByte() then
							do return false end
						end
						do
							local v = _vm:bitwise_left_shift(_vm:bitwise_and(c0, 15), 12)
							v = v + _vm:bitwise_left_shift(_vm:bitwise_and(c1, 63), 6)
							v = v + _vm:bitwise_and(c2, 63)
							self.current = self:convertToChar(v)
							self.currentSize = 3
							do return true end
						end
					end
					if not self:moveToPreviousByte() then
						do return false end
					end
					do
						local cm1 = self:getCurrentByte()
						if _vm:bitwise_and(cm1, 240) == 240 then
							if not self:moveToNextByte() then
								do return false end
							end
							if not self:moveToNextByte() then
								do return false end
							end
							if not self:moveToNextByte() then
								do return false end
							end
							do
								local v = _vm:bitwise_left_shift(_vm:bitwise_and(cm1, 7), 18)
								v = v + _vm:bitwise_left_shift(_vm:bitwise_and(c0, 63), 12)
								v = v + _vm:bitwise_left_shift(_vm:bitwise_and(c1, 63), 6)
								v = v + _vm:bitwise_and(c2, 63)
								self.current = self:convertToChar(v)
								self.currentSize = 4
								do return true end
							end
						end
						do self:moveToNextByte() end
						do self:moveToNextByte() end
						do self:moveToNextByte() end
						self.current = 63
						self.currentSize = 1
						do return true end
					end
				end
			end
		end
	end
	if self.encoding == _g.jk.lang.CharacterDecoder.ASCII then
		if not self:moveToPreviousByte() then
			do return false end
		end
		self.current = self:getCurrentByte()
		do return true end
	end
	if self.encoding == _g.jk.lang.CharacterDecoder.UCS2 then
		if not self:moveToPreviousByte() then
			do return false end
		end
		do
			local c1 = self:getCurrentByte()
			if not self:moveToPreviousByte() then
				do return false end
			end
			do
				local c0 = self:getCurrentByte()
				if not self:moveToNextByte() then
					do return false end
				end
				self.current = _vm:bitwise_and(_vm:bitwise_left_shift(c0, 8), c1)
				do return true end
			end
		end
	end
	_io:write_to_stdout("Unsupported encoding in CharacterDecoder: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(self.encoding)) .. "\n")
	do return false end
end

function jk.lang.CharacterDecoder:moveToNextChar()
	local v = self:doMoveToNextChar()
	if v == false then
		self.current = 0
		self.ended = true
	end
	do return v end
end

function jk.lang.CharacterDecoder:doMoveToNextChar()
	if self.encoding == _g.jk.lang.CharacterDecoder.UTF8 then
		if self.surrogatePair ~= nil then
			self.current = self:getSurrogatePair()
			do return true end
		end
		if not self:moveToNextByte() then
			do return false end
		end
		do
			local b1 = self:getCurrentByte()
			local v = -1
			if b1 <= 127 then
				v = b1
				self.currentSize = 1
			elseif b1 >= 240 then
				v = _vm:bitwise_left_shift(_vm:bitwise_and(b1, 7), 18)
				if not self:moveToNextByte() then
					do return false end
				end
				do
					local b2 = self:getCurrentByte()
					v = v + _vm:bitwise_left_shift(_vm:bitwise_and(b2, 63), 12)
					if not self:moveToNextByte() then
						do return false end
					end
					do
						local b3 = self:getCurrentByte()
						v = v + _vm:bitwise_left_shift(_vm:bitwise_and(b3, 63), 6)
						if not self:moveToNextByte() then
							do return false end
						end
						do
							local b4 = self:getCurrentByte()
							v = v + _vm:bitwise_and(b4, 63)
							self.currentSize = 4
						end
					end
				end
			elseif b1 >= 224 then
				v = _vm:bitwise_left_shift(_vm:bitwise_and(b1, 15), 12)
				if not self:moveToNextByte() then
					do return false end
				end
				do
					local b2 = self:getCurrentByte()
					v = v + _vm:bitwise_left_shift(_vm:bitwise_and(b2, 63), 6)
					if not self:moveToNextByte() then
						do return false end
					end
					do
						local b3 = self:getCurrentByte()
						v = v + _vm:bitwise_and(b3, 63)
						self.currentSize = 3
					end
				end
			elseif b1 >= 192 then
				v = _vm:bitwise_left_shift(_vm:bitwise_and(b1, 31), 6)
				if not self:moveToNextByte() then
					do return false end
				end
				do
					local b2 = self:getCurrentByte()
					v = v + _vm:bitwise_and(b2, 63)
					self.currentSize = 2
				end
			else
				v = _util:convert_to_integer(63)
				self.currentSize = 1
			end
			self.current = self:convertToChar(v)
			do return true end
		end
	end
	if self.encoding == _g.jk.lang.CharacterDecoder.ASCII then
		if not self:moveToNextByte() then
			do return false end
		end
		self.current = self:getCurrentByte()
		do return true end
	end
	if self.encoding == _g.jk.lang.CharacterDecoder.UCS2 then
		if not self:moveToNextByte() then
			do return false end
		end
		do
			local c0 = self:getCurrentByte()
			if not self:moveToNextByte() then
				do return false end
			end
			do
				local c1 = self:getCurrentByte()
				self.current = _vm:bitwise_and(_vm:bitwise_left_shift(c0, 8), c1)
				do return true end
			end
		end
	end
	_io:write_to_stdout("Unsupported encoding in CharacterDecoder: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(self.encoding)) .. "\n")
	do return false end
end

function jk.lang.CharacterDecoder:getCurrentChar()
	do return self.current end
end

function jk.lang.CharacterDecoder:getNextChar()
	if self:moveToNextChar() == false then
		do return 0 end
	end
	do return self.current end
end

function jk.lang.CharacterDecoder:hasEnded()
	do return self.ended end
end

function jk.lang.CharacterDecoder:getCurrentPosition()
end

function jk.lang.CharacterDecoder:setCurrentPosition(position)
end

jk.lang.LogicOp = {}
jk.lang.LogicOp.__index = jk.lang.LogicOp
_vm:set_metatable(jk.lang.LogicOp, {})

function jk.lang.LogicOp._create()
	local v = _vm:set_metatable({}, jk.lang.LogicOp)
	return v
end

function jk.lang.LogicOp:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.LogicOp'
	self['_isType.jk.lang.LogicOp'] = true
end

function jk.lang.LogicOp:_construct0()
	jk.lang.LogicOp._init(self)
	return self
end

function jk.lang.LogicOp:_or(v1, v2)
	do return v1 or v2 end
end

function jk.lang.LogicOp:_and(v1, v2)
	do return v1 and v2 end
end

function jk.lang.LogicOp:_not(v)
	do return not v end
end

jk.lang.StackTrace = {}
jk.lang.StackTrace.__index = jk.lang.StackTrace
_vm:set_metatable(jk.lang.StackTrace, {})

function jk.lang.StackTrace._create()
	local v = _vm:set_metatable({}, jk.lang.StackTrace)
	return v
end

function jk.lang.StackTrace:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.StackTrace'
	self['_isType.jk.lang.StackTrace'] = true
end

function jk.lang.StackTrace:_construct0()
	jk.lang.StackTrace._init(self)
	return self
end

function jk.lang.StackTrace:generate()
	do return _vm:get_stack_trace() end
end

jk.lang.CharacterIteratorForBuffer = _g.jk.lang.CharacterDecoder._create()
jk.lang.CharacterIteratorForBuffer.__index = jk.lang.CharacterIteratorForBuffer
_vm:set_metatable(jk.lang.CharacterIteratorForBuffer, {
	__index = _g.jk.lang.CharacterDecoder
})

function jk.lang.CharacterIteratorForBuffer._create()
	local v = _vm:set_metatable({}, jk.lang.CharacterIteratorForBuffer)
	return v
end

function jk.lang.CharacterIteratorForBuffer:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.CharacterIteratorForBuffer'
	self['_isType.jk.lang.CharacterIteratorForBuffer'] = true
	self['_isType.jk.lang.Duplicateable'] = true
	self.buffer = nil
	self.bufferSize = 0
	self.currentPosition = -1
end

function jk.lang.CharacterIteratorForBuffer:_construct0()
	jk.lang.CharacterIteratorForBuffer._init(self)
	do _g.jk.lang.CharacterDecoder._construct0(self) end
	return self
end

function jk.lang.CharacterIteratorForBuffer:forBuffer(buffer)
	local v = _g.jk.lang.CharacterIteratorForBuffer._construct0(_g.jk.lang.CharacterIteratorForBuffer._create())
	do v:setBuffer(buffer) end
	do return v end
end

function jk.lang.CharacterIteratorForBuffer:setBuffer(buffer)
	do self:resetDecoder() end
	self.buffer = buffer
	self.bufferSize = _g.jk.lang.Buffer:getSize(buffer)
	self.currentPosition = -1
end

function jk.lang.CharacterIteratorForBuffer:moveToPreviousByte()
	if self.currentPosition < 1 then
		do return false end
	end
	do self.currentPosition = self.currentPosition - 1 end
	do return true end
end

function jk.lang.CharacterIteratorForBuffer:moveToNextByte()
	local n = self.currentPosition + 1
	if n >= self.bufferSize then
		do return false end
	end
	self.currentPosition = n
	do return true end
end

function jk.lang.CharacterIteratorForBuffer:getCurrentByte()
	local v = _vm:bitwise_and(self.buffer[self.currentPosition + 1], 255)
	do return v end
end

function jk.lang.CharacterIteratorForBuffer:getCurrentPosition()
	do return self.currentPosition end
end

function jk.lang.CharacterIteratorForBuffer:setCurrentPosition(position)
	if position < 0 then
		self.current = 0
		self.currentPosition = -1
	else
		self.currentPosition = position + 1
		do self:doMoveToPreviousChar() end
	end
end

function jk.lang.CharacterIteratorForBuffer:duplicate()
	local v = _g.jk.lang.CharacterIteratorForBuffer._construct0(_g.jk.lang.CharacterIteratorForBuffer._create())
	do _g.jk.lang.CharacterDecoder.copyTo(self, v) end
	v.buffer = self.buffer
	v.bufferSize = self.bufferSize
	v.currentPosition = self.currentPosition
	do return v end
end

jk.lang.ExceptionWithString = _g.jk.lang.Exception._create()
jk.lang.ExceptionWithString.__index = jk.lang.ExceptionWithString
_vm:set_metatable(jk.lang.ExceptionWithString, {
	__index = _g.jk.lang.Exception
})

function jk.lang.ExceptionWithString._create()
	local v = _vm:set_metatable({}, jk.lang.ExceptionWithString)
	return v
end

function jk.lang.ExceptionWithString:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.ExceptionWithString'
	self['_isType.jk.lang.ExceptionWithString'] = true
	self['_isType.jk.lang.StringObject'] = true
	self.exceptionMessage = nil
	self.stackTraceString = nil
end

function jk.lang.ExceptionWithString:_construct0()
	jk.lang.ExceptionWithString._init(self)
	do _g.jk.lang.Exception._construct0(self) end
	return self
end

function jk.lang.ExceptionWithString:forString(string, allowStackTrace)
	local v = _g.jk.lang.ExceptionWithString._construct0(_g.jk.lang.ExceptionWithString._create())
	do v:setExceptionMessage(string) end
	if allowStackTrace then
		do v:updateStackTrace() end
	end
	do return v end
end

function jk.lang.ExceptionWithString:updateStackTrace()
	do self:setStackTraceString(_g.jk.lang.StackTrace:generate()) end
end

function jk.lang.ExceptionWithString:toString()
	if not (self.stackTraceString ~= nil) then
		do return self.exceptionMessage end
	end
	do
		local v = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		do v:appendString(self.exceptionMessage) end
		do
			local ss = self.stackTraceString
			if _g.jk.lang.String:getLength(ss) > 0 then
				if v:count() > 0 then
					do v:appendCharacter(10) end
				end
				do v:appendString(ss) end
			end
			do return v:toString() end
		end
	end
end

function jk.lang.ExceptionWithString:getExceptionMessage()
	do return self.exceptionMessage end
end

function jk.lang.ExceptionWithString:setExceptionMessage(v)
	self.exceptionMessage = v
	do return self end
end

function jk.lang.ExceptionWithString:getStackTraceString()
	do return self.stackTraceString end
end

function jk.lang.ExceptionWithString:setStackTraceString(v)
	self.stackTraceString = v
	do return self end
end

jk.lang.ExceptionWithError = _g.jk.lang.Exception._create()
jk.lang.ExceptionWithError.__index = jk.lang.ExceptionWithError
_vm:set_metatable(jk.lang.ExceptionWithError, {
	__index = _g.jk.lang.Exception
})

function jk.lang.ExceptionWithError._create()
	local v = _vm:set_metatable({}, jk.lang.ExceptionWithError)
	return v
end

function jk.lang.ExceptionWithError:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.ExceptionWithError'
	self['_isType.jk.lang.ExceptionWithError'] = true
	self['_isType.jk.lang.StringObject'] = true
	self.error = nil
end

function jk.lang.ExceptionWithError:_construct0()
	jk.lang.ExceptionWithError._init(self)
	do _g.jk.lang.Exception._construct0(self) end
	return self
end

function jk.lang.ExceptionWithError:forError(error)
	local v = _g.jk.lang.ExceptionWithError._construct0(_g.jk.lang.ExceptionWithError._create())
	do v:setError(error) end
	do return v end
end

function jk.lang.ExceptionWithError:forCode(code, detail)
	do return _g.jk.lang.ExceptionWithError:forError(_g.jk.lang.Error:forCode(code, detail)) end
end

function jk.lang.ExceptionWithError:getErrorCode()
	if not (self.error ~= nil) then
		do return nil end
	end
	do return self.error:getCode() end
end

function jk.lang.ExceptionWithError:getErrorDetail()
	if not (self.error ~= nil) then
		do return nil end
	end
	do return self.error:getDetail() end
end

function jk.lang.ExceptionWithError:toString()
	do return _g.jk.lang.Error:asString(self.error) end
end

function jk.lang.ExceptionWithError:getError()
	do return self.error end
end

function jk.lang.ExceptionWithError:setError(v)
	self.error = v
	do return self end
end

jk.lang.Serializer = {}
jk.lang.Serializer.__index = jk.lang.Serializer
_vm:set_metatable(jk.lang.Serializer, {})

function jk.lang.Serializer._create()
	local v = _vm:set_metatable({}, jk.lang.Serializer)
	return v
end

function jk.lang.Serializer:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Serializer'
	self['_isType.jk.lang.Serializer'] = true
end

function jk.lang.Serializer:_construct0()
	jk.lang.Serializer._init(self)
	return self
end

function jk.lang.Serializer:toBuffer(object)
	if not (object ~= nil) then
		do return nil end
	end
	do return _vm:serialize_object(object) end
end

function jk.lang.Serializer:fromBuffer(buffer)
	if not (buffer ~= nil) then
		do return nil end
	end
	do
		local oo = nil
		do oo = _vm:unserialize_object(buffer) end
		if not (oo ~= nil) then
			do return nil end
		end
		do _vm:set_metatable(oo, _vm:get_global(oo._qualifiedClassName)) end
		do return oo end
	end
end

jk.lang.Reflection = {}
jk.lang.Reflection.__index = jk.lang.Reflection
_vm:set_metatable(jk.lang.Reflection, {})

function jk.lang.Reflection._create()
	local v = _vm:set_metatable({}, jk.lang.Reflection)
	return v
end

function jk.lang.Reflection:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Reflection'
	self['_isType.jk.lang.Reflection'] = true
end

function jk.lang.Reflection:_construct0()
	jk.lang.Reflection._init(self)
	return self
end

function jk.lang.Reflection:createClassInstanceByName(qualifiedName)
	if not _g.jk.lang.String:isNotEmpty(qualifiedName) then
		do return nil end
	end
	do
		local code = " return _g." .. _g.jk.lang.String:safeString(qualifiedName) .. "._construct0(_g." .. _g.jk.lang.String:safeString(qualifiedName) .. "._create())"
		local ff = _vm:parse_to_function(code)
		if not (ff ~= nil) then
			do return nil end
		end
		do return ff() end
	end
end

function jk.lang.Reflection:createClassInstanceByTypeinfo(type)
	local typename = type
	if not _g.jk.lang.String:startsWith(typename, "class:", 0) then
		do return nil end
	end
	typename = _g.jk.lang.String:getEndOfString(typename, 6)
	do return _g.jk.lang.Reflection:createClassInstanceByName(typename) end
end

function jk.lang.Reflection:callMethod(object, methodName, arguments)
	local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	do sb:appendString("return function(object, arguments) return object:") end
	do sb:appendString(methodName) end
	do sb:appendString("(") end
	do
		local sz = #arguments
		do
			local n = 0
			while n < sz do
				if n > 0 then
					do sb:appendString(",") end
				end
				do sb:appendString("arguments[") end
				do sb:appendInteger(n + 1) end
				do sb:appendString("]") end
				do n = n + 1 end
			end
		end
		do sb:appendString(") end") end
		do
			local code = sb:toString()
			local ff = _vm:parse_to_function(code)
			if not (ff ~= nil) then
				do return nil end
			end
			do
				local ffx = ff()
				if not (ffx ~= nil) then
					do return nil end
				end
				do return ffx(object, arguments) end
			end
		end
	end
end

function jk.lang.Reflection:getDataTypeInfo(variable)
	do return _vm:get_datatype_info(variable) end
end

function jk.lang.Reflection:isSameType(primary, other)
	if primary == nil and other == nil then
		do return true end
	end
	if primary == nil or other == nil then
		do return false end
	end
	do
		local ta = _vm:get_datatype_info(primary)
		local tb = _vm:get_datatype_info(other)
		if ta == tb then
			do return true end
		end
		do return false end
	end
end

function jk.lang.Reflection:isInstanceOf(object, type)
	if not (object ~= nil) then
		do return false end
	end
	do return _vm:is_instance_of(object, type) end
end

jk.lang.BufferDataReceiver = {}

jk.lang.StringBuilder = {}
jk.lang.StringBuilder.__index = jk.lang.StringBuilder
_vm:set_metatable(jk.lang.StringBuilder, {})

function jk.lang.StringBuilder._create()
	local v = _vm:set_metatable({}, jk.lang.StringBuilder)
	return v
end

function jk.lang.StringBuilder:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.StringBuilder'
	self['_isType.jk.lang.StringBuilder'] = true
	self['_isType.jk.lang.StringObject'] = true
	self.buffer = nil
	self.position = 0
end

function jk.lang.StringBuilder:forString(initial)
	local v = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	do v:appendString(initial) end
	do return v end
end

function jk.lang.StringBuilder:dup(initial)
	local v = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	if initial ~= nil then
		do v:appendString(initial:toString()) end
	end
	do return v end
end

function jk.lang.StringBuilder:resizeTo(size)
	local osz = #self.buffer
	if osz < size then
		while osz < size do
			osz = osz + 1024
		end
		self.buffer = _g.jk.lang.Buffer:resize(self.buffer, osz)
	end
end

function jk.lang.StringBuilder:_construct0()
	jk.lang.StringBuilder._init(self)
	do self:initialize() end
	return self
end

function jk.lang.StringBuilder:initialize()
	self.buffer = _util:allocate_buffer(1024)
end

function jk.lang.StringBuilder:clear()
	self.buffer = _util:allocate_buffer(1024)
	self.position = 0
end

function jk.lang.StringBuilder:count()
	do return self.position end
end

function jk.lang.StringBuilder:appendLong(c)
	do return self:appendString(_g.jk.lang.String:forLongInteger(c)) end
end

function jk.lang.StringBuilder:appendInteger(c)
	do return self:appendString(_g.jk.lang.String:forInteger(c)) end
end

function jk.lang.StringBuilder:appendDouble(c)
	do return self:appendString(_g.jk.lang.String:forDouble(c)) end
end

function jk.lang.StringBuilder:appendFloat(c)
	do return self:appendString(_g.jk.lang.String:forFloat(c)) end
end

function jk.lang.StringBuilder:appendCharacter(c)
	if c == 0 or c == -1 then
		do return self end
	end
	if c <= 127 then
		do self:resizeTo(self.position + 1) end
		self.buffer[self.position + 1] = _util:convert_to_integer(c)
		do self.position = self.position + 1 end
	else
		do self:appendString(_g.jk.lang.String:forCharacter(c)) end
	end
	do return self end
end

function jk.lang.StringBuilder:appendString(str)
	if str == nil then
		do return self end
	end
	do
		local nbuf = _g.jk.lang.String:toUTF8Buffer(str)
		if nbuf ~= nil then
			local nsz = #nbuf
			do self:resizeTo(self.position + nsz) end
			do _g.jk.lang.Buffer:copyFrom(self.buffer, nbuf, 0, self.position, nsz) end
			self.position = self.position + nsz
		end
		do return self end
	end
end

function jk.lang.StringBuilder:insertInteger(index, c)
	do return self:insertString(index, _g.jk.lang.String:forInteger(c)) end
end

function jk.lang.StringBuilder:insertCharacter(index, c)
	if c == 0 then
		do return self end
	end
	do return self:insertString(index, _g.jk.lang.String:forCharacter(c)) end
end

function jk.lang.StringBuilder:insertDouble(index, c)
	do return self:insertString(index, _g.jk.lang.String:forDouble(c)) end
end

function jk.lang.StringBuilder:insertFloat(index, c)
	do return self:insertString(index, _g.jk.lang.String:forFloat(c)) end
end

function jk.lang.StringBuilder:insertString(index, str)
	if str == nil then
		do return self end
	end
	do
		local nbuf = _g.jk.lang.String:toUTF8Buffer(str)
		if nbuf ~= nil then
			local nsz = #nbuf
			do self:resizeTo(self.position + nsz) end
			do _g.jk.lang.Buffer:copyFrom(self.buffer, self.buffer, index, index + nsz, self.position - index) end
			do _g.jk.lang.Buffer:copyFrom(self.buffer, nbuf, 0, index, nsz) end
			self.position = self.position + nsz
		end
		do return self end
	end
end

function jk.lang.StringBuilder:remove(index, length)
	if length < 1 then
		do return self end
	end
	if index < self.position then
		local ll = length
		local limit = self.position - index
		if ll > limit then
			ll = limit
		end
		do _g.jk.lang.Buffer:copyFrom(self.buffer, self.buffer, index + ll, index, self.position - index - ll) end
		self.position = self.position - ll
	end
	do return self end
end

function jk.lang.StringBuilder:removeLastCharacter()
	local c = self:count()
	if c > 0 then
		do self:remove(c - 1, 1) end
	end
	do return self end
end

function jk.lang.StringBuilder:toString()
	if not (self.buffer ~= nil) or self.position < 1 then
		do return "" end
	end
	do
		local bb = self.buffer
		if self.position < #bb then
			bb = _g.jk.lang.Buffer:getSubBuffer(bb, 0, self.position, false)
		end
		do return _g.jk.lang.String:forUTF8Buffer(bb) end
	end
end

jk.lang.CharacterIteratorForString = _g.jk.lang.CharacterDecoder._create()
jk.lang.CharacterIteratorForString.__index = jk.lang.CharacterIteratorForString
_vm:set_metatable(jk.lang.CharacterIteratorForString, {
	__index = _g.jk.lang.CharacterDecoder
})

function jk.lang.CharacterIteratorForString._create()
	local v = _vm:set_metatable({}, jk.lang.CharacterIteratorForString)
	return v
end

function jk.lang.CharacterIteratorForString:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.CharacterIteratorForString'
	self['_isType.jk.lang.CharacterIteratorForString'] = true
	self['_isType.jk.lang.Duplicateable'] = true
	self.string = nil
	self.stringSize = 0
	self.currentPosition = -1
end

function jk.lang.CharacterIteratorForString:_construct0()
	jk.lang.CharacterIteratorForString._init(self)
	do _g.jk.lang.CharacterDecoder._construct0(self) end
	return self
end

function jk.lang.CharacterIteratorForString:forString(string)
	local v = _g.jk.lang.CharacterIteratorForString._construct0(_g.jk.lang.CharacterIteratorForString._create())
	do v:setString(string) end
	do return v end
end

function jk.lang.CharacterIteratorForString:moveToPreviousByte()
	if self.currentPosition < 1 then
		do return false end
	end
	do self.currentPosition = self.currentPosition - 1 end
	do return true end
end

function jk.lang.CharacterIteratorForString:moveToNextByte()
	local n = self.currentPosition + 1
	self.currentPosition = n
	if n >= self.stringSize then
		do return false end
	end
	do return true end
end

function jk.lang.CharacterIteratorForString:getCurrentByte()
	do return _util:get_byte_from_string(self.string, self.currentPosition) end
end

function jk.lang.CharacterIteratorForString:getCurrentPosition()
	do return self.currentPosition end
end

function jk.lang.CharacterIteratorForString:setCurrentPosition(position)
	if position < 0 then
		self.current = 0
		self.currentPosition = -1
	else
		self.currentPosition = position + 1
		do self:doMoveToPreviousChar() end
	end
end

function jk.lang.CharacterIteratorForString:duplicate()
	local v = _g.jk.lang.CharacterIteratorForString._construct0(_g.jk.lang.CharacterIteratorForString._create())
	do _g.jk.lang.CharacterDecoder.copyTo(self, v) end
	v.string = self.string
	v.stringSize = self.stringSize
	v.currentPosition = self.currentPosition
	do return v end
end

function jk.lang.CharacterIteratorForString:setString(string)
	do self:resetDecoder() end
	self.string = string
	self.stringSize = _util:get_string_length(string)
	self.currentPosition = -1
end

jk.lang.Buffer = {}
jk.lang.Buffer.__index = jk.lang.Buffer
_vm:set_metatable(jk.lang.Buffer, {})

function jk.lang.Buffer._create()
	local v = _vm:set_metatable({}, jk.lang.Buffer)
	return v
end

function jk.lang.Buffer:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Buffer'
	self['_isType.jk.lang.Buffer'] = true
end

function jk.lang.Buffer:_construct0()
	jk.lang.Buffer._init(self)
	return self
end

jk.lang.Buffer.MyBufferObject = {}
jk.lang.Buffer.MyBufferObject.__index = jk.lang.Buffer.MyBufferObject
_vm:set_metatable(jk.lang.Buffer.MyBufferObject, {})

function jk.lang.Buffer.MyBufferObject._create()
	local v = _vm:set_metatable({}, jk.lang.Buffer.MyBufferObject)
	return v
end

function jk.lang.Buffer.MyBufferObject:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Buffer.MyBufferObject'
	self['_isType.jk.lang.Buffer.MyBufferObject'] = true
	self['_isType.jk.lang.BufferObject'] = true
	self.buffer = nil
end

function jk.lang.Buffer.MyBufferObject:_construct0()
	jk.lang.Buffer.MyBufferObject._init(self)
	return self
end

function jk.lang.Buffer.MyBufferObject:toBuffer()
	do return self.buffer end
end

function jk.lang.Buffer.MyBufferObject:getBuffer()
	do return self.buffer end
end

function jk.lang.Buffer.MyBufferObject:setBuffer(v)
	self.buffer = v
	do return self end
end

function jk.lang.Buffer:asObject(buffer)
	local v = _g.jk.lang.Buffer.MyBufferObject._construct0(_g.jk.lang.Buffer.MyBufferObject._create())
	do v:setBuffer(buffer) end
	do return v end
end

function jk.lang.Buffer:asBuffer(obj)
	if not (obj ~= nil) then
		do return nil end
	end
	if _util:is_buffer(obj) then
		do return obj end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.BufferObject') ~= nil) then
		local bo = obj
		do return bo:toBuffer() end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		do return _g.jk.lang.Buffer:forInt32BE(_util:convert_to_integer(obj)) end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		do return _g.jk.lang.Buffer:forInt64BE(_util:convert_to_integer(obj)) end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		do return _g.jk.lang.Buffer:forDouble64BE(obj) end
	end
	do return nil end
end

function jk.lang.Buffer:forInt8Array(buf)
	if not (buf ~= nil) then
		do return nil end
	end
	do
		local sz = #buf
		local v = _util:allocate_buffer(sz)
		do
			local n = 0
			while n < sz do
				v[n + 1] = buf[n + 1]
				do n = n + 1 end
			end
		end
		do return v end
	end
end

function jk.lang.Buffer:toInt8Array(buf)
	if not (buf ~= nil) then
		do return nil end
	end
	do
		local sz = #buf
		local v = _vm:allocate_array(sz)
		do
			local n = 0
			while n < sz do
				v[n + 1] = buf[n + 1]
				do n = n + 1 end
			end
		end
		do return v end
	end
end

function jk.lang.Buffer:getSubBuffer(buffer, offset, size, alwaysNewBuffer)
	if alwaysNewBuffer == false and offset == 0 and size < 0 then
		do return buffer end
	end
	do
		local bsz = _g.jk.lang.Buffer:getSize(buffer)
		local sz = size
		if sz < 0 then
			sz = bsz - offset
		end
		if alwaysNewBuffer == false and offset == 0 and sz == bsz then
			do return buffer end
		end
		if sz < 1 then
			do return nil end
		end
		do
			local v = _util:allocate_buffer(sz)
			do _g.jk.lang.Buffer:copyFrom(v, buffer, offset, 0, sz) end
			do return v end
		end
	end
end

function jk.lang.Buffer:getInt8(buffer, offset)
	if not (buffer ~= nil) then
		do return 0 end
	end
	do return buffer[offset+1] end
end

function jk.lang.Buffer:copyFrom(array, src, soffset, doffset, size)
	if not (array ~= nil) then
		do return end
	end
	if not (src ~= nil) then
		do return end
	end
	do _util:copy_buffer_bytes(src, array, soffset, doffset, size) end
end

function jk.lang.Buffer:getInt16LE(buffer, offset)
	if not (buffer ~= nil) then
		do return 0 end
	end
	do
		local b1 = buffer[offset + 1]
		local b2 = buffer[offset + 1 + 1]
		do return _util:network_bytes_to_host16(b2, b1) end
	end
end

function jk.lang.Buffer:getInt16BE(buffer, offset)
	if not (buffer ~= nil) then
		do return 0 end
	end
	do
		local b1 = buffer[offset + 1]
		local b2 = buffer[offset + 1 + 1]
		do return _util:network_bytes_to_host16(b1, b2) end
	end
end

function jk.lang.Buffer:getInt32LE(buffer, offset)
	local b1 = buffer[offset + 1]
	local b2 = buffer[offset + 1 + 1]
	local b3 = buffer[offset + 2 + 1]
	local b4 = buffer[offset + 3 + 1]
	do return _util:network_bytes_to_host32(b4, b3, b2, b1) end
end

function jk.lang.Buffer:getInt32BE(buffer, offset)
	local b1 = buffer[offset + 1]
	local b2 = buffer[offset + 1 + 1]
	local b3 = buffer[offset + 2 + 1]
	local b4 = buffer[offset + 3 + 1]
	do return _util:network_bytes_to_host32(b1, b2, b3, b4) end
end

function jk.lang.Buffer:getInt64LE(buffer, offset)
	local b1 = buffer[offset + 1]
	local b2 = buffer[offset + 1 + 1]
	local b3 = buffer[offset + 2 + 1]
	local b4 = buffer[offset + 3 + 1]
	local b5 = buffer[offset + 4 + 1]
	local b6 = buffer[offset + 5 + 1]
	local b7 = buffer[offset + 6 + 1]
	local b8 = buffer[offset + 7 + 1]
	do return _util:network_bytes_to_host64(b8, b7, b6, b5, b4, b3, b2, b1) end
end

function jk.lang.Buffer:getInt64BE(buffer, offset)
	_io:write_to_stdout("[jk.lang.Buffer.getInt64BE] (Buffer.sling:514:2): Not implemented" .. "\n")
	do return 0 end
end

function jk.lang.Buffer:getFloatLE(buffer, offset)
	_io:write_to_stdout("[jk.lang.Buffer.getFloatLE] (Buffer.sling:521:2): Not implemented" .. "\n")
	do return 0.0 end
end

function jk.lang.Buffer:getFloatBE(buffer, offset)
	_io:write_to_stdout("[jk.lang.Buffer.getFloatBE] (Buffer.sling:528:2): Not implemented" .. "\n")
	do return 0.0 end
end

function jk.lang.Buffer:getDoubleLE(buffer, offset)
	_io:write_to_stdout("[jk.lang.Buffer.getDoubleLE] (Buffer.sling:535:2): Not implemented" .. "\n")
	do return 0.0 end
end

function jk.lang.Buffer:getDoubleBE(buffer, offset)
	_io:write_to_stdout("[jk.lang.Buffer.getDoubleBE] (Buffer.sling:542:2): Not implemented" .. "\n")
	do return 0.0 end
end

function jk.lang.Buffer:forInt8(number)
	local v = _util:allocate_buffer(1)
	v[0 + 1] = _vm:bitwise_and(number, 255)
	do return v end
end

function jk.lang.Buffer:forInt16BE(number)
	do return _util:integer_to_buffer16(number, 0) end
end

function jk.lang.Buffer:forInt16LE(number)
	do return _util:integer_to_buffer16(number, 1) end
end

function jk.lang.Buffer:forInt32BE(number)
	do return _util:integer_to_buffer32(number, 0) end
end

function jk.lang.Buffer:forInt32LE(number)
	do return _util:integer_to_buffer32(number, 1) end
end

function jk.lang.Buffer:forInt64BE(number)
	do return _util:integer_to_buffer64(number, 0) end
end

function jk.lang.Buffer:forInt64LE(number)
	do return _util:integer_to_buffer64(number, 1) end
end

function jk.lang.Buffer:forFloat32BE(number)
	do return _util:float_to_buffer32(number, 0) end
end

function jk.lang.Buffer:forFloat32LE(number)
	do return _util:float_to_buffer32(number, 1) end
end

function jk.lang.Buffer:forDouble64BE(number)
	do return _util:double_to_buffer64(number, 0) end
end

function jk.lang.Buffer:forDouble64LE(number)
	do return _util:double_to_buffer64(number, 1) end
end

function jk.lang.Buffer:getSize(buffer)
	if buffer == nil then
		do return 0 end
	end
	do return #buffer end
end

function jk.lang.Buffer:getByte(buffer, offset)
	do return _g.jk.lang.Buffer:getInt8(buffer, offset) end
end

function jk.lang.Buffer:setByte(buffer, offset, value)
	if not (buffer ~= nil) then
		do return end
	end
	do buffer[offset+1] = value end
end

function jk.lang.Buffer:allocate(size)
	do return _util:allocate_buffer(size) end
end

function jk.lang.Buffer:resize(buffer, newSize)
	if newSize < 1 then
		do return nil end
	end
	if not (buffer ~= nil) then
		do return _g.jk.lang.Buffer:allocate(newSize) end
	end
	if #buffer == newSize then
		do return buffer end
	end
	do
		local oldSize = 0
		if buffer ~= nil then
			oldSize = #buffer
		end
		do
			local v = _util:allocate_buffer(newSize)
			if newSize >= oldSize then
				if oldSize > 0 then
					do _g.jk.lang.Buffer:copyFrom(v, buffer, 0, 0, oldSize) end
				end
			else
				do _g.jk.lang.Buffer:copyFrom(v, buffer, 0, 0, newSize) end
			end
			do return v end
		end
	end
end

function jk.lang.Buffer:append(original, toAppend, size)
	if toAppend == nil or size == 0 then
		do return original end
	end
	do
		local sz = size
		local os = _g.jk.lang.Buffer:getSize(original)
		local oas = _g.jk.lang.Buffer:getSize(toAppend)
		if sz >= 0 then
			oas = sz
		end
		do
			local nl = os + oas
			local nb = _g.jk.lang.Buffer:resize(original, nl)
			do _g.jk.lang.Buffer:copyFrom(nb, toAppend, 0, os, oas) end
			do return nb end
		end
	end
end

function jk.lang.Buffer:forHexString(str)
	if str == nil or _util:convert_to_integer(_g.jk.lang.String:getLength(str) % 2) ~= 0 then
		do return nil end
	end
	do
		local sb = nil
		local b = _g.jk.lang.Buffer:allocate(_util:convert_to_integer(_g.jk.lang.String:getLength(str) / 2))
		local n = 0
		local it = _g.jk.lang.String:iterate(str)
		while it ~= nil do
			local c = it:getNextChar()
			if c < 1 then
				do break end
			end
			if sb == nil then
				sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
			end
			if c >= 97 and c <= 102 or (c >= 65 and c <= 70) or (c >= 48 and c <= 57) then
				do sb:appendCharacter(c) end
				if sb:count() == 2 then
					do _g.jk.lang.Buffer:setByte(b, (function() local v = n n = n + 1 return v end)(), _g.jk.lang.String:toIntegerFromHex(sb:toString())) end
					do sb:clear() end
				end
			else
				do return nil end
			end
		end
		do return b end
	end
end

jk.lang.BooleanIterator = {}

jk.lang.Double = {}
jk.lang.Double.__index = jk.lang.Double
_vm:set_metatable(jk.lang.Double, {})

function jk.lang.Double._create()
	local v = _vm:set_metatable({}, jk.lang.Double)
	return v
end

function jk.lang.Double:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Double'
	self['_isType.jk.lang.Double'] = true
	self['_isType.jk.lang.DoubleObject'] = true
	self.value = 0.0
end

function jk.lang.Double:_construct0()
	jk.lang.Double._init(self)
	return self
end

function jk.lang.Double:forValue(value)
	do return _g.jk.lang.Double:asObject(value) end
end

function jk.lang.Double:asObject(value)
	local v = _g.jk.lang.Double._construct0(_g.jk.lang.Double._create())
	do v:setValue(value) end
	do return v end
end

function jk.lang.Double:asDouble(obj)
	if not (obj ~= nil) then
		do return 0.0 end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		do return obj end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.DoubleObject') ~= nil) then
		local od = obj
		do return od:toDouble() end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		local v = _util:convert_to_integer(obj)
		do return v end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.IntegerObject') ~= nil) then
		local oi = obj
		do return oi:toInteger() end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		local v = _util:convert_to_integer(obj)
		do return v end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.LongIntegerObject') ~= nil) then
		local oi = obj
		do return oi:toLong() end
	end
	if (_vm:get_variable_type(obj) == 'string') then
		do return _g.jk.lang.String:toDouble(obj) end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.StringObject') ~= nil) then
		do return _g.jk.lang.String:toDouble(obj:toString()) end
	end
	if (_vm:get_variable_type(obj) == 'number') then
		local v = obj
		do return v end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.CharacterObject') ~= nil) then
		local oc = obj
		do return oc:toCharacter() end
	end
	if (_vm:get_variable_type(obj) == 'boolean') then
		if obj == true then
			do return 1.0 end
		end
		do return 0.0 end
	end
	if (_vm:to_table_with_key(obj, '_isType.jk.lang.BooleanObject') ~= nil) then
		if obj:toBoolean() then
			do return 1.0 end
		end
		do return 0.0 end
	end
	do return 0.0 end
end

function jk.lang.Double:longBitsToDouble(vv)
	_io:write_to_stdout("[jk.lang.Double.longBitsToDouble] (Double.sling:98:3): Not implemented" .. "\n")
	do return 0.0 end
end

function jk.lang.Double:doubleToLongBits(vv)
	_io:write_to_stdout("[jk.lang.Double.doubleToLongBits] (Double.sling:112:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.lang.Double:add(amount)
	self.value = self.value + amount
end

function jk.lang.Double:toDouble()
	do return self.value end
end

function jk.lang.Double:getValue()
	do return self.value end
end

function jk.lang.Double:setValue(v)
	self.value = v
	do return self end
end

jk.lang.Character = {}
jk.lang.Character.__index = jk.lang.Character
_vm:set_metatable(jk.lang.Character, {})

function jk.lang.Character._create()
	local v = _vm:set_metatable({}, jk.lang.Character)
	return v
end

function jk.lang.Character:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Character'
	self['_isType.jk.lang.Character'] = true
	self['_isType.jk.lang.CharacterObject'] = true
	self.character = 0
end

function jk.lang.Character:_construct0()
	jk.lang.Character._init(self)
	return self
end

function jk.lang.Character:asObject(character)
	local v = _g.jk.lang.Character._construct0(_g.jk.lang.Character._create())
	do v:setCharacter(character) end
	do return v end
end

function jk.lang.Character:toUppercase(c)
	if c >= 97 and c <= 122 then
		do return c - 97 + 65 end
	end
	do return c end
end

function jk.lang.Character:toLowercase(c)
	if c >= 65 and c <= 90 then
		do return c - 65 + 97 end
	end
	do return c end
end

function jk.lang.Character:isDigit(c)
	do return c >= 48 and c <= 57 end
end

function jk.lang.Character:isLowercaseAlpha(c)
	do return c >= 97 and c <= 122 end
end

function jk.lang.Character:isUppercaseAlpha(c)
	do return c >= 65 and c <= 90 end
end

function jk.lang.Character:isHexDigit(c)
	local v = c >= 97 and c <= 102 or (c >= 65 and c <= 70) or (c >= 48 and c <= 57)
	do return v end
end

function jk.lang.Character:isAlnum(c)
	local v = c >= 97 and c <= 122 or (c >= 65 and c <= 90) or (c >= 48 and c <= 57)
	do return v end
end

function jk.lang.Character:isAlpha(c)
	local v = c >= 97 and c <= 122 or (c >= 65 and c <= 90)
	do return v end
end

function jk.lang.Character:isAlphaNumeric(c)
	local v = c >= 97 and c <= 122 or (c >= 65 and c <= 90) or (c >= 48 and c <= 57)
	do return v end
end

function jk.lang.Character:isLowercaseAlphaNumeric(c)
	local v = c >= 97 and c <= 122 or (c >= 48 and c <= 57)
	do return v end
end

function jk.lang.Character:isUppercaseAlphaNumeric(c)
	local v = c >= 65 and c <= 90 or (c >= 48 and c <= 57)
	do return v end
end

function jk.lang.Character:toCharacter()
	do return self.character end
end

function jk.lang.Character:isEOF(c)
	do return c == 0 or c == -1 end
end

function jk.lang.Character:getHexDigit(c)
	local v = 0
	if c >= 48 and c <= 57 then
		v = _util:convert_to_integer(c - 48)
	elseif c >= 97 and c <= 102 then
		v = 10 + c - 97
	elseif c >= 65 and c <= 70 then
		v = 10 + c - 65
	else
		do return 0 end
	end
	do return v end
end

function jk.lang.Character:getCharacter()
	do return self.character end
end

function jk.lang.Character:setCharacter(v)
	self.character = v
	do return self end
end

jk.lang.Map = {}
jk.lang.Map.__index = jk.lang.Map
_vm:set_metatable(jk.lang.Map, {})

function jk.lang.Map._create()
	local v = _vm:set_metatable({}, jk.lang.Map)
	return v
end

function jk.lang.Map:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Map'
	self['_isType.jk.lang.Map'] = true
end

function jk.lang.Map:_construct0()
	jk.lang.Map._init(self)
	return self
end

jk.lang.Map.MyMapObject = {}
jk.lang.Map.MyMapObject.__index = jk.lang.Map.MyMapObject
_vm:set_metatable(jk.lang.Map.MyMapObject, {})

function jk.lang.Map.MyMapObject._create()
	local v = _vm:set_metatable({}, jk.lang.Map.MyMapObject)
	return v
end

function jk.lang.Map.MyMapObject:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.Map.MyMapObject'
	self['_isType.jk.lang.Map.MyMapObject'] = true
	self['_isType.jk.lang.MapObject'] = true
	self.map = nil
end

function jk.lang.Map.MyMapObject:_construct0()
	jk.lang.Map.MyMapObject._init(self)
	return self
end

function jk.lang.Map.MyMapObject:toMap()
	do return self.map end
end

function jk.lang.Map.MyMapObject:getMap()
	do return self.map end
end

function jk.lang.Map.MyMapObject:setMap(v)
	self.map = v
	do return self end
end

function jk.lang.Map:asObject(map)
	if not (map ~= nil) then
		do return nil end
	end
	do
		local v = _g.jk.lang.Map.MyMapObject._construct0(_g.jk.lang.Map.MyMapObject._create())
		do v:setMap(map) end
		do return v end
	end
end

function jk.lang.Map:asMap(o)
	if not (o ~= nil) then
		do return nil end
	end
	do return nil end
end

function jk.lang.Map:getWithDefault(map, key, ddf)
	if map == nil or key == nil then
		do return ddf end
	end
	if _g.jk.lang.Map:containsKey(map, key) == false then
		do return ddf end
	end
	do return _g.jk.lang.Map:getValue(map, key) end
end

function jk.lang.Map:get(map, key)
	do return _g.jk.lang.Map:getValue(map, key) end
end

function jk.lang.Map:getValue(map, key)
	if map == nil or key == nil then
		do return nil end
	end
	do return map[key] end
end

function jk.lang.Map:set(data, key, val)
	if not (data ~= nil) then
		do return false end
	end
	if not (key ~= nil) then
		do return false end
	end
	data[key] = val
	do return true end
end

function jk.lang.Map:setValue(data, key, val)
	do return _g.jk.lang.Map:set(data, key, val) end
end

function jk.lang.Map:remove(data, key)
	if not (data ~= nil) then
		do return end
	end
	if not (key ~= nil) then
		do return end
	end
	do data[key] = nil end
end

function jk.lang.Map:count(data)
	if data == nil then
		do return 0 end
	end
	do return _g.jk.lang.Vector:getSize(_g.jk.lang.Map:getKeys(data)) end
end

function jk.lang.Map:containsKey(data, key)
	if not (data ~= nil) then
		do return false end
	end
	if not (key ~= nil) then
		do return false end
	end
	do
		local array = _g.jk.lang.Map:getKeys(data)
		if array ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(array)
			do
				n = 0
				while n < m do
					local kk = array[n + 1]
					if kk ~= nil then
						if key == kk then
							do return true end
						end
					end
					do n = n + 1 end
				end
			end
		end
		do return false end
	end
end

function jk.lang.Map:containsValue(data, val)
	if not (data ~= nil) then
		do return false end
	end
	if not (val ~= nil) then
		do return false end
	end
	do
		local array = _g.jk.lang.Map:getValues(data)
		if array ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(array)
			do
				n = 0
				while n < m do
					local vv = array[n + 1]
					if vv ~= nil then
						if val == vv then
							do return true end
						end
					end
					do n = n + 1 end
				end
			end
		end
		do return false end
	end
end

function jk.lang.Map:clear(data)
	if not (data ~= nil) then
		do return end
	end
	do _vm:clear_table(data) end
end

function jk.lang.Map:dup(data)
	if not (data ~= nil) then
		do return nil end
	end
	_io:write_to_stdout("[jk.lang.Map.dup] (Map.sling:372:3): Not implemented" .. "\n")
	do return nil end
end

function jk.lang.Map:getKeys(data)
	if not (data ~= nil) then
		do return nil end
	end
	do
		local v = nil
		do v = _vm:get_table_keys(data) end
		do return v end
	end
end

function jk.lang.Map:getValues(data)
	if not (data ~= nil) then
		do return nil end
	end
	do
		local v = nil
		do v = _vm:get_table_values(data) end
		do return v end
	end
end

function jk.lang.Map:iterateKeys(data)
	do return _g.jk.lang.Vector:iterate(_g.jk.lang.Map:getKeys(data)) end
end

function jk.lang.Map:iterateValues(data)
	do return _g.jk.lang.Vector:iterate(_g.jk.lang.Map:getValues(data)) end
end

jk.lang.DynamicObject = {}
jk.lang.DynamicObject.__index = jk.lang.DynamicObject
_vm:set_metatable(jk.lang.DynamicObject, {})

function jk.lang.DynamicObject._create()
	local v = _vm:set_metatable({}, jk.lang.DynamicObject)
	return v
end

function jk.lang.DynamicObject:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.DynamicObject'
	self['_isType.jk.lang.DynamicObject'] = true
end

function jk.lang.DynamicObject:_construct0()
	jk.lang.DynamicObject._init(self)
	return self
end

jk.lang.DynamicObject.StringIteratorWrapper = {}
jk.lang.DynamicObject.StringIteratorWrapper.__index = jk.lang.DynamicObject.StringIteratorWrapper
_vm:set_metatable(jk.lang.DynamicObject.StringIteratorWrapper, {})

function jk.lang.DynamicObject.StringIteratorWrapper._create()
	local v = _vm:set_metatable({}, jk.lang.DynamicObject.StringIteratorWrapper)
	return v
end

function jk.lang.DynamicObject.StringIteratorWrapper:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.DynamicObject.StringIteratorWrapper'
	self['_isType.jk.lang.DynamicObject.StringIteratorWrapper'] = true
	self['_isType.jk.lang.Iterator'] = true
	self.iterator = nil
end

function jk.lang.DynamicObject.StringIteratorWrapper:_construct0()
	jk.lang.DynamicObject.StringIteratorWrapper._init(self)
	return self
end

function jk.lang.DynamicObject.StringIteratorWrapper:next()
	if not (self.iterator ~= nil) then
		do return nil end
	end
	do
		local c = self.iterator:getNextChar()
		if _g.jk.lang.Character:isEOF(c) then
			self.iterator = nil
			do return nil end
		end
		do return c end
	end
end

function jk.lang.DynamicObject.StringIteratorWrapper:hasNext()
	if not (self.iterator ~= nil) then
		do return false end
	end
	do return not self.iterator:hasEnded() end
end

function jk.lang.DynamicObject.StringIteratorWrapper:getIterator()
	do return self.iterator end
end

function jk.lang.DynamicObject.StringIteratorWrapper:setIterator(v)
	self.iterator = v
	do return self end
end

jk.lang.DynamicObject.BufferIteratorWrapper = {}
jk.lang.DynamicObject.BufferIteratorWrapper.__index = jk.lang.DynamicObject.BufferIteratorWrapper
_vm:set_metatable(jk.lang.DynamicObject.BufferIteratorWrapper, {})

function jk.lang.DynamicObject.BufferIteratorWrapper._create()
	local v = _vm:set_metatable({}, jk.lang.DynamicObject.BufferIteratorWrapper)
	return v
end

function jk.lang.DynamicObject.BufferIteratorWrapper:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.DynamicObject.BufferIteratorWrapper'
	self['_isType.jk.lang.DynamicObject.BufferIteratorWrapper'] = true
	self['_isType.jk.lang.Iterator'] = true
	self.buffer = nil
	self.size = 0
	self.position = 0
end

function jk.lang.DynamicObject.BufferIteratorWrapper:_construct0()
	jk.lang.DynamicObject.BufferIteratorWrapper._init(self)
	return self
end

function jk.lang.DynamicObject.BufferIteratorWrapper:next()
	if not (self.buffer ~= nil) then
		do return nil end
	end
	if self.position >= self.size then
		do return nil end
	end
	do
		local v = self.buffer[self.position + 1]
		do self.position = self.position + 1 end
		do return v end
	end
end

function jk.lang.DynamicObject.BufferIteratorWrapper:hasNext()
	if not (self.buffer ~= nil) then
		do return false end
	end
	if not (self.position < self.size - 1) then
		do return false end
	end
	do return true end
end

function jk.lang.DynamicObject.BufferIteratorWrapper:getBuffer()
	do return self.buffer end
end

function jk.lang.DynamicObject.BufferIteratorWrapper:setBuffer(v)
	self.buffer = v
	do return self end
end

function jk.lang.DynamicObject.BufferIteratorWrapper:getSize()
	do return self.size end
end

function jk.lang.DynamicObject.BufferIteratorWrapper:setSize(v)
	self.size = v
	do return self end
end

jk.lang.DynamicObject.ArrayIteratorWrapper = {}
jk.lang.DynamicObject.ArrayIteratorWrapper.__index = jk.lang.DynamicObject.ArrayIteratorWrapper
_vm:set_metatable(jk.lang.DynamicObject.ArrayIteratorWrapper, {})

function jk.lang.DynamicObject.ArrayIteratorWrapper._create()
	local v = _vm:set_metatable({}, jk.lang.DynamicObject.ArrayIteratorWrapper)
	return v
end

function jk.lang.DynamicObject.ArrayIteratorWrapper:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.DynamicObject.ArrayIteratorWrapper'
	self['_isType.jk.lang.DynamicObject.ArrayIteratorWrapper'] = true
	self['_isType.jk.lang.Iterator'] = true
	self.array = nil
	self.size = 0
	self.position = 0
end

function jk.lang.DynamicObject.ArrayIteratorWrapper:_construct0()
	jk.lang.DynamicObject.ArrayIteratorWrapper._init(self)
	return self
end

function jk.lang.DynamicObject.ArrayIteratorWrapper:next()
	if not (self.array ~= nil) then
		do return nil end
	end
	if self.position >= self.size then
		do return nil end
	end
	do
		local v = self.array[self.position + 1]
		do self.position = self.position + 1 end
		do return v end
	end
end

function jk.lang.DynamicObject.ArrayIteratorWrapper:hasNext()
	if not (self.array ~= nil) then
		do return false end
	end
	if not (self.position < self.size - 1) then
		do return false end
	end
	do return true end
end

function jk.lang.DynamicObject.ArrayIteratorWrapper:getArray()
	do return self.array end
end

function jk.lang.DynamicObject.ArrayIteratorWrapper:setArray(v)
	self.array = v
	do return self end
end

function jk.lang.DynamicObject.ArrayIteratorWrapper:getSize()
	do return self.size end
end

function jk.lang.DynamicObject.ArrayIteratorWrapper:setSize(v)
	self.size = v
	do return self end
end

jk.lang.DynamicObject.VectorIteratorWrapper = {}
jk.lang.DynamicObject.VectorIteratorWrapper.__index = jk.lang.DynamicObject.VectorIteratorWrapper
_vm:set_metatable(jk.lang.DynamicObject.VectorIteratorWrapper, {})

function jk.lang.DynamicObject.VectorIteratorWrapper._create()
	local v = _vm:set_metatable({}, jk.lang.DynamicObject.VectorIteratorWrapper)
	return v
end

function jk.lang.DynamicObject.VectorIteratorWrapper:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.DynamicObject.VectorIteratorWrapper'
	self['_isType.jk.lang.DynamicObject.VectorIteratorWrapper'] = true
	self['_isType.jk.lang.Iterator'] = true
	self.vector = nil
	self.size = 0
	self.position = 0
end

function jk.lang.DynamicObject.VectorIteratorWrapper:_construct0()
	jk.lang.DynamicObject.VectorIteratorWrapper._init(self)
	return self
end

function jk.lang.DynamicObject.VectorIteratorWrapper:next()
	if not (self.vector ~= nil) then
		do return nil end
	end
	if self.position >= self.size then
		do return nil end
	end
	do
		local v = self.vector[self.position + 1]
		do self.position = self.position + 1 end
		do return v end
	end
end

function jk.lang.DynamicObject.VectorIteratorWrapper:hasNext()
	if not (self.vector ~= nil) then
		do return false end
	end
	if not (self.position < self.size - 1) then
		do return false end
	end
	do return true end
end

function jk.lang.DynamicObject.VectorIteratorWrapper:getVector()
	do return self.vector end
end

function jk.lang.DynamicObject.VectorIteratorWrapper:setVector(v)
	self.vector = v
	do return self end
end

function jk.lang.DynamicObject.VectorIteratorWrapper:getSize()
	do return self.size end
end

function jk.lang.DynamicObject.VectorIteratorWrapper:setSize(v)
	self.size = v
	do return self end
end

function jk.lang.DynamicObject:iterate(object)
	if (_vm:get_variable_type(object) == 'string') then
		local v = _g.jk.lang.DynamicObject.StringIteratorWrapper._construct0(_g.jk.lang.DynamicObject.StringIteratorWrapper._create())
		do v:setIterator(_g.jk.lang.String:iterate(object)) end
		do return v end
	end
	if _util:is_buffer(object) then
		local v = _g.jk.lang.DynamicObject.BufferIteratorWrapper._construct0(_g.jk.lang.DynamicObject.BufferIteratorWrapper._create())
		do v:setBuffer(object) end
		do v:setSize(#object) end
		do return v end
	end
	if (function(x) return x ~= nil and _vm:get_variable_type(x) == 'table' and not x._isClassInstance == true and #x > 0 end)(object) then
		local v = _g.jk.lang.DynamicObject.ArrayIteratorWrapper._construct0(_g.jk.lang.DynamicObject.ArrayIteratorWrapper._create())
		do v:setArray(object) end
		do v:setSize(#object) end
		do return v end
	end
	if (function(x) return x ~= nil and _vm:get_variable_type(x) == 'table' and not x._isClassInstance == true and #x > 0 end)(object) then
		local v = _g.jk.lang.DynamicObject.VectorIteratorWrapper._construct0(_g.jk.lang.DynamicObject.VectorIteratorWrapper._create())
		do v:setVector(object) end
		do v:setSize(_g.jk.lang.Vector:getSize(object)) end
		do return v end
	end
	if (function(x) return x ~= nil and _vm:get_variable_type(x) == 'table' and not x._isClassInstance == true and #x < 1 end)(object) then
		do return _g.jk.lang.DynamicObject:iterate(_g.jk.lang.Map:getValues(object)) end
	end
	do return nil end
end

jk.lang.DynamicMap = {}
jk.lang.DynamicMap.__index = jk.lang.DynamicMap
_vm:set_metatable(jk.lang.DynamicMap, {})

jk.lang.DynamicMap.nullObject = "null"

function jk.lang.DynamicMap._create()
	local v = _vm:set_metatable({}, jk.lang.DynamicMap)
	return v
end

function jk.lang.DynamicMap:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.DynamicMap'
	self['_isType.jk.lang.DynamicMap'] = true
	self['_isType.jk.lang.Duplicateable'] = true
	self['_isType.jk.lang.Iterateable'] = true
	self.map = nil
end

function jk.lang.DynamicMap:asDynamicMap(object)
	if not (object ~= nil) then
		do return nil end
	end
	if (_vm:to_table_with_key(object, '_isType.jk.lang.DynamicMap') ~= nil) then
		do return object end
	end
	if (function(x) return x ~= nil and _vm:get_variable_type(x) == 'table' and not x._isClassInstance == true and #x < 1 end)(object) then
		do return _g.jk.lang.DynamicMap:forObjectMap(object) end
	end
	do return nil end
end

function jk.lang.DynamicMap:forObjectMap(map)
	local v = _g.jk.lang.DynamicMap._construct0(_g.jk.lang.DynamicMap._create())
	if map ~= nil then
		local it = _g.jk.lang.Map:iterateKeys(map)
		while it ~= nil do
			local key = it:next()
			if key == nil then
				do break end
			end
			if (_vm:get_variable_type(key) == 'string') == false then
				goto _continue1
			end
			do v:setObject(key, _g.jk.lang.Map:getValue(map, key)) end
			::_continue1::
		end
	end
	do return v end
end

function jk.lang.DynamicMap:forStringMap(map)
	local v = _g.jk.lang.DynamicMap._construct0(_g.jk.lang.DynamicMap._create())
	if map ~= nil then
		local it = _g.jk.lang.Map:iterateKeys(map)
		while it ~= nil do
			local key = it:next()
			if key == nil then
				do break end
			end
			do v:setString(key, _g.jk.lang.Map:getValue(map, key)) end
		end
	end
	do return v end
end

function jk.lang.DynamicMap:forDynamicMaps(map1, map2)
	local v = _g.jk.lang.DynamicMap._construct0(_g.jk.lang.DynamicMap._create())
	do v:mergeFrom(map1) end
	do v:mergeFrom(map2) end
	do return v end
end

function jk.lang.DynamicMap:forDynamicMap(map)
	if not (map ~= nil) then
		do return nil end
	end
	do return map:duplicateMap() end
end

function jk.lang.DynamicMap:_construct0()
	jk.lang.DynamicMap._init(self)
	self.map = {}
	return self
end

function jk.lang.DynamicMap:asMap()
	local v = {}
	local it = self:iterateKeys()
	while it ~= nil do
		local key = it:next()
		if not (key ~= nil) then
			do break end
		end
		do _g.jk.lang.Map:set(v, key, self:get(key)) end
	end
	do return v end
end

function jk.lang.DynamicMap:asStringMap()
	do return self:toStringMap() end
end

function jk.lang.DynamicMap:toStringMap()
	local v = {}
	local it = self:iterateKeys()
	while it ~= nil do
		local key = it:next()
		if not (key ~= nil) then
			do break end
		end
		do _g.jk.lang.Map:set(v, key, self:getString(key, nil)) end
	end
	do return v end
end

function jk.lang.DynamicMap:toObjectMap()
	local v = {}
	local it = self:iterateKeys()
	while it ~= nil do
		local key = it:next()
		if not (key ~= nil) then
			do break end
		end
		do _g.jk.lang.Map:set(v, key, self:getString(key, nil)) end
	end
	do return v end
end

function jk.lang.DynamicMap:duplicate()
	do return self:duplicateMap() end
end

function jk.lang.DynamicMap:duplicateMap()
	local v = _g.jk.lang.DynamicMap._construct0(_g.jk.lang.DynamicMap._create())
	local it = self:iterateKeys()
	while it ~= nil do
		local key = it:next()
		if key == nil then
			do break end
		end
		do v:setObject(key, self:get(key)) end
	end
	do return v end
end

function jk.lang.DynamicMap:mergeFrom(other)
	if other == nil then
		do return self end
	end
	do
		local it = other:iterateKeys()
		while it ~= nil do
			local key = it:next()
			if key == nil then
				do break end
			end
			do self:setObject(key, other:get(key)) end
		end
		do return self end
	end
end

function jk.lang.DynamicMap:setObject(key, value)
	if key ~= nil then
		if value == nil then
			self.map[key] = _g.jk.lang.DynamicMap.nullObject
		else
			self.map[key] = value
		end
	end
	do return self end
end

function jk.lang.DynamicMap:setString(key, value)
	if key ~= nil then
		if value == nil then
			self.map[key] = _g.jk.lang.DynamicMap.nullObject
		else
			self.map[key] = value
		end
	end
	do return self end
end

function jk.lang.DynamicMap:setBuffer(key, value)
	if not (key == nil) and value == nil then
		self.map[key] = _g.jk.lang.DynamicMap.nullObject
		do return self end
	end
	do return self:setObject(key, _g.jk.lang.Buffer:asObject(value)) end
end

function jk.lang.DynamicMap:setInteger(key, value)
	do return self:setObject(key, _g.jk.lang.Integer:asObject(value)) end
end

function jk.lang.DynamicMap:setLong(key, value)
	do return self:setObject(key, _g.jk.lang.LongInteger:asObject(value)) end
end

function jk.lang.DynamicMap:setLongInteger(key, value)
	do return self:setObject(key, _g.jk.lang.LongInteger:asObject(value)) end
end

function jk.lang.DynamicMap:setBoolean(key, value)
	do return self:setObject(key, _g.jk.lang.Boolean:asObject(value)) end
end

function jk.lang.DynamicMap:setDouble(key, value)
	do return self:setObject(key, _g.jk.lang.Double:asObject(value)) end
end

function jk.lang.DynamicMap:get(key)
	local v = _g.jk.lang.Map:getValue(self.map, key)
	if v == _g.jk.lang.DynamicMap.nullObject then
		v = nil
	end
	do return v end
end

function jk.lang.DynamicMap:getString(key, defval)
	local v = _g.jk.lang.String:asString(self:get(key))
	if v == nil then
		do return defval end
	end
	do return v end
end

function jk.lang.DynamicMap:getInteger(key, defval)
	local vv = self:get(key)
	if vv == nil then
		do return defval end
	end
	do return _g.jk.lang.Integer:asInteger(vv) end
end

function jk.lang.DynamicMap:getLongInteger(key, defval)
	local vv = self:get(key)
	if vv == nil then
		do return defval end
	end
	do return _g.jk.lang.LongInteger:asLong(vv) end
end

function jk.lang.DynamicMap:getBoolean(key, defval)
	local vv = self:get(key)
	if vv == nil then
		do return defval end
	end
	do return _g.jk.lang.Boolean:asBoolean(vv, false) end
end

function jk.lang.DynamicMap:getDouble(key, defval)
	local vv = self:get(key)
	if vv == nil then
		do return defval end
	end
	do return _g.jk.lang.Double:asDouble(vv) end
end

function jk.lang.DynamicMap:getBuffer(key)
	local vv = self:get(key)
	if not (vv ~= nil) then
		do return nil end
	end
	do return _g.jk.lang.Buffer:asBuffer(vv) end
end

function jk.lang.DynamicMap:getDynamicVector(key)
	local vv = _vm:to_table_with_key(self:get(key), '_isType.jk.lang.DynamicVector')
	if vv ~= nil then
		do return vv end
	end
	do
		local v = self:getVector(key)
		if v ~= nil then
			do return _g.jk.lang.DynamicVector:forObjectVector(v) end
		end
		do return nil end
	end
end

function jk.lang.DynamicMap:getVector(key)
	local val = self:get(key)
	if not (val ~= nil) then
		do return nil end
	end
	if (function(x) return x ~= nil and _vm:get_variable_type(x) == 'table' and not x._isClassInstance == true and #x > 0 end)(val) then
		do return val end
	end
	if (_vm:to_table_with_key(val, '_isType.jk.lang.VectorObject') ~= nil) then
		local vo = val
		local vv = vo:toVector()
		do return vv end
	end
	do return nil end
end

function jk.lang.DynamicMap:getDynamicMap(key)
	do return _vm:to_table_with_key(self:get(key), '_isType.jk.lang.DynamicMap') end
end

function jk.lang.DynamicMap:getKeys()
	local v = _g.jk.lang.Map:getKeys(self.map)
	do return v end
end

function jk.lang.DynamicMap:getValues()
	local v = _g.jk.lang.Map:getValues(self.map)
	local v2 = {}
	if v ~= nil then
		local n = 0
		local m = _g.jk.lang.Vector:getSize(v)
		do
			n = 0
			while n < m do
				local o = v[n + 1]
				if o ~= nil then
					if o ~= _g.jk.lang.DynamicMap.nullObject then
						do _g.jk.lang.Vector:append(v2, o) end
					end
				end
				do n = n + 1 end
			end
		end
	end
	v = v2
	do return v end
end

function jk.lang.DynamicMap:iterate()
	local v = _g.jk.lang.Map:iterateKeys(self.map)
	do return v end
end

function jk.lang.DynamicMap:iterateKeys()
	local v = _g.jk.lang.Map:iterateKeys(self.map)
	do return v end
end

function jk.lang.DynamicMap:iterateValues()
	do return _g.jk.lang.Vector:iterate(self:getValues()) end
end

function jk.lang.DynamicMap:remove(key)
	do _g.jk.lang.Map:remove(self.map, key) end
end

function jk.lang.DynamicMap:clear()
	do _g.jk.lang.Map:clear(self.map) end
end

function jk.lang.DynamicMap:getCount()
	do return _g.jk.lang.Map:count(self.map) end
end

function jk.lang.DynamicMap:containsKey(key)
	do return _g.jk.lang.Map:containsKey(self.map, key) end
end

function jk.lang.DynamicMap:removeNullValues()
	local keys = self:getKeys()
	if keys ~= nil then
		local n = 0
		local m = _g.jk.lang.Vector:getSize(keys)
		do
			n = 0
			while n < m do
				local key = keys[n + 1]
				if key ~= nil then
					local value = self:get(key)
					if value == nil then
						do self:remove(key) end
					end
				end
				do n = n + 1 end
			end
		end
	end
	do return self end
end

jk.lang.KeyValueListForStrings = _g.jk.lang.KeyValueList._create()
jk.lang.KeyValueListForStrings.__index = jk.lang.KeyValueListForStrings
_vm:set_metatable(jk.lang.KeyValueListForStrings, {
	__index = _g.jk.lang.KeyValueList
})

function jk.lang.KeyValueListForStrings._create()
	local v = _vm:set_metatable({}, jk.lang.KeyValueListForStrings)
	return v
end

function jk.lang.KeyValueListForStrings:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.KeyValueListForStrings'
	self['_isType.jk.lang.KeyValueListForStrings'] = true
end

function jk.lang.KeyValueListForStrings:_construct0()
	jk.lang.KeyValueListForStrings._init(self)
	do _g.jk.lang.KeyValueList._construct0(self) end
	return self
end

jk.lang.RunnableFunction = {}
jk.lang.RunnableFunction.__index = jk.lang.RunnableFunction
_vm:set_metatable(jk.lang.RunnableFunction, {})

function jk.lang.RunnableFunction._create()
	local v = _vm:set_metatable({}, jk.lang.RunnableFunction)
	return v
end

function jk.lang.RunnableFunction:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.RunnableFunction'
	self['_isType.jk.lang.RunnableFunction'] = true
	self['_isType.jk.lang.Runnable'] = true
	self._function = nil
end

function jk.lang.RunnableFunction:_construct0()
	jk.lang.RunnableFunction._init(self)
	return self
end

function jk.lang.RunnableFunction:forFunction(_function)
	local v = _g.jk.lang.RunnableFunction._construct0(_g.jk.lang.RunnableFunction._create())
	do v:setFunction(_function) end
	do return v end
end

function jk.lang.RunnableFunction:run()
	if self._function ~= nil then
		do self._function() end
	end
end

function jk.lang.RunnableFunction:getFunction()
	do return self._function end
end

function jk.lang.RunnableFunction:setFunction(v)
	self._function = v
	do return self end
end

jk.lang.DateTime = {}
jk.lang.DateTime.__index = jk.lang.DateTime
_vm:set_metatable(jk.lang.DateTime, {})

function jk.lang.DateTime._create()
	local v = _vm:set_metatable({}, jk.lang.DateTime)
	return v
end

function jk.lang.DateTime:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.DateTime'
	self['_isType.jk.lang.DateTime'] = true
	self['_isType.jk.lang.StringObject'] = true
	self.timezoneOffset = 0
	self.weekDay = 0
	self.dayOfMonth = 0
	self.month = 0
	self.year = 0
	self.hours = 0
	self.minutes = 0
	self.seconds = 0
end

function jk.lang.DateTime:_construct0()
	jk.lang.DateTime._init(self)
	return self
end

function jk.lang.DateTime:forSeconds(seconds)
	local v = _g.jk.lang.DateTime._construct0(_g.jk.lang.DateTime._create())
	do v:updateFromTimestamp(seconds) end
	do return v end
end

function jk.lang.DateTime:forTimeValue(tv)
	if not (tv ~= nil) then
		do return nil end
	end
	do
		local v = _g.jk.lang.DateTime._construct0(_g.jk.lang.DateTime._create())
		do v:updateFromTimestamp(tv:getSeconds()) end
		do return v end
	end
end

function jk.lang.DateTime:forString(string)
	if not (string ~= nil) then
		do return nil end
	end
	do
		local comps = _g.jk.lang.String:split(string, 32, 2)
		if not (comps ~= nil) then
			do return nil end
		end
		do
			local c0 = _g.jk.lang.Vector:get(comps, 0)
			local c1 = _g.jk.lang.Vector:get(comps, 1)
			if not _g.jk.lang.String:isNotEmpty(c0) then
				do return nil end
			end
			do
				local comps2 = _g.jk.lang.String:split(c0, 45, 3)
				if not (comps2 ~= nil) then
					do return nil end
				end
				if not (_g.jk.lang.Vector:getSize(comps2) == 3) then
					do return nil end
				end
				do
					local v = _g.jk.lang.DateTime._construct0(_g.jk.lang.DateTime._create())
					do v:setYear(_g.jk.lang.String:toInteger(_g.jk.lang.Vector:get(comps2, 0))) end
					do v:setMonth(_g.jk.lang.String:toInteger(_g.jk.lang.Vector:get(comps2, 1))) end
					do v:setDayOfMonth(_g.jk.lang.String:toInteger(_g.jk.lang.Vector:get(comps2, 2))) end
					if _g.jk.lang.String:isNotEmpty(c1) then
						local tcs = _g.jk.lang.String:split(c1, 58, 3)
						if _g.jk.lang.Vector:getSize(tcs) == 3 then
							do v:setHours(_g.jk.lang.String:toInteger(_g.jk.lang.Vector:get(tcs, 0))) end
							do v:setMinutes(_g.jk.lang.String:toInteger(_g.jk.lang.Vector:get(tcs, 1))) end
							do v:setSeconds(_g.jk.lang.String:toInteger(_g.jk.lang.Vector:get(tcs, 2))) end
						end
					end
					do return v end
				end
			end
		end
	end
end

function jk.lang.DateTime:updateFromTimestamp(seconds)
	local o = self
	do o.weekDay, o.dayOfMonth, o.month, o.year, o.hours, o.minutes, o.seconds = _os:get_timestamp_details_utc(seconds) end
end

function jk.lang.DateTime:toStringDate(delim)
	local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	do sb:appendString(_g.jk.lang.String:forIntegerWithPadding(self:getYear(), 4, nil)) end
	if delim > 0 then
		do sb:appendCharacter(delim) end
	end
	do sb:appendString(_g.jk.lang.String:forIntegerWithPadding(self:getMonth(), 2, nil)) end
	if delim > 0 then
		do sb:appendCharacter(delim) end
	end
	do sb:appendString(_g.jk.lang.String:forIntegerWithPadding(self:getDayOfMonth(), 2, nil)) end
	do return sb:toString() end
end

function jk.lang.DateTime:toStringTime(delim)
	local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	do sb:appendString(_g.jk.lang.String:forIntegerWithPadding(self:getHours(), 2, nil)) end
	if delim > 0 then
		do sb:appendCharacter(delim) end
	end
	do sb:appendString(_g.jk.lang.String:forIntegerWithPadding(self:getMinutes(), 2, nil)) end
	if delim > 0 then
		do sb:appendCharacter(delim) end
	end
	do sb:appendString(_g.jk.lang.String:forIntegerWithPadding(self:getSeconds(), 2, nil)) end
	do return sb:toString() end
end

function jk.lang.DateTime:toStringDateTime()
	local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	do sb:appendString(self:toStringDate(45)) end
	do sb:appendString(" ") end
	do sb:appendString(self:toStringTime(58)) end
	do return sb:toString() end
end

function jk.lang.DateTime:toString()
	do return self:toStringDateTime() end
end

function jk.lang.DateTime:getTimezoneOffset()
	do return self.timezoneOffset end
end

function jk.lang.DateTime:setTimezoneOffset(v)
	self.timezoneOffset = v
	do return self end
end

function jk.lang.DateTime:getWeekDay()
	do return self.weekDay end
end

function jk.lang.DateTime:setWeekDay(v)
	self.weekDay = v
	do return self end
end

function jk.lang.DateTime:getDayOfMonth()
	do return self.dayOfMonth end
end

function jk.lang.DateTime:setDayOfMonth(v)
	self.dayOfMonth = v
	do return self end
end

function jk.lang.DateTime:getMonth()
	do return self.month end
end

function jk.lang.DateTime:setMonth(v)
	self.month = v
	do return self end
end

function jk.lang.DateTime:getYear()
	do return self.year end
end

function jk.lang.DateTime:setYear(v)
	self.year = v
	do return self end
end

function jk.lang.DateTime:getHours()
	do return self.hours end
end

function jk.lang.DateTime:setHours(v)
	self.hours = v
	do return self end
end

function jk.lang.DateTime:getMinutes()
	do return self.minutes end
end

function jk.lang.DateTime:setMinutes(v)
	self.minutes = v
	do return self end
end

function jk.lang.DateTime:getSeconds()
	do return self.seconds end
end

function jk.lang.DateTime:setSeconds(v)
	self.seconds = v
	do return self end
end

jk.lang.EventLoop = {}

jk.lang.BufferBuilder = {}
jk.lang.BufferBuilder.__index = jk.lang.BufferBuilder
_vm:set_metatable(jk.lang.BufferBuilder, {})

function jk.lang.BufferBuilder._create()
	local v = _vm:set_metatable({}, jk.lang.BufferBuilder)
	return v
end

function jk.lang.BufferBuilder:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.lang.BufferBuilder'
	self['_isType.jk.lang.BufferBuilder'] = true
	self.buffer = nil
	self.pointer = 0
end

function jk.lang.BufferBuilder:_construct0()
	jk.lang.BufferBuilder._init(self)
	return self
end

function jk.lang.BufferBuilder:allocate(sz)
	if self.buffer == nil then
		self.buffer = _util:allocate_buffer(8192)
		do return end
	end
	do
		local needed = self.pointer + sz
		local csz = _g.jk.lang.Buffer:getSize(self.buffer)
		if csz >= needed then
			do return end
		end
		do
			local nsz = csz
			while nsz < needed do
				nsz = nsz + 1024
			end
			self.buffer = _g.jk.lang.Buffer:resize(self.buffer, nsz)
		end
	end
end

function jk.lang.BufferBuilder:getSize()
	do return self.pointer end
end

function jk.lang.BufferBuilder:appendInteger(value)
	do self:allocate(self.pointer + 1) end
	do _g.jk.lang.Buffer:setByte(self.buffer, self.pointer, value) end
	do self.pointer = self.pointer + 1 end
end

function jk.lang.BufferBuilder:appendBuffer(sbuffer)
	do self:appendSubBuffer(sbuffer, 0, _g.jk.lang.Buffer:getSize(sbuffer)) end
end

function jk.lang.BufferBuilder:appendSubBuffer(sbuffer, offset, size)
	if not (sbuffer ~= nil) then
		do return end
	end
	if not (offset >= 0) then
		do return end
	end
	if not (size >= 0) then
		do return end
	end
	do self:allocate(self.pointer + size) end
	do _g.jk.lang.Buffer:copyFrom(self.buffer, sbuffer, offset, self.pointer, size) end
	self.pointer = self.pointer + size
end

function jk.lang.BufferBuilder:toBuffer()
	do return _g.jk.lang.Buffer:getSubBuffer(self.buffer, 0, self.pointer, false) end
end
jk = jk or {}

jk.os = jk.os or {}

jk.os.OS = {}
jk.os.OS.__index = jk.os.OS
_vm:set_metatable(jk.os.OS, {})

jk.os.OS.isWindowsFlag = nil
jk.os.OS.isLinuxFlag = nil
jk.os.OS.isMacOSFlag = nil
jk.os.OS.isAndroidFlag = nil
jk.os.OS.isIOSFlag = nil

function jk.os.OS._create()
	local v = _vm:set_metatable({}, jk.os.OS)
	return v
end

function jk.os.OS:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.os.OS'
	self['_isType.jk.os.OS'] = true
end

function jk.os.OS:_construct0()
	jk.os.OS._init(self)
	return self
end

function jk.os.OS:getCurrentPlatformName()
	do return "Sushi" end
end

function jk.os.OS:is32Bit()
	local cpu = _g.jk.os.OS:getProcessorType()
	if cpu == "x86" or cpu == "arm" then
		do return true end
	end
	do return false end
end

function jk.os.OS:is64Bit()
	local cpu = _g.jk.os.OS:getProcessorType()
	if cpu == "x64" or cpu == "arm64" then
		do return true end
	end
	do return false end
end

function jk.os.OS:getProcessorType()
	do return nil end
end

function jk.os.OS:isWindows()
	if _g.jk.os.OS.isWindowsFlag ~= nil then
		do return _g.jk.os.OS.isWindowsFlag:toBoolean() end
	end
	do
		local v = _g.jk.os.OS:isSystemType("windows")
		_g.jk.os.OS.isWindowsFlag = _g.jk.lang.Boolean:asObject(v)
		do return v end
	end
end

function jk.os.OS:isLinux()
	if _g.jk.os.OS.isLinuxFlag ~= nil then
		do return _g.jk.os.OS.isLinuxFlag:toBoolean() end
	end
	do
		local v = _g.jk.os.OS:isSystemType("linux")
		_g.jk.os.OS.isLinuxFlag = _g.jk.lang.Boolean:asObject(v)
		do return v end
	end
end

function jk.os.OS:isMacOS()
	if _g.jk.os.OS.isMacOSFlag ~= nil then
		do return _g.jk.os.OS.isMacOSFlag:toBoolean() end
	end
	do
		local v = _g.jk.os.OS:isSystemType("macos")
		_g.jk.os.OS.isMacOSFlag = _g.jk.lang.Boolean:asObject(v)
		do return v end
	end
end

function jk.os.OS:isOSX()
	do return _g.jk.os.OS:isMacOS() end
end

function jk.os.OS:isAndroid()
	if _g.jk.os.OS.isAndroidFlag ~= nil then
		do return _g.jk.os.OS.isAndroidFlag:toBoolean() end
	end
	do
		local v = _g.jk.os.OS:isSystemType("android")
		_g.jk.os.OS.isAndroidFlag = _g.jk.lang.Boolean:asObject(v)
		do return v end
	end
end

function jk.os.OS:isIOS()
	if _g.jk.os.OS.isIOSFlag ~= nil then
		do return _g.jk.os.OS.isIOSFlag:toBoolean() end
	end
	do
		local v = _g.jk.os.OS:isSystemType("ios")
		_g.jk.os.OS.isIOSFlag = _g.jk.lang.Boolean:asObject(v)
		do return v end
	end
end

function jk.os.OS:isSystemType(ida)
	local id = ida
	if id == "osx" then
		id = "macos"
	end
	do
		local type = _os:get_system_type()
		do return type == id end
	end
end

function jk.os.OS:isDirectory(path)
	if not _g.jk.lang.String:isNotEmpty(path) then
		do return false end
	end
	_io:write_to_stdout("[jk.os.OS.isDirectory] (OS.sling:386:3): Not implemented" .. "\n")
	do return false end
end

function jk.os.OS:isFile(path)
	if not _g.jk.lang.String:isNotEmpty(path) then
		do return false end
	end
	_io:write_to_stdout("[jk.os.OS.isFile] (OS.sling:424:3): Not implemented" .. "\n")
	do return false end
end
jk = jk or {}

jk.log = jk.log or {}

jk.log.Log = {}
jk.log.Log.__index = jk.log.Log
_vm:set_metatable(jk.log.Log, {})

function jk.log.Log._create()
	local v = _vm:set_metatable({}, jk.log.Log)
	return v
end

function jk.log.Log:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.log.Log'
	self['_isType.jk.log.Log'] = true
end

function jk.log.Log:_construct0()
	jk.log.Log._init(self)
	return self
end

function jk.log.Log:asString(context, object)
	if context ~= nil and (_vm:to_table_with_key(object, '_isType.jk.lang.StringObjectWithDebug') ~= nil) then
		do return object:toStringWithDebug(context:isInDebugMode()) end
	end
	do return _g.jk.lang.String:asString(object) end
end

function jk.log.Log:error(context, message)
	if context ~= nil then
		do context:logError(message) end
	end
end

function jk.log.Log:warning(context, message)
	if context ~= nil then
		do context:logWarning(message) end
	end
end

function jk.log.Log:info(context, message)
	if context ~= nil then
		do context:logInfo(message) end
	end
end

function jk.log.Log:debug(context, message)
	if context ~= nil then
		do context:logDebug(message) end
	end
end

function jk.log.Log:status(context, message)
	if context ~= nil then
		do context:logStatus(message) end
	end
end

jk.log.LoggingContext = {}
jk = jk or {}

jk.io = jk.io or {}

jk.io.Reader = {}

jk.io.LineReader = {}

jk.io.SeekableReader = {}

jk.io.CharacterIteratorForReader = _g.jk.lang.CharacterDecoder._create()
jk.io.CharacterIteratorForReader.__index = jk.io.CharacterIteratorForReader
_vm:set_metatable(jk.io.CharacterIteratorForReader, {
	__index = _g.jk.lang.CharacterDecoder
})

function jk.io.CharacterIteratorForReader._create()
	local v = _vm:set_metatable({}, jk.io.CharacterIteratorForReader)
	return v
end

function jk.io.CharacterIteratorForReader:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.io.CharacterIteratorForReader'
	self['_isType.jk.io.CharacterIteratorForReader'] = true
	self.reader = nil
	self.buffer = nil
	self.bufferStart = -1
	self.bufferSize = 0
	self.bufferDataSize = 0
	self.currentPos = -1
	self.readPos = 0
end

function jk.io.CharacterIteratorForReader:_construct0()
	jk.io.CharacterIteratorForReader._init(self)
	do _g.jk.lang.CharacterDecoder._construct0(self) end
	return self
end

function jk.io.CharacterIteratorForReader:forReader(reader)
	do return _g.jk.io.CharacterIteratorForReader._construct1(_g.jk.io.CharacterIteratorForReader._create(), reader) end
end

function jk.io.CharacterIteratorForReader:forReaderWithBufferSize(reader, bufferSize)
	do return _g.jk.io.CharacterIteratorForReader._construct2(_g.jk.io.CharacterIteratorForReader._create(), reader, bufferSize) end
end

function jk.io.CharacterIteratorForReader:_construct1(reader)
	jk.io.CharacterIteratorForReader._init(self)
	do _g.jk.lang.CharacterDecoder._construct0(self) end
	self.reader = reader
	self.buffer = _util:allocate_buffer(1024)
	self.bufferSize = 1024
	return self
end

function jk.io.CharacterIteratorForReader:_construct2(reader, bufferSize)
	jk.io.CharacterIteratorForReader._init(self)
	do _g.jk.lang.CharacterDecoder._construct0(self) end
	self.reader = reader
	self.buffer = _util:allocate_buffer(bufferSize)
	self.bufferSize = bufferSize
	return self
end

function jk.io.CharacterIteratorForReader:makeDataAvailable(n)
	if n >= self.bufferStart and n < self.bufferStart + self.bufferDataSize then
		do return true end
	end
	if (_vm:to_table_with_key(self.reader, '_isType.jk.io.SeekableReader') ~= nil) then
		local rs = self.reader
		local block = _util:convert_to_integer(n / self.bufferSize)
		local blockPos = block * self.bufferSize
		if self.readPos ~= blockPos then
			if not rs:setCurrentPosition(blockPos) then
				do return false end
			end
			self.readPos = blockPos
		end
	end
	self.bufferDataSize = self.reader:read(self.buffer)
	self.bufferStart = self.readPos
	self.readPos = self.readPos + self.bufferDataSize
	if n >= self.bufferStart and n < self.bufferStart + self.bufferDataSize then
		do return true end
	end
	do return false end
end

function jk.io.CharacterIteratorForReader:moveToPreviousByte()
	if not self:makeDataAvailable(self.currentPos - 1) then
		do return false end
	end
	do self.currentPos = self.currentPos - 1 end
	do return true end
end

function jk.io.CharacterIteratorForReader:moveToNextByte()
	if not self:makeDataAvailable(self.currentPos + 1) then
		do return false end
	end
	do self.currentPos = self.currentPos + 1 end
	do return true end
end

function jk.io.CharacterIteratorForReader:getCurrentByte()
	do return _g.jk.lang.Buffer:getByte(self.buffer, self.currentPos - self.bufferStart) end
end

function jk.io.CharacterIteratorForReader:getCurrentPosition()
	do return self.currentPos end
end

function jk.io.CharacterIteratorForReader:setCurrentPosition(position)
	self.currentPos = position
end

jk.io.Writer = {}

jk.io.PrintReader = {}
jk.io.PrintReader.__index = jk.io.PrintReader
_vm:set_metatable(jk.io.PrintReader, {})

function jk.io.PrintReader._create()
	local v = _vm:set_metatable({}, jk.io.PrintReader)
	return v
end

function jk.io.PrintReader:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.io.PrintReader'
	self['_isType.jk.io.PrintReader'] = true
	self['_isType.jk.io.Reader'] = true
	self['_isType.jk.io.LineReader'] = true
	self['_isType.jk.lang.Closable'] = true
	self.reader = nil
	self.iterator = nil
end

function jk.io.PrintReader:_construct0()
	jk.io.PrintReader._init(self)
	return self
end

function jk.io.PrintReader:forReader(reader)
	if not (reader ~= nil) then
		do return nil end
	end
	if (_vm:to_table_with_key(reader, '_isType.jk.io.PrintReader') ~= nil) then
		do return reader end
	end
	do
		local v = _g.jk.io.PrintReader._construct0(_g.jk.io.PrintReader._create())
		do v:setReader(reader, nil) end
		do return v end
	end
end

function jk.io.PrintReader:forReaderAndEncoding(reader, encoding)
	if not (reader ~= nil) then
		do return nil end
	end
	if (_vm:to_table_with_key(reader, '_isType.jk.io.PrintReader') ~= nil) then
		do return reader end
	end
	do
		local v = _g.jk.io.PrintReader._construct0(_g.jk.io.PrintReader._create())
		do v:setReader(reader, encoding) end
		do return v end
	end
end

function jk.io.PrintReader:setReader(reader, encoding)
	self.reader = reader
	if reader == nil then
		self.iterator = nil
	else
		self.iterator = _g.jk.io.CharacterIteratorForReader:forReader(reader)
		if encoding ~= nil then
			do self.iterator:setEncoding(encoding) end
		end
	end
end

function jk.io.PrintReader:readLine()
	if not (self.iterator ~= nil) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		while true do
			local c = self.iterator:getNextChar()
			if _g.jk.lang.Character:isEOF(c) then
				if sb:count() < 1 then
					do return nil end
				end
				do break end
			end
			if c == 13 then
				goto _continue1
			end
			if c == 10 then
				do break end
			end
			do sb:appendCharacter(c) end
			::_continue1::
		end
		if sb:count() < 1 then
			do return "" end
		end
		do return sb:toString() end
	end
end

function jk.io.PrintReader:readAll()
	if not (self.iterator ~= nil) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		while true do
			local c = self.iterator:getNextChar()
			if _g.jk.lang.Character:isEOF(c) then
				do break end
			end
			do sb:appendCharacter(c) end
		end
		if sb:count() < 1 then
			do return nil end
		end
		do return sb:toString() end
	end
end

function jk.io.PrintReader:hasEnded()
	if not (self.iterator ~= nil) then
		do return true end
	end
	do return self.iterator:hasEnded() end
end

function jk.io.PrintReader:read(buffer)
	if self.reader == nil then
		do return -1 end
	end
	do return self.reader:read(buffer) end
end

function jk.io.PrintReader:close()
	local rc = _vm:to_table_with_key(self.reader, '_isType.jk.lang.Closable')
	if rc ~= nil then
		do rc:close() end
	end
end

jk.io.PrintWriter = {}

jk.io.FileDescriptor = {}

jk.io.StaticFileDescriptor = {}
jk.io.StaticFileDescriptor.__index = jk.io.StaticFileDescriptor
_vm:set_metatable(jk.io.StaticFileDescriptor, {})

function jk.io.StaticFileDescriptor._create()
	local v = _vm:set_metatable({}, jk.io.StaticFileDescriptor)
	return v
end

function jk.io.StaticFileDescriptor:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.io.StaticFileDescriptor'
	self['_isType.jk.io.StaticFileDescriptor'] = true
	self['_isType.jk.io.FileDescriptor'] = true
	self.fileDescriptor = 0
end

function jk.io.StaticFileDescriptor:_construct0()
	jk.io.StaticFileDescriptor._init(self)
	return self
end

function jk.io.StaticFileDescriptor:forFileDescriptor(fd)
	do return _g.jk.io.StaticFileDescriptor._construct0(_g.jk.io.StaticFileDescriptor._create()):setFileDescriptor(fd) end
end

function jk.io.StaticFileDescriptor:getFileDescriptor()
	do return self.fileDescriptor end
end

function jk.io.StaticFileDescriptor:setFileDescriptor(v)
	self.fileDescriptor = v
	do return self end
end

jk.io.FlushableWriter = {}

jk.io.FileDescriptorReader = {}
jk.io.FileDescriptorReader.__index = jk.io.FileDescriptorReader
_vm:set_metatable(jk.io.FileDescriptorReader, {})

function jk.io.FileDescriptorReader._create()
	local v = _vm:set_metatable({}, jk.io.FileDescriptorReader)
	return v
end

function jk.io.FileDescriptorReader:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.io.FileDescriptorReader'
	self['_isType.jk.io.FileDescriptorReader'] = true
	self['_isType.jk.io.Reader'] = true
	self['_isType.jk.lang.Closable'] = true
	self['_isType.jk.io.FileDescriptor'] = true
	self.fd = -1
	self._destructWrapper = _vm:create_destructor(function() self:_destruct() end)
end

function jk.io.FileDescriptorReader:_construct0()
	jk.io.FileDescriptorReader._init(self)
	return self
end

function jk.io.FileDescriptorReader:forFileDescriptor(fd)
	local v = _g.jk.io.FileDescriptorReader._construct0(_g.jk.io.FileDescriptorReader._create())
	do v:setFd(fd) end
	do return v end
end

function jk.io.FileDescriptorReader:_destruct()
	do self:close() end
end

function jk.io.FileDescriptorReader:getFileDescriptor()
	do return self.fd end
end

function jk.io.FileDescriptorReader:read(buffer)
	local v = -1
	local handle = self.fd
	if handle >= 0 then
		do v = _io:read_from_handle(handle, buffer) end
	end
	do return v end
end

function jk.io.FileDescriptorReader:close()
	local handle = self.fd
	if handle >= 0 then
		do _io:close_handle(handle) end
		self.fd = -1
	end
end

function jk.io.FileDescriptorReader:getFd()
	do return self.fd end
end

function jk.io.FileDescriptorReader:setFd(v)
	self.fd = v
	do return self end
end

jk.io.SizedReader = {}

jk.io.DataStream = {}

jk.io.SeekableWriter = {}

jk.io.BinaryReader = {}
jk.io.BinaryReader.__index = jk.io.BinaryReader
_vm:set_metatable(jk.io.BinaryReader, {})

function jk.io.BinaryReader._create()
	local v = _vm:set_metatable({}, jk.io.BinaryReader)
	return v
end

function jk.io.BinaryReader:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.io.BinaryReader'
	self['_isType.jk.io.BinaryReader'] = true
	self['_isType.jk.lang.Closable'] = true
	self.reader = nil
	self.buffer1 = nil
	self.buffer2 = nil
	self.buffer4 = nil
end

function jk.io.BinaryReader:_construct0()
	jk.io.BinaryReader._init(self)
	return self
end

function jk.io.BinaryReader:forReader(reader)
	local v = _g.jk.io.BinaryReader._construct0(_g.jk.io.BinaryReader._create())
	do v:setReader(reader) end
	do return v end
end

function jk.io.BinaryReader:isOK()
	if not (self.reader ~= nil) then
		do return false end
	end
	do return true end
end

function jk.io.BinaryReader:close()
	local rc = _vm:to_table_with_key(self.reader, '_isType.jk.lang.Closable')
	if rc ~= nil then
		do rc:close() end
	end
	self.reader = nil
end

function jk.io.BinaryReader:seek(position)
	local sr = _vm:to_table_with_key(self.reader, '_isType.jk.io.SeekableReader')
	if not (sr ~= nil) then
		do return false end
	end
	do return sr:setCurrentPosition(position) end
end

function jk.io.BinaryReader:read1()
	if not (self.reader ~= nil) then
		do return nil end
	end
	if not (self.buffer1 ~= nil) then
		self.buffer1 = _util:allocate_buffer(1)
	end
	do
		local r = self.reader:read(self.buffer1)
		if not (r == 1) then
			do self:close() end
			do return nil end
		end
		do return self.buffer1 end
	end
end

function jk.io.BinaryReader:read2()
	if not (self.reader ~= nil) then
		do return nil end
	end
	if not (self.buffer2 ~= nil) then
		self.buffer2 = _util:allocate_buffer(2)
	end
	do
		local r = self.reader:read(self.buffer2)
		if not (r == 2) then
			do self:close() end
			do return nil end
		end
		do return self.buffer2 end
	end
end

function jk.io.BinaryReader:read4()
	if not (self.reader ~= nil) then
		do return nil end
	end
	if not (self.buffer4 ~= nil) then
		self.buffer4 = _util:allocate_buffer(4)
	end
	do
		local r = self.reader:read(self.buffer4)
		if not (r == 4) then
			do self:close() end
			do return nil end
		end
		do return self.buffer4 end
	end
end

function jk.io.BinaryReader:readBuffer(size)
	if not (self.reader ~= nil) then
		do return nil end
	end
	if not (size > 0) then
		do return nil end
	end
	do
		local b = _util:allocate_buffer(size)
		local r = self.reader:read(b)
		if not (r == size) then
			do self:close() end
			do return nil end
		end
		do return b end
	end
end

function jk.io.BinaryReader:readInt8()
	local b = self:read1()
	if not (b ~= nil) then
		do return 0 end
	end
	do return _g.jk.lang.Buffer:getInt8(b, 0) end
end

function jk.io.BinaryReader:readInt16LE()
	local b = self:read2()
	if not (b ~= nil) then
		do return 0 end
	end
	do return _g.jk.lang.Buffer:getInt16LE(b, 0) end
end

function jk.io.BinaryReader:readInt16BE()
	local b = self:read2()
	if not (b ~= nil) then
		do return 0 end
	end
	do return _g.jk.lang.Buffer:getInt16BE(b, 0) end
end

function jk.io.BinaryReader:readInt32LE()
	local b = self:read4()
	if not (b ~= nil) then
		do return 0 end
	end
	do return _g.jk.lang.Buffer:getInt32LE(b, 0) end
end

function jk.io.BinaryReader:readInt32BE()
	local b = self:read4()
	if not (b ~= nil) then
		do return 0 end
	end
	do return _g.jk.lang.Buffer:getInt32BE(b, 0) end
end

function jk.io.BinaryReader:getReader()
	do return self.reader end
end

function jk.io.BinaryReader:setReader(v)
	self.reader = v
	do return self end
end

jk.io.ByteReader = {}

jk.io.FileDescriptorWriter = {}
jk.io.FileDescriptorWriter.__index = jk.io.FileDescriptorWriter
_vm:set_metatable(jk.io.FileDescriptorWriter, {})

function jk.io.FileDescriptorWriter._create()
	local v = _vm:set_metatable({}, jk.io.FileDescriptorWriter)
	return v
end

function jk.io.FileDescriptorWriter:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.io.FileDescriptorWriter'
	self['_isType.jk.io.FileDescriptorWriter'] = true
	self['_isType.jk.io.Writer'] = true
	self['_isType.jk.lang.Closable'] = true
	self['_isType.jk.io.FileDescriptor'] = true
	self.fd = -1
	self.owned = true
	self._destructWrapper = _vm:create_destructor(function() self:_destruct() end)
end

function jk.io.FileDescriptorWriter:_construct0()
	jk.io.FileDescriptorWriter._init(self)
	return self
end

function jk.io.FileDescriptorWriter:forFileDescriptor(fd)
	local v = _g.jk.io.FileDescriptorWriter._construct0(_g.jk.io.FileDescriptorWriter._create())
	do v:setFd(fd) end
	do return v end
end

function jk.io.FileDescriptorWriter:forUnownedFileDescriptor(fd)
	local v = _g.jk.io.FileDescriptorWriter._construct0(_g.jk.io.FileDescriptorWriter._create())
	do v:setFd(fd) end
	do v:setOwned(false) end
	do return v end
end

function jk.io.FileDescriptorWriter:_destruct()
	do self:close() end
end

function jk.io.FileDescriptorWriter:getFileDescriptor()
	do return self.fd end
end

function jk.io.FileDescriptorWriter:write(buf, size)
	local v = -1
	local handle = self.fd
	if handle >= 0 then
		do v = _io:write_to_handle(handle, buf, size) end
	end
	do return v end
end

function jk.io.FileDescriptorWriter:close()
	if not self.owned then
		do return end
	end
	do
		local handle = self.fd
		if handle >= 0 then
			do _io:close_handle(handle) end
			self.fd = -1
		end
	end
end

function jk.io.FileDescriptorWriter:getFd()
	do return self.fd end
end

function jk.io.FileDescriptorWriter:setFd(v)
	self.fd = v
	do return self end
end

function jk.io.FileDescriptorWriter:getOwned()
	do return self.owned end
end

function jk.io.FileDescriptorWriter:setOwned(v)
	self.owned = v
	do return self end
end

jk.io.StringLineReader = {}
jk.io.StringLineReader.__index = jk.io.StringLineReader
_vm:set_metatable(jk.io.StringLineReader, {})

function jk.io.StringLineReader._create()
	local v = _vm:set_metatable({}, jk.io.StringLineReader)
	return v
end

function jk.io.StringLineReader:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.io.StringLineReader'
	self['_isType.jk.io.StringLineReader'] = true
	self['_isType.jk.io.LineReader'] = true
	self.iterator = nil
end

function jk.io.StringLineReader:_construct0()
	jk.io.StringLineReader._init(self)
	return self
end

function jk.io.StringLineReader:_construct1(str)
	jk.io.StringLineReader._init(self)
	self.iterator = _g.jk.lang.CharacterIteratorForString:forString(str)
	return self
end

function jk.io.StringLineReader:readLine()
	if not (self.iterator ~= nil) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		while true do
			local c = self.iterator:getNextChar()
			if c < 1 then
				if sb:count() < 1 then
					do return nil end
				end
				do break end
			end
			if c == 13 then
				goto _continue2
			end
			if c == 10 then
				do break end
			end
			do sb:appendCharacter(c) end
			::_continue2::
		end
		if sb:count() < 1 then
			do return "" end
		end
		do return sb:toString() end
	end
end

jk.io.PrintWriterWrapper = {}
jk.io.PrintWriterWrapper.__index = jk.io.PrintWriterWrapper
_vm:set_metatable(jk.io.PrintWriterWrapper, {})

function jk.io.PrintWriterWrapper._create()
	local v = _vm:set_metatable({}, jk.io.PrintWriterWrapper)
	return v
end

function jk.io.PrintWriterWrapper:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.io.PrintWriterWrapper'
	self['_isType.jk.io.PrintWriterWrapper'] = true
	self['_isType.jk.io.Writer'] = true
	self['_isType.jk.io.PrintWriter'] = true
	self['_isType.jk.lang.Closable'] = true
	self['_isType.jk.io.FlushableWriter'] = true
	self.writer = nil
end

function jk.io.PrintWriterWrapper:_construct0()
	jk.io.PrintWriterWrapper._init(self)
	return self
end

function jk.io.PrintWriterWrapper:forWriter(writer)
	if writer == nil then
		do return nil end
	end
	if (_vm:to_table_with_key(writer, '_isType.jk.io.PrintWriter') ~= nil) then
		do return writer end
	end
	do
		local v = _g.jk.io.PrintWriterWrapper._construct0(_g.jk.io.PrintWriterWrapper._create())
		do v:setWriter(writer) end
		do return v end
	end
end

function jk.io.PrintWriterWrapper:closeWriter(writer)
	local wc = _vm:to_table_with_key(writer, '_isType.jk.lang.Closable')
	if not (wc ~= nil) then
		do return nil end
	end
	do wc:close() end
	do return nil end
end

function jk.io.PrintWriterWrapper:print(str)
	if str == nil then
		do return false end
	end
	do
		local buffer = _g.jk.lang.String:toUTF8Buffer(str)
		if buffer == nil then
			do return false end
		end
		do
			local sz = _g.jk.lang.Buffer:getSize(buffer)
			if self.writer:write(buffer, -1) ~= sz then
				do return false end
			end
			do return true end
		end
	end
end

function jk.io.PrintWriterWrapper:println(str)
	do return self:print(_g.jk.lang.String:safeString(str) .. "\n") end
end

function jk.io.PrintWriterWrapper:writeWholeBuffer(buf)
	do return self:write(buf, -1) end
end

function jk.io.PrintWriterWrapper:write(buf, size)
	if self.writer == nil then
		do return -1 end
	end
	do return self.writer:write(buf, size) end
end

function jk.io.PrintWriterWrapper:close()
	local cw = _vm:to_table_with_key(self.writer, '_isType.jk.lang.Closable')
	if cw ~= nil then
		do cw:close() end
	end
end

function jk.io.PrintWriterWrapper:flush()
	local cw = _vm:to_table_with_key(self.writer, '_isType.jk.io.FlushableWriter')
	if cw ~= nil then
		do cw:flush() end
	end
end

function jk.io.PrintWriterWrapper:getWriter()
	do return self.writer end
end

function jk.io.PrintWriterWrapper:setWriter(v)
	self.writer = v
	do return self end
end

jk.io.DataStreamSource = {}

jk.io.BufferWriter = {}
jk.io.BufferWriter.__index = jk.io.BufferWriter
_vm:set_metatable(jk.io.BufferWriter, {})

function jk.io.BufferWriter._create()
	local v = _vm:set_metatable({}, jk.io.BufferWriter)
	return v
end

function jk.io.BufferWriter:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.io.BufferWriter'
	self['_isType.jk.io.BufferWriter'] = true
	self['_isType.jk.io.Writer'] = true
	self.buffer = nil
	self.pos = 0
end

function jk.io.BufferWriter:_construct0()
	jk.io.BufferWriter._init(self)
	return self
end

function jk.io.BufferWriter:forBuffer(buf)
	local v = _g.jk.io.BufferWriter._construct0(_g.jk.io.BufferWriter._create())
	v.buffer = buf
	do return v end
end

function jk.io.BufferWriter:getBufferSize()
	do return _g.jk.lang.Buffer:getSize(self.buffer) end
end

function jk.io.BufferWriter:getBufferPos()
	do return 0 end
end

function jk.io.BufferWriter:getBuffer()
	do return self.buffer end
end

function jk.io.BufferWriter:write(src, ssize)
	if src == nil then
		do return 0 end
	end
	do
		local size = ssize
		if size < 0 then
			size = _g.jk.lang.Buffer:getSize(src)
		end
		if size < 1 then
			do return 0 end
		end
		if self.buffer == nil then
			self.buffer = _util:allocate_buffer(size)
			if self.buffer == nil then
				do return 0 end
			end
			do _g.jk.lang.Buffer:copyFrom(self.buffer, src, 0, 0, size) end
			self.pos = size
		elseif self.pos + size <= _g.jk.lang.Buffer:getSize(self.buffer) then
			do _g.jk.lang.Buffer:copyFrom(self.buffer, src, 0, self.pos, size) end
			self.pos = self.pos + size
		else
			local nb = _g.jk.lang.Buffer:resize(self.buffer, self.pos + size)
			if nb == nil then
				do return 0 end
			end
			self.buffer = nb
			do _g.jk.lang.Buffer:copyFrom(self.buffer, src, 0, self.pos, size) end
			self.pos = self.pos + size
		end
		do return size end
	end
end

jk.io.BufferReader = {}
jk.io.BufferReader.__index = jk.io.BufferReader
_vm:set_metatable(jk.io.BufferReader, {})

function jk.io.BufferReader._create()
	local v = _vm:set_metatable({}, jk.io.BufferReader)
	return v
end

function jk.io.BufferReader:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.io.BufferReader'
	self['_isType.jk.io.BufferReader'] = true
	self['_isType.jk.io.Reader'] = true
	self['_isType.jk.io.SizedReader'] = true
	self['_isType.jk.io.SeekableReader'] = true
	self.buffer = nil
	self.pos = 0
end

function jk.io.BufferReader:_construct0()
	jk.io.BufferReader._init(self)
	return self
end

function jk.io.BufferReader:readFrom(reader)
	if not (reader ~= nil) then
		do return nil end
	end
	do
		local v = nil
		local tmp = _util:allocate_buffer(1024)
		while true do
			local r = reader:read(tmp)
			if r < 1 then
				do break end
			end
			v = _g.jk.lang.Buffer:append(v, tmp, r)
			if v == nil then
				do break end
			end
		end
		do return v end
	end
end

function jk.io.BufferReader:forBuffer(buf)
	do return _g.jk.io.BufferReader._construct0(_g.jk.io.BufferReader._create()):setBuffer(buf) end
end

function jk.io.BufferReader:setCurrentPosition(n)
	self.pos = n
	do return true end
end

function jk.io.BufferReader:getCurrentPosition()
	do return self.pos end
end

function jk.io.BufferReader:getBuffer()
	do return self.buffer end
end

function jk.io.BufferReader:setBuffer(buf)
	self.buffer = buf
	self.pos = 0
	do return self end
end

function jk.io.BufferReader:rewind()
	self.pos = 0
end

function jk.io.BufferReader:getSize()
	if self.buffer == nil then
		do return 0 end
	end
	do return #self.buffer end
end

function jk.io.BufferReader:read(buf)
	if buf == nil or self.buffer == nil then
		do return 0 end
	end
	do
		local buffersz = #self.buffer
		if self.pos >= buffersz then
			do return 0 end
		end
		do
			local size = #buf
			if size > buffersz - self.pos then
				size = buffersz - self.pos
			end
			do _g.jk.lang.Buffer:copyFrom(buf, self.buffer, self.pos, 0, size) end
			self.pos = self.pos + size
			do return size end
		end
	end
end

function jk.io.BufferReader:getPos()
	do return self.pos end
end

function jk.io.BufferReader:setPos(v)
	self.pos = v
	do return self end
end
jk = jk or {}

jk.time = jk.time or {}

jk.time.SystemClock = {}
jk.time.SystemClock.__index = jk.time.SystemClock
_vm:set_metatable(jk.time.SystemClock, {})

function jk.time.SystemClock._create()
	local v = _vm:set_metatable({}, jk.time.SystemClock)
	return v
end

function jk.time.SystemClock:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.time.SystemClock'
	self['_isType.jk.time.SystemClock'] = true
end

function jk.time.SystemClock:_construct0()
	jk.time.SystemClock._init(self)
	return self
end

function jk.time.SystemClock:asDateTimeUTC()
	do return _g.jk.lang.DateTime:forSeconds(_g.jk.time.SystemClock:asUTCSeconds()) end
end

function jk.time.SystemClock:asDateTimeLocal()
	local v = _g.jk.lang.DateTime:forSeconds(_g.jk.time.SystemClock:asSeconds())
	do v:setTimezoneOffset(_g.jk.time.SystemClock:getTimezoneOffsetAsSeconds()) end
	do return v end
end

function jk.time.SystemClock:getTimezoneOffsetAsSeconds()
	do return _os:get_system_timezone_seconds() end
end

function jk.time.SystemClock:asUTCSeconds()
	do return _g.jk.time.SystemClock:asSeconds() + _g.jk.time.SystemClock:getTimezoneOffsetAsSeconds() end
end

function jk.time.SystemClock:asSeconds()
	do return _os:get_system_time_seconds() end
end

function jk.time.SystemClock:asTimeValue()
	local v = _g.jk.lang.TimeValue._construct0(_g.jk.lang.TimeValue._create())
	do _g.jk.time.SystemClock:update(v) end
	do return v end
end

function jk.time.SystemClock:update(v)
	if not (v ~= nil) then
		do return end
	end
	do
		local millis = _os:get_system_time_milliseconds()
		local secs = _util:convert_to_integer(millis / 1000)
		local micros = (millis - secs * 1000) * 1000
		do v:setSeconds(secs) end
		do v:setMicroSeconds(micros) end
	end
end
jk = jk or {}

jk.fs = jk.fs or {}

jk.fs.FileWriter = {}

jk.fs.FileFinder = {}
jk.fs.FileFinder.__index = jk.fs.FileFinder
_vm:set_metatable(jk.fs.FileFinder, {})

function jk.fs.FileFinder._create()
	local v = _vm:set_metatable({}, jk.fs.FileFinder)
	return v
end

function jk.fs.FileFinder:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.fs.FileFinder'
	self['_isType.jk.fs.FileFinder'] = true
	self['_isType.jk.lang.Iterator'] = true
	self.root = nil
	self.patterns = nil
	self.excludePatterns = nil
	self.stack = nil
	self.includeMatchingDirectories = false
	self.includeDirectories = false
end

function jk.fs.FileFinder:forRoot(root)
	do return _g.jk.fs.FileFinder._construct0(_g.jk.fs.FileFinder._create()):setRoot(root) end
end

jk.fs.FileFinder.Pattern = {}
jk.fs.FileFinder.Pattern.__index = jk.fs.FileFinder.Pattern
_vm:set_metatable(jk.fs.FileFinder.Pattern, {})

function jk.fs.FileFinder.Pattern._create()
	local v = _vm:set_metatable({}, jk.fs.FileFinder.Pattern)
	return v
end

function jk.fs.FileFinder.Pattern:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.fs.FileFinder.Pattern'
	self['_isType.jk.fs.FileFinder.Pattern'] = true
	self.pattern = nil
	self.suffix = nil
	self.prefix = nil
end

function jk.fs.FileFinder.Pattern:_construct0()
	jk.fs.FileFinder.Pattern._init(self)
	return self
end

function jk.fs.FileFinder.Pattern:setPattern(pattern)
	self.pattern = pattern
	if pattern ~= nil then
		if _g.jk.lang.String:startsWith(pattern, "*", 0) then
			self.suffix = _g.jk.lang.String:getEndOfString(pattern, 1)
		end
		if _g.jk.lang.String:endsWith(pattern, "*") then
			self.prefix = _g.jk.lang.String:getSubString(pattern, 0, _g.jk.lang.String:getLength(pattern) - 1)
		end
	end
	do return self end
end

function jk.fs.FileFinder.Pattern:match(check)
	if not (check ~= nil) then
		do return false end
	end
	if self.pattern == check then
		do return true end
	end
	if self.suffix ~= nil and _g.jk.lang.String:endsWith(check, self.suffix) then
		do return true end
	end
	if self.prefix ~= nil and _g.jk.lang.String:startsWith(check, self.prefix, 0) then
		do return true end
	end
	do return false end
end

function jk.fs.FileFinder:_construct0()
	jk.fs.FileFinder._init(self)
	self.patterns = {}
	self.excludePatterns = {}
	return self
end

function jk.fs.FileFinder:setRoot(root)
	self.root = root
	self.stack = nil
	do return self end
end

function jk.fs.FileFinder:addPattern(pattern)
	do _g.jk.lang.Vector:append(self.patterns, _g.jk.fs.FileFinder.Pattern._construct0(_g.jk.fs.FileFinder.Pattern._create()):setPattern(pattern)) end
	do return self end
end

function jk.fs.FileFinder:addExcludePattern(pattern)
	do _g.jk.lang.Vector:append(self.excludePatterns, _g.jk.fs.FileFinder.Pattern._construct0(_g.jk.fs.FileFinder.Pattern._create()):setPattern(pattern)) end
	do return self end
end

function jk.fs.FileFinder:matchPattern(file)
	if not (file ~= nil) then
		do return false end
	end
	if _g.jk.lang.Vector:getSize(self.patterns) < 1 then
		do return true end
	end
	do
		local filename = file:getBasename()
		if self.patterns ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(self.patterns)
			do
				n = 0
				while n < m do
					local pattern = self.patterns[n + 1]
					if pattern ~= nil then
						if pattern:match(filename) then
							do return true end
						end
					end
					do n = n + 1 end
				end
			end
		end
		do return false end
	end
end

function jk.fs.FileFinder:matchExcludePattern(file)
	if not (file ~= nil) then
		do return false end
	end
	if _g.jk.lang.Vector:getSize(self.excludePatterns) < 1 then
		do return false end
	end
	do
		local filename = file:getBasename()
		if self.excludePatterns ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(self.excludePatterns)
			do
				n = 0
				while n < m do
					local pattern = self.excludePatterns[n + 1]
					if pattern ~= nil then
						if pattern:match(filename) then
							do return true end
						end
					end
					do n = n + 1 end
				end
			end
		end
		do return false end
	end
end

function jk.fs.FileFinder:next()
	while true do
		if not (self.stack ~= nil) then
			if not (self.root ~= nil) then
				do break end
			end
			do
				local es = self.root:entries()
				self.root = nil
				if not (es ~= nil) then
					do break end
				end
				self.stack = _g.jk.lang.Stack._construct0(_g.jk.lang.Stack._create())
				do self.stack:push(es) end
			end
		end
		do
			local entries = self.stack:peek()
			if not (entries ~= nil) then
				self.stack = nil
				do break end
			end
			do
				local e = entries:next()
				if not (e ~= nil) then
					do self.stack:pop() end
				elseif self:matchExcludePattern(e) then
				elseif e:isFile() then
					if self:matchPattern(e) then
						do return e end
					end
				elseif self.includeMatchingDirectories and e:isDirectory() and self:matchPattern(e) then
					do return e end
				elseif e:isDirectory() and e:isLink() == false then
					local ees = e:entries()
					if ees ~= nil then
						do self.stack:push(ees) end
					end
					if self.includeDirectories then
						do return e end
					end
				end
			end
		end
	end
	do return nil end
end

function jk.fs.FileFinder:hasNext()
	if not (self.stack ~= nil) then
		do return false end
	end
	do
		local it = self.stack:peek()
		if not (it ~= nil) then
			do return false end
		end
		do return it:hasNext() end
	end
end

function jk.fs.FileFinder:getIncludeMatchingDirectories()
	do return self.includeMatchingDirectories end
end

function jk.fs.FileFinder:setIncludeMatchingDirectories(v)
	self.includeMatchingDirectories = v
	do return self end
end

function jk.fs.FileFinder:getIncludeDirectories()
	do return self.includeDirectories end
end

function jk.fs.FileFinder:setIncludeDirectories(v)
	self.includeDirectories = v
	do return self end
end

jk.fs.FileKit = {}
jk.fs.FileKit.__index = jk.fs.FileKit
_vm:set_metatable(jk.fs.FileKit, {})

function jk.fs.FileKit._create()
	local v = _vm:set_metatable({}, jk.fs.FileKit)
	return v
end

function jk.fs.FileKit:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.fs.FileKit'
	self['_isType.jk.fs.FileKit'] = true
	self.ctx = nil
end

function jk.fs.FileKit:_construct0()
	jk.fs.FileKit._init(self)
	return self
end

function jk.fs.FileKit:_construct1(ctx)
	jk.fs.FileKit._init(self)
	self.ctx = ctx
	return self
end

function jk.fs.FileKit:asFile(file)
	local fo = _g.jk.fs.File:asFile(file)
	if not (fo ~= nil) then
		do _g.jk.lang.Error:throw("invalidParameter", _g.jk.lang.String:asString(file)) end
	end
	do return fo end
end

function jk.fs.FileKit:copy(src, dst)
	local srcf = self:asFile(src)
	local dstf = self:asFile(dst)
	if dstf:isDirectory() then
		dstf = dstf:entry(srcf:getBasename())
	end
	if not srcf:copyFileOrDirectoryTo(dstf) then
		do _g.jk.lang.Error:throw("failedToCopy", srcf:getPath()) end
	end
	do return dstf end
end

function jk.fs.FileKit:remove(file)
	local fo = self:asFile(file)
	if not fo:removeRecursive() then
		do _g.jk.lang.Error:throw("failedToRemove", fo:getPath()) end
	end
end

function jk.fs.FileKit:readAsBuffer(file)
	local fo = self:asFile(file)
	local v = fo:getContentsBuffer()
	if not (v ~= nil) then
		do _g.jk.lang.Error:throw("failedToRead", fo:getPath()) end
	end
	do return v end
end

function jk.fs.FileKit:readAsString(file)
	local fo = self:asFile(file)
	local v = fo:getContentsUTF8()
	if not (v ~= nil) then
		do _g.jk.lang.Error:throw("failedToRead", fo:getPath()) end
	end
	do return v end
end

function jk.fs.FileKit:writeBuffer(file, data)
	local fo = self:asFile(file)
	if not fo:setContentsBuffer(data) then
		do _g.jk.lang.Error:throw("failedToWrite", fo:getPath()) end
	end
end

function jk.fs.FileKit:writeString(file, data)
	local fo = self:asFile(file)
	if not fo:setContentsUTF8(_g.jk.lang.String:asString(data)) then
		do _g.jk.lang.Error:throw("failedToWrite", fo:getPath()) end
	end
end

jk.fs.PathInfo = {}
jk.fs.PathInfo.__index = jk.fs.PathInfo
_vm:set_metatable(jk.fs.PathInfo, {})

function jk.fs.PathInfo._create()
	local v = _vm:set_metatable({}, jk.fs.PathInfo)
	return v
end

function jk.fs.PathInfo:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.fs.PathInfo'
	self['_isType.jk.fs.PathInfo'] = true
end

function jk.fs.PathInfo:_construct0()
	jk.fs.PathInfo._init(self)
	return self
end

function jk.fs.PathInfo:getPathSeparator()
	if _g.jk.os.OS:isWindows() then
		do return 92 end
	end
	do return 47 end
end

function jk.fs.PathInfo:isAbsolutePath(path)
	if not (path ~= nil) then
		do return false end
	end
	do
		local c0 = _g.jk.lang.String:getChar(path, 0)
		if c0 == 47 then
			do return true end
		end
		if _g.jk.os.OS:isWindows() then
			if c0 == 92 then
				do return true end
			end
			if _g.jk.lang.Character:isAlpha(c0) and _g.jk.lang.String:getChar(path, 1) == 58 then
				local d = _g.jk.lang.String:getChar(path, 2)
				if d == 92 or d == 47 then
					do return true end
				end
			end
		end
		do return false end
	end
end

jk.fs.File = {}
jk.fs.File.__index = jk.fs.File
_vm:set_metatable(jk.fs.File, {})

function jk.fs.File._create()
	local v = _vm:set_metatable({}, jk.fs.File)
	return v
end

function jk.fs.File:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.fs.File'
	self['_isType.jk.fs.File'] = true
	self['_isType.jk.lang.StringObject'] = true
	self.lastErrorDescription = nil
end

function jk.fs.File:_construct0()
	jk.fs.File._init(self)
	return self
end

function jk.fs.File:asFile(o)
	if not (o ~= nil) then
		do return nil end
	end
	if (_vm:to_table_with_key(o, '_isType.jk.fs.File') ~= nil) then
		do return o end
	end
	do
		local ss = _g.jk.lang.String:asString(o)
		if ss ~= nil then
			do return _g.jk.fs.File:forPath(ss) end
		end
		do return nil end
	end
end

function jk.fs.File:asFileVector(o)
	local it = _g.jk.lang.DynamicObject:iterate(o)
	if not (it ~= nil) then
		do return nil end
	end
	do
		local v = {}
		while true do
			local oo = it:next()
			if not (oo ~= nil) then
				do break end
			end
			do
				local ff = _g.jk.fs.File:asFile(oo)
				if ff ~= nil then
					do _g.jk.lang.Vector:append(v, ff) end
				end
			end
		end
		do return v end
	end
end

function jk.fs.File:forPath(path)
	if path == nil or _g.jk.lang.String:getLength(path) < 1 then
		do return _g.jk.fs.FileInvalid._construct0(_g.jk.fs.FileInvalid._create()) end
	end
	do return _g.jk.fs.FileForSushi:forPath(path) end
end

function jk.fs.File:forRawPath(path)
	do return _g.jk.fs.FileForSushi:forRawPath(path) end
end

function jk.fs.File:forRelativePath(path, relativeTo, alwaysSupportWindowsPathnames)
	if relativeTo == nil then
		do return _g.jk.fs.File:forPath(path) end
	end
	if path == nil then
		do return _g.jk.fs.FileInvalid._construct0(_g.jk.fs.FileInvalid._create()) end
	end
	if _g.jk.fs.PathInfo:isAbsolutePath(path) then
		do return _g.jk.fs.File:forPath(path) end
	end
	do
		local sep = _g.jk.fs.PathInfo:getPathSeparator()
		if sep ~= 47 then
			if _g.jk.lang.String:getIndexOfCharacter(path, sep, 0) < 0 and _g.jk.lang.String:getIndexOfCharacter(path, 47, 0) >= 0 then
				sep = 47
			end
		elseif alwaysSupportWindowsPathnames then
			if _g.jk.lang.String:getIndexOfCharacter(path, sep, 0) < 0 and _g.jk.lang.String:getIndexOfCharacter(path, 92, 0) >= 0 then
				sep = 92
			end
		end
		do
			local f = relativeTo
			local comps = _g.jk.lang.String:split(path, sep, 0)
			if comps ~= nil then
				local n = 0
				local m = _g.jk.lang.Vector:getSize(comps)
				do
					n = 0
					while n < m do
						local comp = comps[n + 1]
						if comp ~= nil then
							if _g.jk.lang.String:isEmpty(comp) then
								goto _continue1
							end
							f = f:entry(comp)
						end
						::_continue1::
						do n = n + 1 end
					end
				end
			end
			do return f end
		end
	end
end

function jk.fs.File:entry(name)
end

function jk.fs.File:rawEntry(name)
	do return self:entry(name) end
end

function jk.fs.File:entries()
end

function jk.fs.File:move(dest, replace)
end

function jk.fs.File:touch()
end

function jk.fs.File:read()
end

function jk.fs.File:write()
end

function jk.fs.File:append()
end

function jk.fs.File:stat()
end

function jk.fs.File:createDirectory()
end

function jk.fs.File:createDirectoryRecursive()
end

function jk.fs.File:removeDirectory()
end

function jk.fs.File:getPath()
end

function jk.fs.File:remove()
end

function jk.fs.File:makeExecutable()
end

function jk.fs.File:getRelativePath(baseFile, prefix)
	if not (baseFile ~= nil) then
		do return nil end
	end
	do
		local vp = self:getPath()
		local bp = baseFile:getPath()
		while _g.jk.lang.String:endsWith(bp, "/") or _g.jk.lang.String:endsWith(bp, "\\") do
			bp = _g.jk.lang.String:getSubString(bp, 0, _g.jk.lang.String:getLength(bp) - 1)
		end
		if _g.jk.lang.String:startsWith(vp, _g.jk.lang.String:safeString(bp) .. "/", 0) or _g.jk.lang.String:startsWith(vp, _g.jk.lang.String:safeString(bp) .. "\\", 0) then
			if prefix ~= nil then
				do return _g.jk.lang.String:safeString(prefix) .. _g.jk.lang.String:safeString(_g.jk.lang.String:getEndOfString(vp, _g.jk.lang.String:getLength(bp))) end
			end
			do return _g.jk.lang.String:getEndOfString(vp, _g.jk.lang.String:getLength(bp) + 1) end
		end
		do return nil end
	end
end

function jk.fs.File:getRelativePathOrBasename(baseFile, prefix)
	local v = self:getRelativePath(baseFile, prefix)
	if v ~= nil then
		do return v end
	end
	do return self:getBasename() end
end

function jk.fs.File:rename(newname, replace)
	do return self:move(_g.jk.fs.File:forPath(newname), replace) end
end

function jk.fs.File:writeFromReader(reader, doAppend)
	do self:onError(nil) end
	if not (reader ~= nil) then
		do return false end
	end
	do
		local buffer = _util:allocate_buffer(1024)
		if not (buffer ~= nil) then
			do return false end
		end
		do
			local writer = nil
			if doAppend then
				writer = self:append()
			else
				writer = self:write()
			end
			if not (writer ~= nil) then
				do return false end
			end
			do
				local v = true
				while true do
					local r = reader:read(buffer)
					if r < 1 then
						do break end
					end
					do
						local w = writer:write(buffer, r)
						if w < r then
							v = false
							do break end
						end
					end
				end
				do writer:close() end
				do return v end
			end
		end
	end
end

function jk.fs.File:createFifo()
	do self:onError("Not supported") end
	do return false end
end

function jk.fs.File:isExecutable()
	if _g.jk.os.OS:isWindows() then
		do return self:hasExtension("exe") or self:hasExtension("bat") or self:hasExtension("cmd") or self:hasExtension("com") end
	end
	do return self:stat():getExecutable() end
end

function jk.fs.File:exists()
	do self:onError(nil) end
	do
		local fi = self:stat()
		do return fi:getType() ~= _g.jk.fs.FileInfo.FILE_TYPE_UNKNOWN end
	end
end

function jk.fs.File:isIdentical(file)
	if not (file ~= nil) then
		do return false end
	end
	do
		local myrd = self:read()
		if not (myrd ~= nil) then
			do return false end
		end
		do
			local oord = file:read()
			if not (oord ~= nil) then
				do return false end
			end
			do
				local mybuf = _util:allocate_buffer(1024)
				if not (mybuf ~= nil) then
					do return false end
				end
				do
					local oobuf = _util:allocate_buffer(1024)
					if not (oobuf ~= nil) then
						do return false end
					end
					do
						local v = true
						while v do
							local myr = myrd:read(mybuf)
							local oor = oord:read(oobuf)
							if myr ~= oor then
								v = false
							else
								if myr < 1 then
									do break end
								end
								do
									local n = 0
									while n < myr do
										if mybuf[n + 1] ~= oobuf[n + 1] then
											v = false
										end
										do n = n + 1 end
									end
								end
							end
						end
						do myrd:close() end
						do oord:close() end
						do return v end
					end
				end
			end
		end
	end
end

jk.fs.File.ReadLineIterator = {}
jk.fs.File.ReadLineIterator.__index = jk.fs.File.ReadLineIterator
_vm:set_metatable(jk.fs.File.ReadLineIterator, {})

function jk.fs.File.ReadLineIterator._create()
	local v = _vm:set_metatable({}, jk.fs.File.ReadLineIterator)
	return v
end

function jk.fs.File.ReadLineIterator:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.fs.File.ReadLineIterator'
	self['_isType.jk.fs.File.ReadLineIterator'] = true
	self['_isType.jk.lang.Iterator'] = true
	self.reader = nil
end

function jk.fs.File.ReadLineIterator:_construct0()
	jk.fs.File.ReadLineIterator._init(self)
	return self
end

function jk.fs.File.ReadLineIterator:next()
	if not (self.reader ~= nil) then
		do return nil end
	end
	do
		local v = self.reader:readLine()
		if v == nil then
			do self.reader:close() end
			self.reader = nil
		end
		do return v end
	end
end

function jk.fs.File.ReadLineIterator:hasNext()
	if not (self.reader ~= nil) then
		do return false end
	end
	do return not self.reader:hasEnded() end
end

function jk.fs.File.ReadLineIterator:getReader()
	do return self.reader end
end

function jk.fs.File.ReadLineIterator:setReader(v)
	self.reader = v
	do return self end
end

function jk.fs.File:getLastErrorDescription()
	do return self.lastErrorDescription end
end

function jk.fs.File:onError(v)
	local pp = self:getPath()
	if not (v ~= nil) then
		self.lastErrorDescription = nil
	elseif pp ~= nil then
		self.lastErrorDescription = _g.jk.lang.String:safeString(pp) .. ": " .. _g.jk.lang.String:safeString(v)
	else
		self.lastErrorDescription = v
	end
end

function jk.fs.File:readLines()
	local rd = _g.jk.io.PrintReader:forReader(self:read())
	if not (rd ~= nil) then
		do return nil end
	end
	do return _g.jk.fs.File.ReadLineIterator._construct0(_g.jk.fs.File.ReadLineIterator._create()):setReader(rd) end
end

function jk.fs.File:readLinesVector()
	local it = self:readLines()
	if not (it ~= nil) then
		do return nil end
	end
	do
		local v = {}
		while true do
			local line = it:next()
			if not (line ~= nil) then
				do break end
			end
			do _g.jk.lang.Vector:append(v, line) end
		end
		do return v end
	end
end

function jk.fs.File:hasChangedSince(originalTimeStamp)
	local nts = self:getLastModifiedTimeStamp()
	if nts > originalTimeStamp then
		do return true end
	end
	do return false end
end

function jk.fs.File:getLastModifiedTimeStamp()
	if self:isFile() == false then
		do return 0 end
	end
	do
		local st = self:stat()
		if st == nil then
			do return 0 end
		end
		do return st:getModifyTime() end
	end
end

function jk.fs.File:compareModificationTime(bf)
	if bf == nil then
		do return 1 end
	end
	do
		local myts = self:getLastModifiedTimeStamp()
		local bfts = bf:getLastModifiedTimeStamp()
		if myts < bfts then
			do return -1 end
		end
		if myts > bfts then
			do return 1 end
		end
		do return 0 end
	end
end

function jk.fs.File:isNewerThan(bf)
	do return self:compareModificationTime(bf) > 0 end
end

function jk.fs.File:isOlderThan(bf)
	do return self:compareModificationTime(bf) < 0 end
end

function jk.fs.File:isSame(file)
	do self:onError(nil) end
	if not (file ~= nil) then
		do return false end
	end
	do
		local path = self:getPath()
		if path ~= nil and path == file:getPath() then
			do return true end
		end
		do return false end
	end
end

function jk.fs.File:removeRecursive()
	do self:onError(nil) end
	do
		local finfo = self:stat()
		if not (finfo ~= nil) then
			do return true end
		end
		if finfo:isDirectory() == false or finfo:isLink() == true then
			do return self:remove() end
		end
		do
			local it = self:entries()
			if not (it ~= nil) then
				do return false end
			end
			while it ~= nil do
				local f = it:next()
				if not (f ~= nil) then
					do break end
				end
				if not f:removeRecursive() then
					do self:onError(f:getLastErrorDescription()) end
					do return false end
				end
			end
			do return self:removeDirectory() end
		end
	end
end

function jk.fs.File:isFile()
	local st = self:stat()
	if not (st ~= nil) then
		do return false end
	end
	do return st:isFile() end
end

function jk.fs.File:isDirectory()
	local st = self:stat()
	if not (st ~= nil) then
		do return false end
	end
	do return st:isDirectory() end
end

function jk.fs.File:isLink()
	local st = self:stat()
	if not (st ~= nil) then
		do return false end
	end
	do return st:isLink() end
end

function jk.fs.File:getSize()
	local st = self:stat()
	if st == nil then
		do return 0 end
	end
	do return st:getSize() end
end

function jk.fs.File:setMode(mode)
	do self:onError("Not supported") end
	do return false end
end

function jk.fs.File:setOwnerUser(uid)
	do self:onError("Not supported") end
	do return false end
end

function jk.fs.File:setOwnerGroup(gid)
	do self:onError("Not supported") end
	do return false end
end

function jk.fs.File:withExtension(ext)
	if not (ext ~= nil) then
		do return self end
	end
	do
		local bn = self:getBasename()
		do return self:getSibling(_g.jk.lang.String:safeString(bn) .. "." .. _g.jk.lang.String:safeString(ext)) end
	end
end

function jk.fs.File:asExecutable()
	if _g.jk.os.OS:isWindows() then
		if self:hasExtension("exe") == false and self:hasExtension("bat") == false and self:hasExtension("cmd") == false and self:hasExtension("com") == false then
			local exe = self:withExtension("exe")
			if exe:isFile() then
				do return exe end
			end
			do
				local bat = self:withExtension("bat")
				if bat:isFile() then
					do return bat end
				end
				do
					local cmd = self:withExtension("cmd")
					if cmd:isFile() then
						do return cmd end
					end
					do
						local com = self:withExtension("com")
						if com:isFile() then
							do return com end
						end
						do return exe end
					end
				end
			end
		end
	end
	do return self end
end

function jk.fs.File:getParent()
	do self:onError(nil) end
	do
		local path = self:directoryName()
		if path == nil then
			do return _g.jk.fs.FileInvalid._construct0(_g.jk.fs.FileInvalid._create()) end
		end
		do return _g.jk.fs.File:forPath(path) end
	end
end

function jk.fs.File:getSibling(name)
	local pp = self:getParent()
	if not (pp ~= nil) then
		do return nil end
	end
	if name == nil then
		do return pp end
	end
	do return pp:entry(name) end
end

function jk.fs.File:hasExtension(ext)
	local xx = self:extension()
	if not (xx ~= nil) then
		do return false end
	end
	do return _g.jk.lang.String:equalsIgnoreCase(xx, ext) end
end

function jk.fs.File:extension()
	local bn = self:getBasename()
	if not (bn ~= nil) then
		do return nil end
	end
	do
		local dot = _g.jk.lang.String:getLastIndexOfCharacter(bn, 46, -1)
		if dot < 0 then
			do return nil end
		end
		do return _g.jk.lang.String:getEndOfString(bn, dot + 1) end
	end
end

function jk.fs.File:directoryName()
	local path = self:getPath()
	if not (path ~= nil) then
		do return nil end
	end
	do
		local delim = _g.jk.fs.PathInfo:getPathSeparator()
		local dp = _g.jk.lang.String:getLastIndexOfCharacter(path, delim, -1)
		if delim ~= 47 then
			local sdp = _g.jk.lang.String:getLastIndexOfCharacter(path, 47, -1)
			if sdp > dp then
				dp = sdp
			end
		end
		if dp < 0 then
			do return "." end
		end
		do return _g.jk.lang.String:getSubString(path, 0, dp) end
	end
end

function jk.fs.File:getBasename()
	local path = self:getPath()
	if not (path ~= nil) then
		do return nil end
	end
	do
		local delim = _g.jk.fs.PathInfo:getPathSeparator()
		if _g.jk.lang.String:endsWith(path, _g.jk.lang.String:forCharacter(delim)) then
			path = _g.jk.lang.String:getSubString(path, 0, _g.jk.lang.String:getLength(path) - 1)
		end
		if delim ~= 47 and _g.jk.lang.String:endsWith(path, "/") then
			path = _g.jk.lang.String:getSubString(path, 0, _g.jk.lang.String:getLength(path) - 1)
		end
		do
			local dp = _g.jk.lang.String:getLastIndexOfCharacter(path, delim, -1)
			if delim ~= 47 then
				local sdp = _g.jk.lang.String:getLastIndexOfCharacter(path, 47, -1)
				if sdp > dp then
					dp = sdp
				end
			end
			if dp < 0 then
				do return path end
			end
			do return _g.jk.lang.String:getEndOfString(path, dp + 1) end
		end
	end
end

function jk.fs.File:getBasenameWithoutExtension()
	local bn = self:getBasename()
	if not (bn ~= nil) then
		do return nil end
	end
	do
		local dot = _g.jk.lang.String:getLastIndexOfCharacter(bn, 46, -1)
		if dot < 0 then
			do return bn end
		end
		do return _g.jk.lang.String:getSubString(bn, 0, dot) end
	end
end

function jk.fs.File:baseName()
	do return self:getBasename() end
end

function jk.fs.File:baseNameWithoutExtension()
	do return self:getBasenameWithoutExtension() end
end

function jk.fs.File:copyFileTo(dest)
	do self:onError(nil) end
	if not (dest ~= nil) then
		do return false end
	end
	if self:isSame(dest) then
		do return true end
	end
	do
		local buf = _util:allocate_buffer(4096 * 4)
		if not (buf ~= nil) then
			do return false end
		end
		do
			local reader = self:read()
			if not (reader ~= nil) then
				do return false end
			end
			do
				local writer = dest:write()
				if not (writer ~= nil) then
					if (_vm:to_table_with_key(reader, '_isType.jk.lang.Closable') ~= nil) then
						do reader:close() end
					end
					do self:onError(dest:getLastErrorDescription()) end
					do return false end
				end
				do
					local v = true
					local n = 0
					while (function()
						n = reader:read(buf)
						do return n end
					end)() > 0 do
						local nr = writer:write(buf, n)
						if nr ~= n then
							v = false
							do break end
						end
					end
					if v then
						local fi = self:stat()
						if fi ~= nil then
							local mode = fi:getMode()
							if mode ~= 0 then
								do dest:setMode(mode) end
							end
						end
					else
						do dest:remove() end
					end
					if reader ~= nil and (_vm:to_table_with_key(reader, '_isType.jk.lang.Closable') ~= nil) then
						do reader:close() end
					end
					if writer ~= nil and (_vm:to_table_with_key(writer, '_isType.jk.lang.Closable') ~= nil) then
						do writer:close() end
					end
					do return v end
				end
			end
		end
	end
end

function jk.fs.File:copyFileOrDirectoryTo(dest)
	if not (dest ~= nil) then
		do return false end
	end
	if self:isFile() then
		do return self:copyFileTo(dest) end
	end
	if not self:isDirectory() then
		do return false end
	end
	if not dest:createDirectoryRecursive() then
		do return false end
	end
	do
		local it = self:entries()
		if not (it ~= nil) then
			do return false end
		end
		while true do
			local nsrc = it:next()
			if not (nsrc ~= nil) then
				do break end
			end
			do
				local ndest = dest:entry(nsrc:getBasename())
				if not nsrc:copyFileOrDirectoryTo(ndest) then
					do return false end
				end
			end
		end
		do return true end
	end
end

function jk.fs.File:setContentsString(str, encoding)
	if _g.jk.lang.String:isEmpty(encoding) then
		do return false end
	end
	do return self:setContentsBuffer(_g.jk.lang.String:toBuffer(str, encoding)) end
end

function jk.fs.File:setContentsUTF8(str)
	do return self:setContentsBuffer(_g.jk.lang.String:toUTF8Buffer(str)) end
end

function jk.fs.File:setContentsBuffer(buffer)
	do self:onError(nil) end
	if not (buffer ~= nil) then
		do return false end
	end
	do
		local writer = self:write()
		if not (writer ~= nil) then
			do return false end
		end
		if writer:write(buffer, #buffer) < 0 then
			do return false end
		end
		do writer:close() end
		do return true end
	end
end

function jk.fs.File:getContentsString(encoding)
	if _g.jk.lang.String:isEmpty(encoding) then
		do return nil end
	end
	do
		local b = self:getContentsBuffer()
		if not (b ~= nil) then
			if self:isFile() and self:getSize() == 0 then
				do return "" end
			end
			do return nil end
		end
		do return _g.jk.lang.String:forBuffer(b, encoding) end
	end
end

function jk.fs.File:getContentsUTF8()
	local b = self:getContentsBuffer()
	if not (b ~= nil) then
		if self:isFile() and self:getSize() == 0 then
			do return "" end
		end
		do return nil end
	end
	do return _g.jk.lang.String:forUTF8Buffer(b) end
end

function jk.fs.File:getContentsWithBOM()
	local buf = self:getContentsBuffer()
	if not (buf ~= nil) then
		if self:isFile() and self:getSize() == 0 then
			do return "" end
		end
		do return nil end
	end
	if _g.jk.lang.Buffer:getByte(buf, 0) == 239 and _g.jk.lang.Buffer:getByte(buf, 1) == 187 and _g.jk.lang.Buffer:getByte(buf, 2) == 191 then
		do return _g.jk.lang.String:forUTF8Buffer(_g.jk.lang.Buffer:getSubBuffer(buf, 3, _g.jk.lang.Buffer:getSize(buf) - 3, false)) end
	elseif _g.jk.lang.Buffer:getByte(buf, 0) == 255 and _g.jk.lang.Buffer:getByte(buf, 1) == 254 then
		do self:onError("Not supported encoding, UTF-16 little endian") end
		do return nil end
	elseif _g.jk.lang.Buffer:getByte(buf, 0) == 254 and _g.jk.lang.Buffer:getByte(buf, 1) == 255 then
		do self:onError("Not supported encoding, UTF-16 big-endian") end
		do return nil end
	elseif _g.jk.lang.Buffer:getByte(buf, 0) == 255 and _g.jk.lang.Buffer:getByte(buf, 1) == 254 and _g.jk.lang.Buffer:getByte(buf, 2) == 0 and _g.jk.lang.Buffer:getByte(buf, 3) == 0 then
		do self:onError("Not supported encoding, UTF-32 little endian") end
		do return nil end
	elseif _g.jk.lang.Buffer:getByte(buf, 0) == 0 and _g.jk.lang.Buffer:getByte(buf, 1) == 0 and _g.jk.lang.Buffer:getByte(buf, 2) == 254 and _g.jk.lang.Buffer:getByte(buf, 3) == 255 then
		do self:onError("Not supported encoding, UTF-32 big endian") end
		do return nil end
	end
	do return _g.jk.lang.String:forUTF8Buffer(buf) end
end

function jk.fs.File:getContentsBuffer()
	do self:onError(nil) end
	do
		local reader = self:read()
		if not (reader ~= nil) then
			do return nil end
		end
		do
			local sz = reader:getSize()
			if sz < 1 then
				do reader:close() end
				do return nil end
			end
			do
				local b = _util:allocate_buffer(sz)
				local rsz = reader:read(b)
				do reader:close() end
				if rsz < sz then
					do return nil end
				end
				do return b end
			end
		end
	end
end

function jk.fs.File:toString()
	do return self:getPath() end
end

jk.fs.FileInvalid = _g.jk.fs.File._create()
jk.fs.FileInvalid.__index = jk.fs.FileInvalid
_vm:set_metatable(jk.fs.FileInvalid, {
	__index = _g.jk.fs.File
})

function jk.fs.FileInvalid._create()
	local v = _vm:set_metatable({}, jk.fs.FileInvalid)
	return v
end

function jk.fs.FileInvalid:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.fs.FileInvalid'
	self['_isType.jk.fs.FileInvalid'] = true
end

function jk.fs.FileInvalid:_construct0()
	jk.fs.FileInvalid._init(self)
	do _g.jk.fs.File._construct0(self) end
	return self
end

function jk.fs.FileInvalid:entry(name)
	do return _g.jk.fs.FileInvalid._construct0(_g.jk.fs.FileInvalid._create()) end
end

function jk.fs.FileInvalid:makeExecutable()
	do return false end
end

function jk.fs.FileInvalid:move(dest, replace)
	do return false end
end

function jk.fs.FileInvalid:touch()
	do return false end
end

function jk.fs.FileInvalid:read()
	do return nil end
end

function jk.fs.FileInvalid:write()
	do return nil end
end

function jk.fs.FileInvalid:append()
	do return nil end
end

function jk.fs.FileInvalid:stat()
	do return nil end
end

function jk.fs.FileInvalid:exists()
	do return false end
end

function jk.fs.FileInvalid:isExecutable()
	do return false end
end

function jk.fs.FileInvalid:createFifo()
	do return false end
end

function jk.fs.FileInvalid:createDirectory()
	do return false end
end

function jk.fs.FileInvalid:createDirectoryRecursive()
	do return false end
end

function jk.fs.FileInvalid:removeDirectory()
	do return false end
end

function jk.fs.FileInvalid:getPath()
	do return nil end
end

function jk.fs.FileInvalid:isSame(file)
	do return false end
end

function jk.fs.FileInvalid:remove()
	do return false end
end

function jk.fs.FileInvalid:removeRecursive()
	do return false end
end

function jk.fs.FileInvalid:getBasename()
	do return nil end
end

function jk.fs.FileInvalid:isIdentical(file)
	do return false end
end

function jk.fs.FileInvalid:getContentsBuffer()
	do return nil end
end

function jk.fs.FileInvalid:getContentsString(encoding)
	do return nil end
end

function jk.fs.FileInvalid:setContentsBuffer(buffer)
	do return false end
end

function jk.fs.FileInvalid:setContentsString(str, encoding)
	do return false end
end

function jk.fs.FileInvalid:entries()
	do return nil end
end

jk.fs.FileReader = {}

jk.fs.FileInfo = {}
jk.fs.FileInfo.__index = jk.fs.FileInfo
_vm:set_metatable(jk.fs.FileInfo, {})

jk.fs.FileInfo.FILE_TYPE_UNKNOWN = 0
jk.fs.FileInfo.FILE_TYPE_FILE = 1
jk.fs.FileInfo.FILE_TYPE_DIR = 2

function jk.fs.FileInfo._create()
	local v = _vm:set_metatable({}, jk.fs.FileInfo)
	return v
end

function jk.fs.FileInfo:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.fs.FileInfo'
	self['_isType.jk.fs.FileInfo'] = true
	self.file = nil
	self.size = 0
	self.createTime = 0
	self.accessTime = 0
	self.modifyTime = 0
	self.ownerUser = 0
	self.ownerGroup = 0
	self.mode = 0
	self.executable = false
	self.type = 0
	self.link = false
end

function jk.fs.FileInfo:_construct0()
	jk.fs.FileInfo._init(self)
	return self
end

function jk.fs.FileInfo:forFile(file)
	if file == nil then
		do return _g.jk.fs.FileInfo._construct0(_g.jk.fs.FileInfo._create()) end
	end
	do return file:stat() end
end

function jk.fs.FileInfo:setFile(v)
	self.file = v
end

function jk.fs.FileInfo:setSize(v)
	self.size = v
end

function jk.fs.FileInfo:setCreateTime(v)
	self.createTime = v
end

function jk.fs.FileInfo:setAccessTime(v)
	self.accessTime = v
end

function jk.fs.FileInfo:setModifyTime(v)
	self.modifyTime = v
end

function jk.fs.FileInfo:setOwnerUser(v)
	self.ownerUser = v
end

function jk.fs.FileInfo:setOwnerGroup(v)
	self.ownerGroup = v
end

function jk.fs.FileInfo:setMode(v)
	self.mode = v
end

function jk.fs.FileInfo:setExecutable(v)
	self.executable = v
end

function jk.fs.FileInfo:setType(v)
	self.type = v
end

function jk.fs.FileInfo:setLink(v)
	self.link = v
end

function jk.fs.FileInfo:getFile()
	do return self.file end
end

function jk.fs.FileInfo:getSize()
	do return self.size end
end

function jk.fs.FileInfo:getCreateTime()
	do return self.createTime end
end

function jk.fs.FileInfo:getCreateTimeUTC()
	do return self.createTime + _g.jk.time.SystemClock:getTimezoneOffsetAsSeconds() end
end

function jk.fs.FileInfo:getAccessTime()
	do return self.accessTime end
end

function jk.fs.FileInfo:getAccessTimeUTC()
	do return self.accessTime + _g.jk.time.SystemClock:getTimezoneOffsetAsSeconds() end
end

function jk.fs.FileInfo:getModifyTime()
	do return self.modifyTime end
end

function jk.fs.FileInfo:getModifyTimeUTC()
	do return self.modifyTime + _g.jk.time.SystemClock:getTimezoneOffsetAsSeconds() end
end

function jk.fs.FileInfo:getOwnerUser()
	do return self.ownerUser end
end

function jk.fs.FileInfo:getOwnerGroup()
	do return self.ownerGroup end
end

function jk.fs.FileInfo:getMode()
	do return self.mode end
end

function jk.fs.FileInfo:getExecutable()
	do return self.executable end
end

function jk.fs.FileInfo:getType()
	do return self.type end
end

function jk.fs.FileInfo:getLink()
	do return self.link end
end

function jk.fs.FileInfo:isFile()
	if self.type == _g.jk.fs.FileInfo.FILE_TYPE_FILE then
		do return true end
	end
	do return false end
end

function jk.fs.FileInfo:isLink()
	do return self.link end
end

function jk.fs.FileInfo:isDirectory()
	if self.type == _g.jk.fs.FileInfo.FILE_TYPE_DIR then
		do return true end
	end
	do return false end
end

function jk.fs.FileInfo:exists()
	do return self:isFile() or self:isDirectory() or self:isLink() end
end

jk.fs.FileForSushi = _g.jk.fs.File._create()
jk.fs.FileForSushi.__index = jk.fs.FileForSushi
_vm:set_metatable(jk.fs.FileForSushi, {
	__index = _g.jk.fs.File
})

function jk.fs.FileForSushi._create()
	local v = _vm:set_metatable({}, jk.fs.FileForSushi)
	return v
end

function jk.fs.FileForSushi:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.fs.FileForSushi'
	self['_isType.jk.fs.FileForSushi'] = true
	self.path = nil
end

function jk.fs.FileForSushi:_construct0()
	jk.fs.FileForSushi._init(self)
	do _g.jk.fs.File._construct0(self) end
	return self
end

jk.fs.FileForSushi.MyFileReader = {}
jk.fs.FileForSushi.MyFileReader.__index = jk.fs.FileForSushi.MyFileReader
_vm:set_metatable(jk.fs.FileForSushi.MyFileReader, {})

function jk.fs.FileForSushi.MyFileReader._create()
	local v = _vm:set_metatable({}, jk.fs.FileForSushi.MyFileReader)
	return v
end

function jk.fs.FileForSushi.MyFileReader:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.fs.FileForSushi.MyFileReader'
	self['_isType.jk.fs.FileForSushi.MyFileReader'] = true
	self['_isType.jk.fs.FileReader'] = true
	self['_isType.jk.io.SizedReader'] = true
	self['_isType.jk.io.Reader'] = true
	self['_isType.jk.lang.Closable'] = true
	self['_isType.jk.io.SeekableReader'] = true
	self.handle = -1
	self.file = nil
	self._destructWrapper = _vm:create_destructor(function() self:_destruct() end)
end

function jk.fs.FileForSushi.MyFileReader:_construct0()
	jk.fs.FileForSushi.MyFileReader._init(self)
	return self
end

function jk.fs.FileForSushi.MyFileReader:_destruct()
	do self:close() end
end

function jk.fs.FileForSushi.MyFileReader:read(buffer)
	local v = -1
	local handle = self.handle
	if handle >= 0 then
		do v = _io:read_from_handle(handle, buffer) end
	end
	do return v end
end

function jk.fs.FileForSushi.MyFileReader:getSize()
	local v = -1
	local handle = self.handle
	if handle >= 0 then
		do v = _io:get_size_for_handle(handle) end
	end
	do return v end
end

function jk.fs.FileForSushi.MyFileReader:close()
	local handle = self.handle
	if handle >= 0 then
		do _io:close_handle(handle) end
		self.handle = -1
	end
end

function jk.fs.FileForSushi.MyFileReader:setCurrentPosition(n)
	local handle = self.handle
	if handle < 0 then
		do return false end
	end
	if _io:set_current_position(handle, n) < 0 then
		do return false end
	end
	do return true end
end

function jk.fs.FileForSushi.MyFileReader:getCurrentPosition()
	local handle = self.handle
	if handle < 0 then
		do return 0 end
	end
	do return _io:get_current_position(handle) end
end

function jk.fs.FileForSushi.MyFileReader:getHandle()
	do return self.handle end
end

function jk.fs.FileForSushi.MyFileReader:setHandle(v)
	self.handle = v
	do return self end
end

function jk.fs.FileForSushi.MyFileReader:getFile()
	do return self.file end
end

function jk.fs.FileForSushi.MyFileReader:setFile(v)
	self.file = v
	do return self end
end

jk.fs.FileForSushi.MyFileWriter = {}
jk.fs.FileForSushi.MyFileWriter.__index = jk.fs.FileForSushi.MyFileWriter
_vm:set_metatable(jk.fs.FileForSushi.MyFileWriter, {})

function jk.fs.FileForSushi.MyFileWriter._create()
	local v = _vm:set_metatable({}, jk.fs.FileForSushi.MyFileWriter)
	return v
end

function jk.fs.FileForSushi.MyFileWriter:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.fs.FileForSushi.MyFileWriter'
	self['_isType.jk.fs.FileForSushi.MyFileWriter'] = true
	self['_isType.jk.fs.FileWriter'] = true
	self['_isType.jk.io.Writer'] = true
	self['_isType.jk.lang.Closable'] = true
	self['_isType.jk.io.SeekableWriter'] = true
	self.handle = -1
	self.file = nil
	self._destructWrapper = _vm:create_destructor(function() self:_destruct() end)
end

function jk.fs.FileForSushi.MyFileWriter:_construct0()
	jk.fs.FileForSushi.MyFileWriter._init(self)
	return self
end

function jk.fs.FileForSushi.MyFileWriter:_destruct()
	do self:close() end
end

function jk.fs.FileForSushi.MyFileWriter:write(buf, size)
	local v = -1
	local handle = self.handle
	if handle >= 0 then
		do v = _io:write_to_handle(handle, buf, size) end
	end
	do return v end
end

function jk.fs.FileForSushi.MyFileWriter:close()
	local handle = self.handle
	if handle >= 0 then
		do _io:close_handle(handle) end
		self.handle = -1
	end
end

function jk.fs.FileForSushi.MyFileWriter:setCurrentPosition(n)
	local handle = self.handle
	if handle < 0 then
		do return false end
	end
	if _io:set_current_position(handle, n) < 0 then
		do return false end
	end
	do return true end
end

function jk.fs.FileForSushi.MyFileWriter:getCurrentPosition()
	local handle = self.handle
	if handle < 0 then
		do return 0 end
	end
	do return _io:get_current_position(handle) end
end

function jk.fs.FileForSushi.MyFileWriter:getHandle()
	do return self.handle end
end

function jk.fs.FileForSushi.MyFileWriter:setHandle(v)
	self.handle = v
	do return self end
end

function jk.fs.FileForSushi.MyFileWriter:getFile()
	do return self.file end
end

function jk.fs.FileForSushi.MyFileWriter:setFile(v)
	self.file = v
	do return self end
end

function jk.fs.FileForSushi:forPath(path)
	local v = _g.jk.fs.FileForSushi._construct0(_g.jk.fs.FileForSushi._create())
	do v:setPath(path, true) end
	do return v end
end

function jk.fs.FileForSushi:forRawPath(path)
	local v = _g.jk.fs.FileForSushi._construct0(_g.jk.fs.FileForSushi._create())
	do v:setPath(path, false) end
	do return v end
end

function jk.fs.FileForSushi:entry(name)
	local pp = self.path
	if _g.jk.lang.String:isNotEmpty(name) then
		if pp ~= nil then
			pp = _g.jk.lang.String:safeString(pp) .. "/" .. _g.jk.lang.String:safeString(name)
		else
			pp = name
		end
	end
	do return _g.jk.fs.FileForSushi:forPath(pp) end
end

function jk.fs.FileForSushi:rawEntry(name)
	local pp = self.path
	if _g.jk.lang.String:isNotEmpty(name) then
		if pp ~= nil then
			pp = _g.jk.lang.String:safeString(pp) .. "/" .. _g.jk.lang.String:safeString(name)
		else
			pp = name
		end
	end
	do return _g.jk.fs.FileForSushi:forRawPath(pp) end
end

function jk.fs.FileForSushi:move(dest, replace)
	_io:write_to_stdout("--- stub --- jk.fs.FileForSushi :: move" .. "\n")
	do return false end
end

function jk.fs.FileForSushi:touch()
	local path = self.path
	local r = _io:touch_file(path)
	if r == 1 then
		do return true end
	end
	do return false end
end

function jk.fs.FileForSushi:read()
	local handle = 0
	local path = self.path
	do handle = _io:open_file_for_reading(path) end
	if not (handle >= 0) then
		do return nil end
	end
	do
		local v = _g.jk.fs.FileForSushi.MyFileReader._construct0(_g.jk.fs.FileForSushi.MyFileReader._create())
		do v:setFile(self) end
		do v:setHandle(handle) end
		do return v end
	end
end

function jk.fs.FileForSushi:write()
	local handle = 0
	local path = self.path
	do handle = _io:open_file_for_writing(path) end
	if not (handle >= 0) then
		do return nil end
	end
	do
		local v = _g.jk.fs.FileForSushi.MyFileWriter._construct0(_g.jk.fs.FileForSushi.MyFileWriter._create())
		do v:setFile(self) end
		do v:setHandle(handle) end
		do return v end
	end
end

function jk.fs.FileForSushi:append()
	local handle = 0
	local path = self.path
	do handle = _io:open_file_for_appending(path) end
	if not (handle >= 0) then
		do return nil end
	end
	do
		local v = _g.jk.fs.FileForSushi.MyFileWriter._construct0(_g.jk.fs.FileForSushi.MyFileWriter._create())
		do v:setFile(self) end
		do v:setHandle(handle) end
		do return v end
	end
end

function jk.fs.FileForSushi:stat()
	local path = self.path
	local valid = true
	local size = 0
	local ctim = 0
	local atim = 0
	local mtim = 0
	local uid = 0
	local gid = 0
	local mode = 0
	do size, ctim, atim, mtim, uid, gid, mode = _io:get_file_info(path) if size == nil then valid = false end end
	do
		local v = _g.jk.fs.FileInfo._construct0(_g.jk.fs.FileInfo._create())
		do v:setFile(self) end
		if not valid then
			do v:setType(_g.jk.fs.FileInfo.FILE_TYPE_UNKNOWN) end
			do return v end
		end
		do v:setSize(size) end
		do v:setCreateTime(ctim) end
		do v:setAccessTime(ctim) end
		do v:setModifyTime(mtim) end
		do v:setOwnerUser(uid) end
		do v:setOwnerGroup(gid) end
		do v:setMode(_vm:bitwise_and(mode, 511)) end
		if _vm:bitwise_and(mode, 32768) ~= 0 then
			do v:setType(_g.jk.fs.FileInfo.FILE_TYPE_FILE) end
		elseif _vm:bitwise_and(mode, 16384) ~= 0 then
			do v:setType(_g.jk.fs.FileInfo.FILE_TYPE_DIR) end
		else
			do v:setType(_g.jk.fs.FileInfo.FILE_TYPE_UNKNOWN) end
		end
		if _vm:bitwise_and(mode, 40960) ~= 0 then
			do v:setLink(true) end
		end
		if _vm:bitwise_and(mode, 64) ~= 0 or _vm:bitwise_and(mode, 8) ~= 0 or _vm:bitwise_and(mode, 1) ~= 0 then
			do v:setExecutable(true) end
		end
		do return v end
	end
end

function jk.fs.FileForSushi:createDirectory()
	local path = self.path
	local r = _io:create_directory(path)
	if r == 1 then
		do return true end
	end
	do return false end
end

function jk.fs.FileForSushi:createDirectoryRecursive()
	if self:isDirectory() then
		do return true end
	end
	do
		local parent = self:getParent()
		if parent ~= nil then
			if not parent:createDirectoryRecursive() then
				do return false end
			end
		end
		do return self:createDirectory() end
	end
end

function jk.fs.FileForSushi:removeDirectory()
	local path = self.path
	local r = _io:remove_directory(path)
	if r == 1 then
		do return true end
	end
	do return false end
end

function jk.fs.FileForSushi:normalizePath(apath)
	local path = apath
	if not (path ~= nil) then
		do return nil end
	end
	if _g.jk.os.OS:isWindows() then
		path = _g.jk.lang.String:replaceCharacter(path, 92, 47)
	end
	do
		local v = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		local comps = _g.jk.lang.String:split(path, 47, 0)
		if comps ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(comps)
			do
				n = 0
				while n < m do
					local comp = comps[n + 1]
					if comp ~= nil then
						if _g.jk.lang.String:isEmpty(comp) then
						elseif comp == "." then
						elseif comp == ".." then
							local str = v:toString()
							do v:clear() end
							if str ~= nil then
								local slash = _g.jk.lang.String:getLastIndexOfCharacter(str, 47, -1)
								if slash > 0 then
									do v:appendString(_g.jk.lang.String:getSubString(str, 0, slash)) end
								end
							end
						else
							if v:count() > 0 then
								do v:appendCharacter(47) end
							end
							do v:appendString(comp) end
						end
					end
					do n = n + 1 end
				end
			end
		end
		if _g.jk.lang.String:startsWith(path, "/", 0) then
			do return "/" .. _g.jk.lang.String:safeString(v:toString()) end
		end
		do return v:toString() end
	end
end

function jk.fs.FileForSushi:setPath(v, useRealPath)
	if _g.jk.lang.String:isEmpty(v) then
		self.path = nil
		do return end
	end
	if _g.jk.os.OS:isWindows() then
		local l = _g.jk.lang.String:getLength(v)
		local c1 = _g.jk.lang.String:getChar(v, 1)
		if l == 2 and c1 == 58 then
			self.path = _g.jk.lang.String:safeString(v) .. "/"
			do return end
		end
		do
			local c2 = _g.jk.lang.String:getChar(v, 2)
			if l == 3 and c1 == 58 and (c2 == 92 or c2 == 47) then
				local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
				do sb:appendCharacter(_g.jk.lang.String:getChar(v, 0)) end
				do sb:appendCharacter(58) end
				do sb:appendCharacter(47) end
				self.path = sb:toString()
				do return end
			end
		end
	end
	if useRealPath then
		local realpath = nil
		do realpath = _io:get_real_path(v) end
		if _g.jk.lang.String:isNotEmpty(realpath) then
			self.path = realpath
			if _g.jk.os.OS:isWindows() then
				self.path = _g.jk.lang.String:replaceCharacter(self.path, 92, 47)
			end
			do return end
		end
	end
	if _g.jk.fs.PathInfo:isAbsolutePath(v) then
		self.path = self:normalizePath(v)
	else
		self.path = self:normalizePath(_g.jk.lang.String:safeString(_io:get_current_directory()) .. "/" .. _g.jk.lang.String:safeString(v))
	end
end

function jk.fs.FileForSushi:getPath()
	do return self.path end
end

function jk.fs.FileForSushi:remove()
	local path = self.path
	if _io:remove_file(path) == 1 then
		do return true end
	end
	do return false end
end

function jk.fs.FileForSushi:makeExecutable()
	local path = self.path
	local mode = _vm:bitwise_or(_vm:bitwise_or(_vm:bitwise_or(_vm:bitwise_or(_vm:bitwise_or(_vm:bitwise_or(1, 4), 8), 32), 64), 128), 256)
	do return _io:set_file_mode(path, mode ) end
end

function jk.fs.FileForSushi:setMode(mode)
	local path = self.path
	do return _io:set_file_mode(path, mode ) end
end

jk.fs.FileForSushi.MyDirectoryIterator = {}
jk.fs.FileForSushi.MyDirectoryIterator.__index = jk.fs.FileForSushi.MyDirectoryIterator
_vm:set_metatable(jk.fs.FileForSushi.MyDirectoryIterator, {})

function jk.fs.FileForSushi.MyDirectoryIterator._create()
	local v = _vm:set_metatable({}, jk.fs.FileForSushi.MyDirectoryIterator)
	return v
end

function jk.fs.FileForSushi.MyDirectoryIterator:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.fs.FileForSushi.MyDirectoryIterator'
	self['_isType.jk.fs.FileForSushi.MyDirectoryIterator'] = true
	self['_isType.jk.lang.Iterator'] = true
	self['_isType.jk.lang.Closable'] = true
	self.parent = nil
	self.handle = nil
	self.current = nil
	self._destructWrapper = _vm:create_destructor(function() self:_destruct() end)
end

function jk.fs.FileForSushi.MyDirectoryIterator:_construct0()
	jk.fs.FileForSushi.MyDirectoryIterator._init(self)
	return self
end

function jk.fs.FileForSushi.MyDirectoryIterator:_destruct()
	do self:close() end
end

function jk.fs.FileForSushi.MyDirectoryIterator:close()
	local handle = self.handle
	if handle ~= nil then
		do _io:close_directory(handle) end
		self.handle = nil
	end
end

function jk.fs.FileForSushi.MyDirectoryIterator:doNext()
	local handle = self.handle
	if not (handle ~= nil) then
		do return nil end
	end
	do
		local name = _io:read_directory(handle)
		if not (name ~= nil) then
			do self:close() end
			do return nil end
		end
		do return _g.jk.fs.File:forRelativePath(name, self.parent, false) end
	end
end

function jk.fs.FileForSushi.MyDirectoryIterator:next()
	if self.current ~= nil then
		local vv = self.current
		self.current = nil
		do return vv end
	end
	do return self:doNext() end
end

function jk.fs.FileForSushi.MyDirectoryIterator:hasNext()
	if self.current ~= nil then
		do return true end
	end
	do
		local v = self:doNext()
		if v ~= nil then
			self.current = v
			do return true end
		end
		do return false end
	end
end

function jk.fs.FileForSushi.MyDirectoryIterator:getParent()
	do return self.parent end
end

function jk.fs.FileForSushi.MyDirectoryIterator:setParent(v)
	self.parent = v
	do return self end
end

function jk.fs.FileForSushi.MyDirectoryIterator:getHandle()
	do return self.handle end
end

function jk.fs.FileForSushi.MyDirectoryIterator:setHandle(v)
	self.handle = v
	do return self end
end

function jk.fs.FileForSushi:entries()
	local pp = self.path
	if not _g.jk.lang.String:isNotEmpty(pp) then
		do return nil end
	end
	do
		local handle = _io:open_directory(pp)
		if not (handle ~= nil) then
			do return nil end
		end
		do
			local v = _g.jk.fs.FileForSushi.MyDirectoryIterator._construct0(_g.jk.fs.FileForSushi.MyDirectoryIterator._create())
			do v:setParent(self) end
			do v:setHandle(handle) end
			do return v end
		end
	end
end

jk.fs.CurrentDirectory = {}
jk.fs.CurrentDirectory.__index = jk.fs.CurrentDirectory
_vm:set_metatable(jk.fs.CurrentDirectory, {})

function jk.fs.CurrentDirectory._create()
	local v = _vm:set_metatable({}, jk.fs.CurrentDirectory)
	return v
end

function jk.fs.CurrentDirectory:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.fs.CurrentDirectory'
	self['_isType.jk.fs.CurrentDirectory'] = true
end

function jk.fs.CurrentDirectory:_construct0()
	jk.fs.CurrentDirectory._init(self)
	return self
end

function jk.fs.CurrentDirectory:set(dir)
	if not (dir ~= nil) then
		do return end
	end
	do _io:set_current_directory(dir:getPath()) end
end

function jk.fs.CurrentDirectory:get()
	do return _g.jk.fs.File:forPath(_io:get_current_directory()) end
end
jk = jk or {}

jk.base64 = jk.base64 or {}

jk.base64.Base64Decoder = {}
jk.base64.Base64Decoder.__index = jk.base64.Base64Decoder
_vm:set_metatable(jk.base64.Base64Decoder, {})

function jk.base64.Base64Decoder._create()
	local v = _vm:set_metatable({}, jk.base64.Base64Decoder)
	return v
end

function jk.base64.Base64Decoder:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.base64.Base64Decoder'
	self['_isType.jk.base64.Base64Decoder'] = true
end

function jk.base64.Base64Decoder:_construct0()
	jk.base64.Base64Decoder._init(self)
	return self
end

function jk.base64.Base64Decoder:fromUrlSafeFormat(str)
	local v = str
	if not (v ~= nil) then
		do return nil end
	end
	v = _g.jk.lang.String:replaceCharacter(v, 45, 43)
	v = _g.jk.lang.String:replaceCharacter(v, 95, 47)
	do
		local mod = _util:convert_to_integer(_g.jk.lang.String:getLength(v) % 4)
		if mod == 1 then
			v = _g.jk.lang.String:safeString(v) .. "==="
		elseif mod == 2 then
			v = _g.jk.lang.String:safeString(v) .. "=="
		elseif mod == 3 then
			v = _g.jk.lang.String:safeString(v) .. "="
		end
		do return v end
	end
end

function jk.base64.Base64Decoder:appendByte(buffer, byte)
	local nbyte = _g.jk.lang.Buffer:allocate(1)
	do _g.jk.lang.Buffer:setByte(nbyte, 0, byte) end
	do return _g.jk.lang.Buffer:append(buffer, nbyte, _g.jk.lang.Buffer:getSize(nbyte)) end
end

function jk.base64.Base64Decoder:fromLookupChar(ascii)
	local c = 0
	if ascii == 43 then
		c = 62
	elseif ascii == 47 then
		c = 63
	elseif ascii >= 48 and ascii <= 57 then
		c = ascii + 4
	elseif ascii >= 65 and ascii <= 90 then
		c = ascii - 65
	elseif ascii >= 97 and ascii <= 122 then
		c = ascii - 71
	end
	do return c end
end

function jk.base64.Base64Decoder:decode(text)
	if not (text ~= nil) then
		do return nil end
	end
	do
		local data = _util:allocate_buffer(0)
		local iter = _g.jk.lang.String:iterate(text)
		if iter ~= nil then
			local ch = 0
			while (function()
				ch = iter:getNextChar()
				do return ch end
			end)() > 0 do
				local c1 = 0
				local c2 = 0
				local c3 = 0
				local c4 = 0
				local byte1 = 0
				local byte2 = 0
				local byte3 = 0
				c1 = _g.jk.base64.Base64Decoder:fromLookupChar(ch)
				c2 = _g.jk.base64.Base64Decoder:fromLookupChar((function()
					ch = iter:getNextChar()
					do return ch end
				end)())
				byte1 = _vm:bitwise_left_shift(c1, 2) + _vm:bitwise_right_shift(c2, 4)
				data = _g.jk.base64.Base64Decoder:appendByte(data, byte1)
				ch = iter:getNextChar()
				if ch == 61 then
					do break end
				else
					c3 = _g.jk.base64.Base64Decoder:fromLookupChar(ch)
				end
				byte2 = _vm:bitwise_left_shift(_vm:bitwise_and(c2, 15), 4) + _vm:bitwise_right_shift(c3, 2)
				data = _g.jk.base64.Base64Decoder:appendByte(data, byte2)
				ch = iter:getNextChar()
				if ch == 61 then
					do break end
				else
					c4 = _g.jk.base64.Base64Decoder:fromLookupChar(ch)
				end
				byte3 = _vm:bitwise_left_shift(_vm:bitwise_and(c3, 3), 6) + c4
				data = _g.jk.base64.Base64Decoder:appendByte(data, byte3)
			end
		end
		do return data end
	end
end

jk.base64.Base64Encoder = {}
jk.base64.Base64Encoder.__index = jk.base64.Base64Encoder
_vm:set_metatable(jk.base64.Base64Encoder, {})

function jk.base64.Base64Encoder._create()
	local v = _vm:set_metatable({}, jk.base64.Base64Encoder)
	return v
end

function jk.base64.Base64Encoder:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.base64.Base64Encoder'
	self['_isType.jk.base64.Base64Encoder'] = true
end

function jk.base64.Base64Encoder:_construct0()
	jk.base64.Base64Encoder._init(self)
	return self
end

function jk.base64.Base64Encoder:toUrlSafeFormat(str)
	local v = str
	if not (v ~= nil) then
		do return nil end
	end
	v = _g.jk.lang.String:replaceString(v, "=", "")
	v = _g.jk.lang.String:replaceCharacter(v, 43, 45)
	v = _g.jk.lang.String:replaceCharacter(v, 47, 95)
	do return v end
end

function jk.base64.Base64Encoder:encodeString(str)
	if not (str ~= nil) then
		do return nil end
	end
	do return _g.jk.base64.Base64Encoder:encode(_g.jk.lang.String:toUTF8Buffer(str)) end
end

function jk.base64.Base64Encoder:encode(buffer)
	if not (buffer ~= nil) then
		do return nil end
	end
	do
		local length = _g.jk.lang.Buffer:getSize(buffer)
		local dst = _g.jk.lang.Buffer:allocate(_util:convert_to_integer((length + 2) / 3) * 4)
		local x = 0
		local dstIndex = 0
		local state = 0
		local old = 0
		do
			local srcIndex = 0
			while srcIndex < length do
				x = buffer[srcIndex + 1]
				do
					local v = (function() state = state + 1 return state end)()
					if v == 1 then
						dst[(function() local v = dstIndex dstIndex = dstIndex + 1 return v end)() + 1] = _util:convert_to_integer(_g.jk.base64.Base64Encoder:toASCIIChar(_vm:bitwise_and(_vm:bitwise_right_shift(x, 2), 63)))
					elseif v == 2 then
						dst[(function() local v = dstIndex dstIndex = dstIndex + 1 return v end)() + 1] = _util:convert_to_integer(_g.jk.base64.Base64Encoder:toASCIIChar(_vm:bitwise_or(_vm:bitwise_and(_vm:bitwise_left_shift(old, 4), 48), _vm:bitwise_and(_vm:bitwise_right_shift(x, 4), 15))))
					elseif v == 3 then
						dst[(function() local v = dstIndex dstIndex = dstIndex + 1 return v end)() + 1] = _util:convert_to_integer(_g.jk.base64.Base64Encoder:toASCIIChar(_vm:bitwise_or(_vm:bitwise_and(_vm:bitwise_left_shift(old, 2), 60), _vm:bitwise_and(_vm:bitwise_right_shift(x, 6), 3))))
						dst[(function() local v = dstIndex dstIndex = dstIndex + 1 return v end)() + 1] = _util:convert_to_integer(_g.jk.base64.Base64Encoder:toASCIIChar(_vm:bitwise_and(x, 63)))
						state = 0
					end
				end
				old = x
				do srcIndex = srcIndex + 1 end
			end
		end
		do
			local v2 = state
			if v2 == 1 then
				dst[(function() local v = dstIndex dstIndex = dstIndex + 1 return v end)() + 1] = _util:convert_to_integer(_g.jk.base64.Base64Encoder:toASCIIChar(_vm:bitwise_and(_vm:bitwise_left_shift(old, 4), 48)))
				dst[(function() local v = dstIndex dstIndex = dstIndex + 1 return v end)() + 1] = _util:convert_to_integer(61)
				dst[(function() local v = dstIndex dstIndex = dstIndex + 1 return v end)() + 1] = _util:convert_to_integer(61)
			elseif v2 == 2 then
				dst[(function() local v = dstIndex dstIndex = dstIndex + 1 return v end)() + 1] = _util:convert_to_integer(_g.jk.base64.Base64Encoder:toASCIIChar(_vm:bitwise_and(_vm:bitwise_left_shift(old, 2), 60)))
				dst[(function() local v = dstIndex dstIndex = dstIndex + 1 return v end)() + 1] = _util:convert_to_integer(61)
			end
		end
		do return _g.jk.lang.String:forBuffer(dst, "ASCII") end
	end
end

function jk.base64.Base64Encoder:toASCIIChar(lookup)
	local c = 0
	if lookup < 0 or lookup > 63 then
		do return c end
	end
	if lookup <= 25 then
		c = lookup + 65
	elseif lookup <= 51 then
		c = lookup + 71
	elseif lookup <= 61 then
		c = lookup - 4
	elseif lookup == 62 then
		c = _util:convert_to_integer(43)
	elseif lookup == 63 then
		c = _util:convert_to_integer(47)
	end
	do return c end
end
jk = jk or {}

jk.json = jk.json or {}

jk.json.JSONObject = {}

jk.json.JSONParser = {}
jk.json.JSONParser.__index = jk.json.JSONParser
_vm:set_metatable(jk.json.JSONParser, {})

function jk.json.JSONParser._create()
	local v = _vm:set_metatable({}, jk.json.JSONParser)
	return v
end

function jk.json.JSONParser:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.json.JSONParser'
	self['_isType.jk.json.JSONParser'] = true
	self.iterator = nil
end

function jk.json.JSONParser:_construct0()
	jk.json.JSONParser._init(self)
	return self
end

jk.json.JSONParser.NullObject = {}
jk.json.JSONParser.NullObject.__index = jk.json.JSONParser.NullObject
_vm:set_metatable(jk.json.JSONParser.NullObject, {})

function jk.json.JSONParser.NullObject._create()
	local v = _vm:set_metatable({}, jk.json.JSONParser.NullObject)
	return v
end

function jk.json.JSONParser.NullObject:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.json.JSONParser.NullObject'
	self['_isType.jk.json.JSONParser.NullObject'] = true
end

function jk.json.JSONParser.NullObject:_construct0()
	jk.json.JSONParser.NullObject._init(self)
	return self
end

function jk.json.JSONParser:parse(data)
	if not (data ~= nil) then
		do return nil end
	end
	if _util:is_buffer(data) then
		do return _g.jk.json.JSONParser:parseBuffer(data) end
	end
	if (_vm:get_variable_type(data) == 'string') then
		do return _g.jk.json.JSONParser:parseString(data) end
	end
	if (_vm:to_table_with_key(data, '_isType.jk.fs.File') ~= nil) then
		do return _g.jk.json.JSONParser:parseFile(data) end
	end
	do return nil end
end

function jk.json.JSONParser:parseBuffer(buffer)
	if buffer == nil then
		do return nil end
	end
	do return _g.jk.json.JSONParser:forBuffer(buffer):acceptObject() end
end

function jk.json.JSONParser:parseString(str)
	if _g.jk.lang.String:isEmpty(str) then
		do return nil end
	end
	do return _g.jk.json.JSONParser:forString(str):acceptObject() end
end

function jk.json.JSONParser:parseFile(file)
	if file == nil then
		do return nil end
	end
	do return _g.jk.json.JSONParser:parseString(file:getContentsUTF8()) end
end

function jk.json.JSONParser:forString(str)
	local v = _g.jk.json.JSONParser._construct0(_g.jk.json.JSONParser._create())
	do v:setDataString(str) end
	do return v end
end

function jk.json.JSONParser:forBuffer(buffer)
	local v = _g.jk.json.JSONParser._construct0(_g.jk.json.JSONParser._create())
	do v:setDataBuffer(buffer) end
	do return v end
end

function jk.json.JSONParser:setDataString(str)
	self.iterator = _g.jk.lang.CharacterIteratorForString:forString(str)
	do self.iterator:moveToNextChar() end
end

function jk.json.JSONParser:setDataBuffer(buffer)
	self.iterator = _g.jk.lang.CharacterIteratorForBuffer:forBuffer(buffer)
	do self.iterator:moveToNextChar() end
end

function jk.json.JSONParser:skipSpaces()
	while true do
		if self.iterator:hasEnded() then
			do break end
		end
		do
			local c = self.iterator:getCurrentChar()
			if c == 32 or c == 9 or c == 13 or c == 10 then
				do self.iterator:moveToNextChar() end
				goto _continue1
			end
			do break end
		end
		::_continue1::
	end
end

function jk.json.JSONParser:acceptChar(c)
	do self:skipSpaces() end
	if self.iterator:getCurrentChar() == c then
		do self.iterator:moveToNextChar() end
		do return true end
	end
	do return false end
end

function jk.json.JSONParser:acceptString()
	do self:skipSpaces() end
	do
		local ss = self.iterator:getCurrentChar()
		if ss ~= 39 and ss ~= 34 then
			do return nil end
		end
		do
			local i = 0
			local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
			while true do
				local c = self.iterator:getNextChar()
				do i = i + 1 end
				if _g.jk.lang.Character:isEOF(c) then
					do
						local n = 0
						while n < i do
							do self.iterator:moveToPreviousChar() end
							do n = n + 1 end
						end
					end
					do return nil end
				end
				if c == ss then
					do self.iterator:moveToNextChar() end
					do break end
				end
				if c == 92 then
					c = self.iterator:getNextChar()
					if c == 117 then
						local v = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
						local x = 0
						while x < 4 do
							if self.iterator:hasEnded() then
								do break end
							end
							do v:appendCharacter(self.iterator:getNextChar()) end
							do x = x + 1 end
						end
						c = _g.jk.lang.String:toIntegerFromHex(v:toString())
					elseif c == 116 then
						c = 9
					elseif c == 114 then
						c = 13
					elseif c == 110 then
						c = 10
					elseif c == 98 then
						c = 8
					elseif c == 102 then
						c = 12
					end
				end
				do sb:appendCharacter(c) end
			end
			do return sb:toString() end
		end
	end
end

function jk.json.JSONParser:acceptBoolean()
	do self:skipSpaces() end
	do
		local ss = self.iterator:getCurrentChar()
		if ss ~= 116 and ss ~= 102 then
			do return nil end
		end
		do
			local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
			do sb:appendCharacter(ss) end
			do
				local li = 5
				if ss == 116 then
					li = 4
				end
				do
					local btc = 0
					while true do
						local c = self.iterator:getNextChar()
						do btc = btc + 1 end
						if c ~= 97 and c ~= 108 and c ~= 115 and c ~= 101 and c ~= 114 and c ~= 117 then
							do self.iterator:moveToNextChar() end
							do btc = btc + 1 end
							do break end
						end
						do sb:appendCharacter(c) end
						if sb:count() == li then
							do self.iterator:moveToNextChar() end
							do btc = btc + 1 end
							do break end
						end
					end
					do
						local v = sb:toString()
						if li == 4 and "true" == v then
							do return _g.jk.lang.Boolean:asObject(true) end
						end
						if li == 5 and "false" == v then
							do return _g.jk.lang.Boolean:asObject(false) end
						end
						do
							local i = 0
							while i < btc do
								do self.iterator:moveToPreviousChar() end
								do i = i + 1 end
							end
							do return nil end
						end
					end
				end
			end
		end
	end
end

function jk.json.JSONParser:acceptNumber()
	do self:skipSpaces() end
	do
		local ss = self.iterator:getCurrentChar()
		if ss ~= 45 and ss ~= 43 and ss ~= 46 and (ss < 48 or ss > 57) then
			do return nil end
		end
		do
			local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
			do sb:appendCharacter(ss) end
			while true do
				local c = self.iterator:getNextChar()
				if c ~= 46 and c ~= 101 and c ~= 69 and c ~= 45 and (c < 48 or c > 57) then
					do break end
				end
				do sb:appendCharacter(c) end
			end
			do
				local s = sb:toString()
				if _g.jk.lang.String:getIndexOfCharacter(s, 46, 0) > -1 then
					do return _g.jk.lang.Double:asObject(_g.jk.lang.Double:asDouble(s)) end
				end
				do
					local value = _g.jk.lang.String:toLong(s)
					if value >= -2147483648 and value <= 2147483647 then
						do return _g.jk.lang.Integer:asObject(value) end
					end
					do return _g.jk.lang.LongInteger:asObject(value) end
				end
			end
		end
	end
end

function jk.json.JSONParser:acceptNull()
	do self:skipSpaces() end
	do
		local ss = self.iterator:getCurrentChar()
		if ss ~= 110 then
			do return nil end
		end
		do
			local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
			do sb:appendCharacter(ss) end
			do
				local btc = 0
				while true do
					local c = self.iterator:getNextChar()
					do btc = btc + 1 end
					if c ~= 117 and c ~= 108 then
						do self.iterator:moveToNextChar() end
						do btc = btc + 1 end
						do break end
					end
					do sb:appendCharacter(c) end
					if sb:count() == 4 then
						do self.iterator:moveToNextChar() end
						do btc = btc + 1 end
						do break end
					end
				end
				if "null" == sb:toString() then
					do return _g.jk.json.JSONParser.NullObject._construct0(_g.jk.json.JSONParser.NullObject._create()) end
				end
				do
					local i = 0
					while i < btc do
						do self.iterator:moveToPreviousChar() end
						do i = i + 1 end
					end
					do return nil end
				end
			end
		end
	end
end

function jk.json.JSONParser:acceptObject()
	if self:acceptChar(91) then
		local v = _g.jk.lang.DynamicVector._construct0(_g.jk.lang.DynamicVector._create())
		while true do
			if self:acceptChar(93) then
				do break end
			end
			do
				local o = self:acceptObject()
				if o == nil then
					do return nil end
				end
				do v:appendObject(o) end
				do self:acceptChar(44) end
			end
		end
		do return v end
	end
	if self:acceptChar(123) then
		local v = _g.jk.lang.DynamicMap._construct0(_g.jk.lang.DynamicMap._create())
		while true do
			if self:acceptChar(125) then
				do break end
			end
			do
				local key = self:acceptString()
				if key == nil then
					do return nil end
				end
				if self:acceptChar(58) == false then
					do return nil end
				end
				do
					local val = self:acceptObject()
					if val == nil then
						do return nil end
					end
					if (_vm:to_table_with_key(val, '_isType.jk.json.JSONParser.NullObject') ~= nil) then
						do v:setObject(key, nil) end
					else
						do v:setObject(key, val) end
					end
					do self:acceptChar(44) end
				end
			end
		end
		do return v end
	end
	do
		local s = self:acceptString()
		if s ~= nil then
			do return s end
		end
		do
			local b = self:acceptBoolean()
			if b ~= nil then
				do return b end
			end
			do
				local n = self:acceptNull()
				if n ~= nil then
					do return n end
				end
				do
					local v = self:acceptNumber()
					if v ~= nil then
						do return v end
					end
					do return nil end
				end
			end
		end
	end
end

function jk.json.JSONParser:getNextToken()
	if self:acceptChar(91) then
		do return "[" end
	end
	if self:acceptChar(93) then
		do return "]" end
	end
	if self:acceptChar(123) then
		do return "{" end
	end
	if self:acceptChar(125) then
		do return "}" end
	end
	if self:acceptChar(44) then
		do return "," end
	end
	do
		local s = self:acceptString()
		if s ~= nil then
			do return s end
		end
		do
			local b = self:acceptBoolean()
			if b ~= nil then
				do return b end
			end
			do
				local n = self:acceptNull()
				if n ~= nil then
					do return n end
				end
				do
					local v = self:acceptNumber()
					if v ~= nil then
						do return v end
					end
					do return nil end
				end
			end
		end
	end
end

function jk.json.JSONParser:pushData(string)
	if not (string ~= nil) then
		do return end
	end
	if self.iterator == nil then
		do self:setDataString(string) end
		do return end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		while true do
			local c = self.iterator:getNextChar()
			if _g.jk.lang.Character:isEOF(c) then
				do break end
			end
			do sb:appendCharacter(c) end
		end
		do sb:appendString(string) end
		do self:setDataString(sb:toString()) end
	end
end

jk.json.JSONObjectAdapterExplicit = {}
jk.json.JSONObjectAdapterExplicit.__index = jk.json.JSONObjectAdapterExplicit
_vm:set_metatable(jk.json.JSONObjectAdapterExplicit, {})

function jk.json.JSONObjectAdapterExplicit._create()
	local v = _vm:set_metatable({}, jk.json.JSONObjectAdapterExplicit)
	return v
end

function jk.json.JSONObjectAdapterExplicit:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.json.JSONObjectAdapterExplicit'
	self['_isType.jk.json.JSONObjectAdapterExplicit'] = true
	self['_isType.jk.json.JSONObject'] = true
end

function jk.json.JSONObjectAdapterExplicit:_construct0()
	jk.json.JSONObjectAdapterExplicit._init(self)
	return self
end

function jk.json.JSONObjectAdapterExplicit:asJsonValue(value)
	if not (value ~= nil) then
		do return nil end
	end
	if (_vm:to_table_with_key(value, '_isType.jk.json.JSONObject') ~= nil) then
		local oj = value
		do return oj:toJsonObject() end
	end
	do return value end
end

function jk.json.JSONObjectAdapterExplicit:toDynamicMap()
	do return _vm:to_table_with_key(self:toJsonObject(), '_isType.jk.lang.DynamicMap') end
end

function jk.json.JSONObjectAdapterExplicit:toObjectMap()
	local dm = self:toDynamicMap()
	if not (dm ~= nil) then
		do return nil end
	end
	do return dm:toObjectMap() end
end

function jk.json.JSONObjectAdapterExplicit:toJsonObject()
end

function jk.json.JSONObjectAdapterExplicit:fromJsonObject(o)
end

jk.json.JSONObjectAdapter = {}
jk.json.JSONObjectAdapter.__index = jk.json.JSONObjectAdapter
_vm:set_metatable(jk.json.JSONObjectAdapter, {})

function jk.json.JSONObjectAdapter._create()
	local v = _vm:set_metatable({}, jk.json.JSONObjectAdapter)
	return v
end

function jk.json.JSONObjectAdapter:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.json.JSONObjectAdapter'
	self['_isType.jk.json.JSONObjectAdapter'] = true
	self['_isType.jk.json.JSONObject'] = true
end

function jk.json.JSONObjectAdapter:_construct0()
	jk.json.JSONObjectAdapter._init(self)
	return self
end

function jk.json.JSONObjectAdapter:asJsonValue(value)
	if not (value ~= nil) then
		do return nil end
	end
	if (_vm:to_table_with_key(value, '_isType.jk.json.JSONObject') ~= nil) then
		local oj = value
		do return oj:toJsonObject() end
	end
	do return value end
end

function jk.json.JSONObjectAdapter:toDynamicMap()
	do return _vm:to_table_with_key(self:toJsonObject(), '_isType.jk.lang.DynamicMap') end
end

function jk.json.JSONObjectAdapter:toObjectMap()
	local dm = self:toDynamicMap()
	if not (dm ~= nil) then
		do return nil end
	end
	do return dm:toObjectMap() end
end

function jk.json.JSONObjectAdapter:toJsonObject()
end

function jk.json.JSONObjectAdapter:fromJsonObject(o)
end

jk.json.JSONEncoder = {}
jk.json.JSONEncoder.__index = jk.json.JSONEncoder
_vm:set_metatable(jk.json.JSONEncoder, {})

function jk.json.JSONEncoder._create()
	local v = _vm:set_metatable({}, jk.json.JSONEncoder)
	return v
end

function jk.json.JSONEncoder:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.json.JSONEncoder'
	self['_isType.jk.json.JSONEncoder'] = true
	self.niceFormatting = true
	self.stringFormattedBoolean = false
	self.stringFormattedNumber = false
	self.newJSONFormat = true
	self.encodeNullAsNull = false
	self.isNewLine = true
	self.mysb = nil
end

function jk.json.JSONEncoder:_construct0()
	jk.json.JSONEncoder._init(self)
	return self
end

function jk.json.JSONEncoder:print(line, indent, startline, endline, sb)
	if startline and self.isNewLine == false then
		if self.niceFormatting then
			do sb:appendCharacter(10) end
		end
		self.isNewLine = true
	end
	if self.isNewLine and self.niceFormatting then
		do
			local n = 0
			while n < indent do
				do sb:appendCharacter(9) end
				do n = n + 1 end
			end
		end
	end
	do sb:appendString(line) end
	if endline then
		if self.niceFormatting then
			do sb:appendCharacter(10) end
		end
		self.isNewLine = true
	else
		self.isNewLine = false
	end
end

function jk.json.JSONEncoder:encodeArray(cc, indent, sb)
	do self:print("[", indent, false, true, sb) end
	do
		local first = true
		if cc ~= nil then
			local n = 0
			local m = #cc
			do
				n = 0
				while n < m do
					local o = cc[n + 1]
					if o ~= nil then
						if first == false then
							do self:print(",", indent, false, true, sb) end
						end
						do self:encodeObject(o, indent + 1, sb) end
						first = false
					end
					do n = n + 1 end
				end
			end
		end
		do self:print("]", indent, true, false, sb) end
	end
end

function jk.json.JSONEncoder:encodeDynamicVector(cc, indent, sb)
	do self:print("[", indent, false, true, sb) end
	do
		local first = true
		local array = cc:toVector()
		if array ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(array)
			do
				n = 0
				while n < m do
					local o = array[n + 1]
					if o ~= nil then
						if first == false then
							do self:print(",", indent, false, true, sb) end
						end
						do self:encodeObject(o, indent + 1, sb) end
						first = false
					end
					do n = n + 1 end
				end
			end
		end
		do self:print("]", indent, true, false, sb) end
	end
end

function jk.json.JSONEncoder:encodeVector(cc, indent, sb)
	do self:print("[", indent, false, true, sb) end
	do
		local first = true
		if cc ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(cc)
			do
				n = 0
				while n < m do
					local o = cc[n + 1]
					if o ~= nil then
						if first == false then
							do self:print(",", indent, false, true, sb) end
						end
						do self:encodeObject(o, indent + 1, sb) end
						first = false
					end
					do n = n + 1 end
				end
			end
		end
		do self:print("]", indent, true, false, sb) end
	end
end

function jk.json.JSONEncoder:encodeMap(map, indent, sb)
	do self:print("{", indent, false, true, sb) end
	do
		local first = true
		local it = _g.jk.lang.Map:iterateKeys(map)
		while it ~= nil do
			local keyo = it:next()
			if not (keyo ~= nil) then
				do break end
			end
			do
				local key = _g.jk.lang.String:asString(keyo)
				if not (key ~= nil) then
					goto _continue2
				end
				if not first then
					do self:print(",", indent, false, true, sb) end
				end
				do self:encodeString(key, indent + 1, sb) end
				if self.niceFormatting then
					do sb:appendString(" : ") end
				else
					do sb:appendCharacter(58) end
				end
				do self:encodeObject(map[keyo], indent + 1, sb) end
				first = false
			end
			::_continue2::
		end
		do self:print("}", indent, true, false, sb) end
	end
end

function jk.json.JSONEncoder:encodeDynamicMap(map, indent, sb)
	do self:print("{", indent, false, true, sb) end
	do
		local first = true
		local it = map:iterateKeys()
		while it ~= nil do
			local key = it:next()
			if not (key ~= nil) then
				do break end
			end
			if first == false then
				do self:print(",", indent, false, true, sb) end
			end
			do self:encodeString(key, indent + 1, sb) end
			if self.niceFormatting then
				do sb:appendString(" : ") end
			else
				do sb:appendCharacter(58) end
			end
			do self:encodeObject(map:get(key), indent + 1, sb) end
			first = false
		end
		do self:print("}", indent, true, false, sb) end
	end
end

function jk.json.JSONEncoder:encodeKeyValueList(list, indent, sb)
	do self:print("{", indent, false, true, sb) end
	do
		local first = true
		local it = list:iterate()
		while it ~= nil do
			local pair = it:next()
			if pair == nil then
				do break end
			end
			if first == false then
				do self:print(",", indent, false, true, sb) end
			end
			do self:encodeString(pair.key, indent + 1, sb) end
			if self.niceFormatting then
				do sb:appendString(" : ") end
			else
				do sb:appendCharacter(58) end
			end
			do self:encodeString(pair.value, indent + 1, sb) end
			first = false
		end
		do self:print("}", indent, true, false, sb) end
	end
end

function jk.json.JSONEncoder:encodeString(s, indent, sb)
	if self.mysb == nil then
		self.mysb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	else
		do self.mysb:clear() end
	end
	do self.mysb:appendCharacter(34) end
	do
		local it = _g.jk.lang.String:iterate(s)
		while true do
			local c = it:getNextChar()
			if _g.jk.lang.Character:isEOF(c) then
				do break end
			end
			if self.newJSONFormat then
				if c == 9 then
					do self.mysb:appendString("\\t") end
					goto _continue3
				end
				if c == 10 then
					do self.mysb:appendString("\\n") end
					goto _continue3
				end
				if c == 13 then
					do self.mysb:appendString("\\r") end
					goto _continue3
				end
				if c == 8 then
					do self.mysb:appendString("\\b") end
					goto _continue3
				end
				if c == 12 then
					do self.mysb:appendString("\\f") end
					goto _continue3
				end
			end
			if c == 34 then
				do self.mysb:appendCharacter(92) end
			elseif c == 92 then
				do self.mysb:appendCharacter(92) end
			end
			do self.mysb:appendCharacter(c) end
			::_continue3::
		end
		do self.mysb:appendCharacter(34) end
		do self:print(self.mysb:toString(), indent, false, false, sb) end
	end
end

function jk.json.JSONEncoder:encodeBoolean(b, indent, sb)
	if self.mysb == nil then
		self.mysb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	else
		do self.mysb:clear() end
	end
	if self.stringFormattedBoolean then
		do self.mysb:appendCharacter(34) end
		do self.mysb:appendString(_g.jk.lang.String:forBoolean(b)) end
		do self.mysb:appendCharacter(34) end
	else
		do self.mysb:appendString(_g.jk.lang.String:forBoolean(b)) end
	end
	do self:print(self.mysb:toString(), indent, false, false, sb) end
end

function jk.json.JSONEncoder:encodeNumber(o, indent, sb)
	if self.mysb == nil then
		self.mysb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	else
		do self.mysb:clear() end
	end
	if self.stringFormattedNumber then
		do self.mysb:appendCharacter(34) end
		do self.mysb:appendString(_g.jk.lang.String:asString(o)) end
		do self.mysb:appendCharacter(34) end
	elseif (_vm:to_table_with_key(o, '_isType.jk.lang.IntegerObject') ~= nil) then
		do self.mysb:appendInteger(_g.jk.lang.Integer:asInteger(o)) end
	elseif _vm:to_table_with_key(o, '_isType.jk.lang.LongIntegerObject') ~= nil then
		do self.mysb:appendLong(_g.jk.lang.LongInteger:asLong(o)) end
	elseif _vm:to_table_with_key(o, '_isType.jk.lang.DoubleObject') ~= nil then
		do self.mysb:appendDouble(_g.jk.lang.Double:asDouble(o)) end
	else
		do self.mysb:appendString("") end
	end
	do self:print(self.mysb:toString(), indent, false, false, sb) end
end

function jk.json.JSONEncoder:encodeObject(o, indent, sb)
	if not (o ~= nil) then
		if self.encodeNullAsNull then
			do self:print("null", indent, false, false, sb) end
		else
			do self:encodeString("", indent, sb) end
		end
	elseif (_vm:to_table_with_key(o, '_isType.jk.json.JSONObject') ~= nil) then
		do self:encodeObject(o:toJsonObject(), indent, sb) end
	elseif (function(x) return x ~= nil and _vm:get_variable_type(x) == 'table' and not x._isClassInstance == true and #x > 0 end)(o) then
		do self:encodeArray(o, indent, sb) end
	elseif (function(x) return x ~= nil and _vm:get_variable_type(x) == 'table' and not x._isClassInstance == true and #x > 0 end)(o) then
		do self:encodeVector(o, indent, sb) end
	elseif (function(x) return x ~= nil and _vm:get_variable_type(x) == 'table' and not x._isClassInstance == true and #x < 1 end)(o) then
		do self:encodeMap(o, indent, sb) end
	elseif _util:is_buffer(o) then
		do self:encodeString(_g.jk.base64.Base64Encoder:encode(o), indent, sb) end
	elseif (_vm:get_variable_type(o) == 'string') then
		do self:encodeString(o, indent, sb) end
	elseif (_vm:to_table_with_key(o, '_isType.jk.lang.DynamicMap') ~= nil) then
		do self:encodeDynamicMap(o, indent, sb) end
	elseif (_vm:to_table_with_key(o, '_isType.jk.lang.DynamicVector') ~= nil) then
		do self:encodeDynamicVector(o, indent, sb) end
	elseif (_vm:to_table_with_key(o, '_isType.jk.lang.KeyValueListForStrings') ~= nil) then
		do self:encodeKeyValueList(o, indent, sb) end
	elseif (_vm:to_table_with_key(o, '_isType.jk.lang.StringObject') ~= nil) then
		do self:encodeString(o:toString(), indent, sb) end
	elseif (_vm:to_table_with_key(o, '_isType.jk.lang.BufferObject') ~= nil) then
		do self:encodeString(_g.jk.base64.Base64Encoder:encode(o:toBuffer()), indent, sb) end
	elseif (_vm:to_table_with_key(o, '_isType.jk.lang.ArrayObject') ~= nil) then
		local aa = o:toArray()
		do self:encodeArray(aa, indent, sb) end
	elseif (_vm:to_table_with_key(o, '_isType.jk.lang.VectorObject') ~= nil) then
		local vv = o:toVector()
		do self:encodeVector(vv, indent, sb) end
	elseif (_vm:to_table_with_key(o, '_isType.jk.lang.IntegerObject') ~= nil) or (_vm:to_table_with_key(o, '_isType.jk.lang.LongIntegerObject') ~= nil) or (_vm:to_table_with_key(o, '_isType.jk.lang.DoubleObject') ~= nil) then
		do self:encodeNumber(o, indent, sb) end
	elseif (_vm:to_table_with_key(o, '_isType.jk.lang.CharacterObject') ~= nil) then
		do self:encodeString(_g.jk.lang.String:asString(o), indent, sb) end
	elseif (_vm:to_table_with_key(o, '_isType.jk.lang.BooleanObject') ~= nil) then
		do self:encodeBoolean(_g.jk.lang.Boolean:asBoolean(o, false), indent, sb) end
	else
		do self:encodeString("", indent, sb) end
	end
end

function jk.json.JSONEncoder:encode(o, niceFormatting, stringFormattedNumber)
	local v = _g.jk.json.JSONEncoder._construct0(_g.jk.json.JSONEncoder._create())
	do v:setStringFormattedBoolean(true) end
	do v:setStringFormattedNumber(stringFormattedNumber) end
	do v:setNiceFormatting(niceFormatting) end
	do return v:execute(o) end
end

function jk.json.JSONEncoder:execute(o)
	local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	do self:encodeObject(o, 0, sb) end
	do return sb:toString() end
end

function jk.json.JSONEncoder:encodeToBuilder(o, sb)
	if not (sb ~= nil) then
		do return end
	end
	do
		local str = _g.jk.json.JSONEncoder._construct0(_g.jk.json.JSONEncoder._create()):setEncodeNullAsNull(true):execute(o)
		if str ~= nil then
			do sb:appendString(str) end
		end
	end
end

function jk.json.JSONEncoder:toString(o)
	local v = _g.jk.json.JSONEncoder._construct0(_g.jk.json.JSONEncoder._create())
	do v:setStringFormattedBoolean(false) end
	do v:setStringFormattedNumber(false) end
	do v:setNiceFormatting(true) end
	do v:setEncodeNullAsNull(true) end
	do return v:execute(o) end
end

function jk.json.JSONEncoder:toCompactString(o)
	local v = _g.jk.json.JSONEncoder._construct0(_g.jk.json.JSONEncoder._create())
	do v:setStringFormattedBoolean(false) end
	do v:setStringFormattedNumber(false) end
	do v:setNiceFormatting(false) end
	do v:setEncodeNullAsNull(true) end
	do return v:execute(o) end
end

function jk.json.JSONEncoder:getNiceFormatting()
	do return self.niceFormatting end
end

function jk.json.JSONEncoder:setNiceFormatting(v)
	self.niceFormatting = v
	do return self end
end

function jk.json.JSONEncoder:getStringFormattedBoolean()
	do return self.stringFormattedBoolean end
end

function jk.json.JSONEncoder:setStringFormattedBoolean(v)
	self.stringFormattedBoolean = v
	do return self end
end

function jk.json.JSONEncoder:getStringFormattedNumber()
	do return self.stringFormattedNumber end
end

function jk.json.JSONEncoder:setStringFormattedNumber(v)
	self.stringFormattedNumber = v
	do return self end
end

function jk.json.JSONEncoder:getNewJSONFormat()
	do return self.newJSONFormat end
end

function jk.json.JSONEncoder:setNewJSONFormat(v)
	self.newJSONFormat = v
	do return self end
end

function jk.json.JSONEncoder:getEncodeNullAsNull()
	do return self.encodeNullAsNull end
end

function jk.json.JSONEncoder:setEncodeNullAsNull(v)
	self.encodeNullAsNull = v
	do return self end
end
jk = jk or {}

jk.sha = jk.sha or {}

jk.sha.SHAEncoder = {}
jk.sha.SHAEncoder.__index = jk.sha.SHAEncoder
_vm:set_metatable(jk.sha.SHAEncoder, {})

jk.sha.SHAEncoder.ANY = 0
jk.sha.SHAEncoder.SHA1 = 1
jk.sha.SHAEncoder.SHA224 = 2
jk.sha.SHAEncoder.SHA256 = 3
jk.sha.SHAEncoder.SHA384 = 4
jk.sha.SHAEncoder.SHA512 = 5

function jk.sha.SHAEncoder._create()
	local v = _vm:set_metatable({}, jk.sha.SHAEncoder)
	return v
end

function jk.sha.SHAEncoder:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.sha.SHAEncoder'
	self['_isType.jk.sha.SHAEncoder'] = true
end

function jk.sha.SHAEncoder:_construct0()
	jk.sha.SHAEncoder._init(self)
	return self
end

function jk.sha.SHAEncoder:create()
	do return _g.jk.sha.SHAEncoderGeneric._construct0(_g.jk.sha.SHAEncoderGeneric._create()) end
end

function jk.sha.SHAEncoder:getSha1HashForString(data)
	if not (data ~= nil) then
		do return nil end
	end
	do
		local enc = _g.jk.sha.SHAEncoder:create()
		if not (enc ~= nil) then
			do return nil end
		end
		do return enc:encodeAsString(_g.jk.lang.String:toUTF8Buffer(data), _g.jk.sha.SHAEncoder.SHA1) end
	end
end

function jk.sha.SHAEncoder:getSha1HashForBuffer(data)
	if not (data ~= nil) then
		do return nil end
	end
	do
		local enc = _g.jk.sha.SHAEncoder:create()
		if not (enc ~= nil) then
			do return nil end
		end
		do return enc:encodeAsString(data, _g.jk.sha.SHAEncoder.SHA1) end
	end
end

function jk.sha.SHAEncoder:encodeAsBuffer(data, version)
end

function jk.sha.SHAEncoder:encodeAsString(data, version)
end

jk.sha.SHAEncoderGeneric = _g.jk.sha.SHAEncoder._create()
jk.sha.SHAEncoderGeneric.__index = jk.sha.SHAEncoderGeneric
_vm:set_metatable(jk.sha.SHAEncoderGeneric, {
	__index = _g.jk.sha.SHAEncoder
})

function jk.sha.SHAEncoderGeneric._create()
	local v = _vm:set_metatable({}, jk.sha.SHAEncoderGeneric)
	return v
end

function jk.sha.SHAEncoderGeneric:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.sha.SHAEncoderGeneric'
	self['_isType.jk.sha.SHAEncoderGeneric'] = true
end

function jk.sha.SHAEncoderGeneric:_construct0()
	jk.sha.SHAEncoderGeneric._init(self)
	do _g.jk.sha.SHAEncoder._construct0(self) end
	return self
end

function jk.sha.SHAEncoderGeneric:encodeAsBuffer(data, version)
	if not (data ~= nil) then
		do return nil end
	end
	do
		local algorithm = 0
		if _g.jk.sha.SHAEncoder.ANY == version or _g.jk.sha.SHAEncoder.SHA1 == version then
			algorithm = 128
		elseif _g.jk.sha.SHAEncoder.SHA256 == version then
			algorithm = 256
		elseif _g.jk.sha.SHAEncoder.SHA384 == version then
			algorithm = 384
		elseif _g.jk.sha.SHAEncoder.SHA512 == version then
			algorithm = 512
		end
		if not (algorithm ~= 0) then
			do return nil end
		end
		do
			local sha = _g.jk.sha.SHAEncoderGeneric.SHA._construct0(_g.jk.sha.SHAEncoderGeneric.SHA._create())
			do sha:encode(data, algorithm) end
			do return sha:digest() end
		end
	end
end

function jk.sha.SHAEncoderGeneric:encodeAsString(data, version)
	local digest = self:encodeAsBuffer(data, version)
	if not (digest ~= nil) then
		do return nil end
	end
	do
		local result = _g.jk.lang.String:forBufferHex(digest)
		do return result end
	end
end

jk.sha.SHAEncoderGeneric.SHA = {}
jk.sha.SHAEncoderGeneric.SHA.__index = jk.sha.SHAEncoderGeneric.SHA
_vm:set_metatable(jk.sha.SHAEncoderGeneric.SHA, {})

function jk.sha.SHAEncoderGeneric.SHA._create()
	local v = _vm:set_metatable({}, jk.sha.SHAEncoderGeneric.SHA)
	return v
end

function jk.sha.SHAEncoderGeneric.SHA:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.sha.SHAEncoderGeneric.SHA'
	self['_isType.jk.sha.SHAEncoderGeneric.SHA'] = true
	self.sha128 = 160
	self.sha256 = 256
	self.sha384 = 384
	self.sha512 = 512
	self.blockSize512 = 512
	self.blockSize1024 = 1024
	self.block64 = 448
	self.block128 = 896
	self.digestLength = 0
	self.blockBitSize = 0
	self.k = nil
	self.k2 = nil
	self.hash1 = nil
	self.hash2 = nil
	self.input = nil
	self.result = nil
end

function jk.sha.SHAEncoderGeneric.SHA:_construct0()
	jk.sha.SHAEncoderGeneric.SHA._init(self)
	return self
end

function jk.sha.SHAEncoderGeneric.SHA:encode(buf, version)
	if not (buf ~= nil) then
		do return end
	end
	self.input = buf
	if version == self.sha384 or version == self.sha512 then
		self.k2 = {
			4794697086780616704,
			8158064640168780800,
			-9223372036854775808,
			-9223372036854775808,
			4131703408338449408,
			6480981068601479168,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			1334009975649890304,
			2608012711638118912,
			6128411473006801920,
			8268148722764580864,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			1135362057144423808,
			2597628984639134720,
			3308224258029322752,
			5365058923640841216,
			6679025012923563008,
			8573033837759648768,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			489312712824947328,
			1452737877330783744,
			2861767655752347648,
			3322285676063803392,
			5560940570517710848,
			5996557281743188992,
			7280758554555802624,
			8532644243296464896,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			1182934255886127616,
			1847814050463011072,
			2177327727835720448,
			2830643537854262272,
			3796741975233480704,
			4115178125766777344,
			5681478168544905216,
			6601373596472566784,
			7507060721942968320,
			8399075790359080960,
			8693463985226723328,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			-9223372036854775808,
			500013540394364864,
			748580250866718848,
			1242879168328830464,
			1977374033974150912,
			2944078676154940416,
			3659926193048069120,
			4368137639120453120,
			4836135668995329024,
			5532061633213251584,
			6448918945643986944,
			6902733635092674560,
			7801388544844847104
		}
	end
	if version == 128 then
		self.digestLength = self.sha128
		self.blockBitSize = self.blockSize512
		self.hash1 = {
			1732584193,
			4023233417,
			2562383102,
			271733878,
			3285377520
		}
	elseif version == self.sha256 then
		self.digestLength = self.sha256
		self.blockBitSize = self.blockSize512
		self.hash1 = {
			1779033703,
			3144134277,
			1013904242,
			2773480762,
			1359893119,
			2600822924,
			528734635,
			1541459225
		}
		self.k = {
			1116352408,
			1899447441,
			3049323471,
			3921009573,
			961987163,
			1508970993,
			2453635748,
			2870763221,
			3624381080,
			310598401,
			607225278,
			1426881987,
			1925078388,
			2162078206,
			2614888103,
			3248222580,
			3835390401,
			4022224774,
			264347078,
			604807628,
			770255983,
			1249150122,
			1555081692,
			1996064986,
			2554220882,
			2821834349,
			2952996808,
			3210313671,
			3336571891,
			3584528711,
			113926993,
			338241895,
			666307205,
			773529912,
			1294757372,
			1396182291,
			1695183700,
			1986661051,
			2177026350,
			2456956037,
			2730485921,
			2820302411,
			3259730800,
			3345764771,
			3516065817,
			3600352804,
			4094571909,
			275423344,
			430227734,
			506948616,
			659060556,
			883997877,
			958139571,
			1322822218,
			1537002063,
			1747873779,
			1955562222,
			2024104815,
			2227730452,
			2361852424,
			2428436474,
			2756734187,
			3204031479,
			3329325298
		}
	elseif version == self.sha384 then
		self.digestLength = self.sha384
		self.blockBitSize = self.blockSize1024
		self.hash2 = {
			-9223372036854775808,
			7105036623409894400,
			-9223372036854775808,
			1526699215303891200,
			7436329637833083904,
			-9223372036854775808,
			-9223372036854775808,
			5167115440072839168
		}
	else
		self.digestLength = self.sha512
		self.blockBitSize = self.blockSize1024
		self.hash2 = {
			7640891576956012544,
			-9223372036854775808,
			4354685564936845312,
			-9223372036854775808,
			5840696475078000640,
			-9223372036854775808,
			2270897969802886400,
			6620516959819538432
		}
	end
end

function jk.sha.SHAEncoderGeneric.SHA:digest()
	if not (self.input ~= nil) then
		do return nil end
	end
	if self.result ~= nil then
		do return self.result end
	end
	do
		local ptr = self:bitPadding(self.input)
		local messageBlocks = self:blocks(ptr, _util:convert_to_integer(self.blockBitSize / 8))
		if messageBlocks ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(messageBlocks)
			do
				n = 0
				while n < m do
					local block = messageBlocks[n + 1]
					if block ~= nil then
						if self.blockBitSize == self.blockSize512 then
							do self:shaProcess32(block) end
						else
							do self:shaProcess64(block) end
						end
					end
					do n = n + 1 end
				end
			end
		end
		do
			local ret = _util:allocate_buffer(_util:convert_to_integer(self.digestLength / 8))
			if self.blockBitSize == self.blockSize512 then
				local idx = 0
				if self.hash1 ~= nil then
					local n2 = 0
					local m2 = #self.hash1
					do
						n2 = 0
						while n2 < m2 do
							local element = self.hash1[n2 + 1]
							local pos = idx * 4
							ret[pos + 1] = _vm:bitwise_and(_vm:bitwise_right_shift(element, 24), 255)
							ret[pos + 1 + 1] = _vm:bitwise_and(_vm:bitwise_right_shift(element, 16), 255)
							ret[pos + 2 + 1] = _vm:bitwise_and(_vm:bitwise_right_shift(element, 8), 255)
							ret[pos + 3 + 1] = _vm:bitwise_and(element, 255)
							idx = idx + 1
							do n2 = n2 + 1 end
						end
					end
				end
			else
				local idx = 0
				if self.hash2 ~= nil then
					local n3 = 0
					local m3 = #self.hash2
					do
						n3 = 0
						while n3 < m3 do
							local element = self.hash2[n3 + 1]
							if self.digestLength == self.sha384 and idx == 6 then
								do break end
							end
							do
								local pos = idx * 8
								ret[pos + 1] = _vm:bitwise_and(_vm:bitwise_right_shift(element, 56), 255)
								ret[pos + 1 + 1] = _vm:bitwise_and(_vm:bitwise_right_shift(element, 48), 255)
								ret[pos + 2 + 1] = _vm:bitwise_and(_vm:bitwise_right_shift(element, 40), 255)
								ret[pos + 3 + 1] = _vm:bitwise_and(_vm:bitwise_right_shift(element, 32), 255)
								ret[pos + 4 + 1] = _vm:bitwise_and(_vm:bitwise_right_shift(element, 24), 255)
								ret[pos + 5 + 1] = _vm:bitwise_and(_vm:bitwise_right_shift(element, 16), 255)
								ret[pos + 6 + 1] = _vm:bitwise_and(_vm:bitwise_right_shift(element, 8), 255)
								ret[pos + 7 + 1] = _vm:bitwise_and(element, 255)
								idx = idx + 1
							end
							do n3 = n3 + 1 end
						end
					end
				end
			end
			self.result = ret
			do return ret end
		end
	end
end

function jk.sha.SHAEncoderGeneric.SHA:shaProcess32(block)
	local kcount = 0
	if self.digestLength == self.sha128 then
		kcount = 80
	else
		kcount = #self.k
	end
	do
		local output = _vm:allocate_array(kcount)
		do
			local t = 0
			while t < #output do
				if t <= 15 then
					local index = t * 4
					output[t + 1] = _vm:bitwise_left_shift(block[index + 1], 24)
					output[t + 1] = _vm:bitwise_or(output[t + 1], _vm:bitwise_left_shift(block[index + 1 + 1], 16))
					output[t + 1] = _vm:bitwise_or(output[t + 1], _vm:bitwise_left_shift(block[index + 2 + 1], 8))
					output[t + 1] = _vm:bitwise_or(output[t + 1], block[index + 3 + 1])
				elseif self.digestLength == self.sha128 then
					output[t + 1] = _vm:bitwise_xor(_vm:bitwise_xor(_vm:bitwise_xor(self:rotateLeft(output[t - 3 + 1], 1), self:rotateLeft(output[t - 8 + 1], 1)), self:rotateLeft(output[t - 14 + 1], 1)), self:rotateLeft(output[t - 16 + 1], 1))
				else
					local s0 = _vm:bitwise_xor(_vm:bitwise_xor(self:rotateRight32(output[t - 15 + 1], 7), self:rotateRight32(output[t - 15 + 1], 18)), self:forUint32(_vm:bitwise_right_shift(output[t - 15 + 1], 3)))
					local s1 = _vm:bitwise_xor(_vm:bitwise_xor(self:rotateRight32(output[t - 2 + 1], 17), self:rotateRight32(output[t - 2 + 1], 19)), self:forUint32(_vm:bitwise_right_shift(output[t - 2 + 1], 10)))
					output[t + 1] = self:forUint32(s1 + output[t - 7 + 1] + s0 + output[t - 16 + 1])
				end
				do t = t + 1 end
			end
		end
		do
			local a = self.hash1[0 + 1]
			local b = self.hash1[1 + 1]
			local c = self.hash1[2 + 1]
			local d = self.hash1[3 + 1]
			local e = self.hash1[4 + 1]
			if self.digestLength == self.sha128 then
				do
					local j = 0
					while j <= 79 do
						local f = 0
						local k = 0
						if j <= 19 then
							f = self:forUint32(_vm:bitwise_or(_vm:bitwise_and(b, c), _vm:bitwise_and(_vm:bitwise_not(b), d)))
							k = 1518500249
						elseif j <= 39 then
							f = self:forUint32(_vm:bitwise_xor(_vm:bitwise_xor(b, c), d))
							k = 1859775393
						elseif j <= 59 then
							f = self:forUint32(_vm:bitwise_or(_vm:bitwise_or(_vm:bitwise_and(b, c), _vm:bitwise_and(b, d)), _vm:bitwise_and(c, d)))
							k = 2400959708
						elseif j <= 79 then
							f = self:forUint32(_vm:bitwise_xor(_vm:bitwise_xor(b, c), d))
							k = 3395469782
						end
						do
							local temp = self:forUint32(self:rotateLeft(a, 5) + f + e + output[j + 1] + k)
							e = d
							d = c
							c = self:rotateLeft(b, 30)
							b = a
							a = temp
						end
						do j = j + 1 end
					end
				end
				self.hash1[0 + 1] = a + self.hash1[0 + 1]
				self.hash1[1 + 1] = b + self.hash1[1 + 1]
				self.hash1[2 + 1] = c + self.hash1[2 + 1]
				self.hash1[3 + 1] = d + self.hash1[3 + 1]
				self.hash1[4 + 1] = e + self.hash1[4 + 1]
			else
				local f = self.hash1[5 + 1]
				local g = self.hash1[6 + 1]
				local h = self.hash1[7 + 1]
				do
					local t = 0
					while t < #self.k do
						local e1 = _vm:bitwise_xor(_vm:bitwise_xor(self:rotateRight32(e, 6), self:rotateRight32(e, 11)), self:rotateRight32(e, 25))
						local ch = _vm:bitwise_xor(_vm:bitwise_and(e, f), _vm:bitwise_and(_vm:bitwise_not(e), g))
						local t1 = self:forUint32(h + e1 + ch + self.k[t + 1] + output[t + 1])
						local e0 = _vm:bitwise_xor(_vm:bitwise_xor(self:rotateRight32(a, 2), self:rotateRight32(a, 13)), self:rotateRight32(a, 22))
						local maj = _vm:bitwise_xor(_vm:bitwise_xor(_vm:bitwise_and(a, b), _vm:bitwise_and(a, c)), _vm:bitwise_and(b, c))
						local t2 = self:forUint32(e0 + maj)
						h = g
						g = f
						f = e
						e = self:forUint32(d + t1)
						d = c
						c = b
						b = a
						a = self:forUint32(t1 + t2)
						do t = t + 1 end
					end
				end
				self.hash1[0 + 1] = a + self.hash1[0 + 1]
				self.hash1[1 + 1] = b + self.hash1[1 + 1]
				self.hash1[2 + 1] = c + self.hash1[2 + 1]
				self.hash1[3 + 1] = d + self.hash1[3 + 1]
				self.hash1[4 + 1] = e + self.hash1[4 + 1]
				self.hash1[5 + 1] = f + self.hash1[5 + 1]
				self.hash1[6 + 1] = g + self.hash1[6 + 1]
				self.hash1[7 + 1] = h + self.hash1[7 + 1]
			end
		end
	end
end

function jk.sha.SHAEncoderGeneric.SHA:forUint32(v)
	do return _vm:bitwise_and(v, 4294967295) end
end

function jk.sha.SHAEncoderGeneric.SHA:shaProcess64(block)
	if not (block ~= nil) then
		do return end
	end
	do
		local output = _vm:allocate_array(#self.k2)
		do
			local t = 0
			while t < #output do
				if t <= 15 then
					local index = t * 8
					output[t + 1] = _vm:bitwise_left_shift(block[index + 0 + 1], 56)
					output[t + 1] = _vm:bitwise_or(output[t + 1], _vm:bitwise_left_shift(block[index + 1 + 1], 48))
					output[t + 1] = _vm:bitwise_or(output[t + 1], _vm:bitwise_left_shift(block[index + 2 + 1], 40))
					output[t + 1] = _vm:bitwise_or(output[t + 1], _vm:bitwise_left_shift(block[index + 3 + 1], 32))
					output[t + 1] = _vm:bitwise_or(output[t + 1], _vm:bitwise_left_shift(block[index + 4 + 1], 24))
					output[t + 1] = _vm:bitwise_or(output[t + 1], _vm:bitwise_left_shift(block[index + 5 + 1], 16))
					output[t + 1] = _vm:bitwise_or(output[t + 1], _vm:bitwise_left_shift(block[index + 6 + 1], 8))
					output[t + 1] = _vm:bitwise_or(output[t + 1], block[index + 7 + 1])
				else
					local s0 = _vm:bitwise_xor(_vm:bitwise_xor(self:rotateRight64(output[t - 15 + 1], 1), self:rotateRight64(output[t - 15 + 1], 8)), _vm:bitwise_right_shift(output[t - 15 + 1], 7))
					local s1 = _vm:bitwise_xor(_vm:bitwise_xor(self:rotateRight64(output[t - 2 + 1], 19), self:rotateRight64(output[t - 2 + 1], 61)), _vm:bitwise_right_shift(output[t - 2 + 1], 6))
					output[t + 1] = s1 + output[t - 7 + 1] + s0 + output[t - 16 + 1]
				end
				do t = t + 1 end
			end
		end
		do
			local a = self.hash2[0 + 1]
			local b = self.hash2[1 + 1]
			local c = self.hash2[2 + 1]
			local d = self.hash2[3 + 1]
			local e = self.hash2[4 + 1]
			local f = self.hash2[5 + 1]
			local g = self.hash2[6 + 1]
			local h = self.hash2[7 + 1]
			do
				local t = 0
				while t < #self.k2 do
					local e0 = _vm:bitwise_xor(_vm:bitwise_xor(self:rotateRight64(a, 28), self:rotateRight64(a, 34)), self:rotateRight64(a, 39))
					local maj = _vm:bitwise_xor(_vm:bitwise_xor(_vm:bitwise_and(a, b), _vm:bitwise_and(a, c)), _vm:bitwise_and(b, c))
					local t2 = e0 + maj
					local e1 = _vm:bitwise_xor(_vm:bitwise_xor(self:rotateRight64(e, 14), self:rotateRight64(e, 18)), self:rotateRight64(e, 41))
					local ch = _vm:bitwise_xor(_vm:bitwise_and(e, f), _vm:bitwise_and(_vm:bitwise_not(e), g))
					local t1 = h + e1 + ch + self.k2[t + 1] + output[t + 1]
					h = g
					g = f
					f = e
					e = d + t1
					d = c
					c = b
					b = a
					a = t1 + t2
					do t = t + 1 end
				end
			end
			self.hash2[0 + 1] = a + self.hash2[0 + 1]
			self.hash2[1 + 1] = b + self.hash2[1 + 1]
			self.hash2[2 + 1] = c + self.hash2[2 + 1]
			self.hash2[3 + 1] = d + self.hash2[3 + 1]
			self.hash2[4 + 1] = e + self.hash2[4 + 1]
			self.hash2[5 + 1] = f + self.hash2[5 + 1]
			self.hash2[6 + 1] = g + self.hash2[6 + 1]
			self.hash2[7 + 1] = h + self.hash2[7 + 1]
		end
	end
end

function jk.sha.SHAEncoderGeneric.SHA:bitPadding(input)
	if not (input ~= nil) then
		do return nil end
	end
	do
		local inputBitLength = _g.jk.lang.Buffer:getSize(input) * 8
		local newBuf = _g.jk.lang.Buffer:resize(input, _g.jk.lang.Buffer:getSize(input) + 1)
		do _g.jk.lang.Buffer:setByte(newBuf, _g.jk.lang.Buffer:getSize(newBuf) - 1, 128) end
		do
			local mod = _util:convert_to_integer(inputBitLength % self.blockBitSize)
			local bitsToAppend = 0
			if self.blockBitSize == self.blockSize512 then
				if mod < self.block64 then
					bitsToAppend = self.block64 - 1 - mod
				else
					bitsToAppend = self.blockBitSize + self.block64 - mod - 1
				end
				do
					local osz = _g.jk.lang.Buffer:getSize(newBuf)
					local asz = _util:convert_to_integer((bitsToAppend - 7) / 8)
					newBuf = _g.jk.lang.Buffer:resize(newBuf, osz + asz)
					do
						local n = 0
						while n < asz do
							newBuf[osz + n + 1] = 0
							do n = n + 1 end
						end
					end
				end
			else
				if mod < self.block128 then
					bitsToAppend = self.block128 - 1 - mod
				else
					bitsToAppend = self.blockBitSize + self.block128 - mod - 1
				end
				do
					local osz = _g.jk.lang.Buffer:getSize(newBuf)
					local asz = _util:convert_to_integer((bitsToAppend - 7 + 64) / 8)
					newBuf = _g.jk.lang.Buffer:resize(newBuf, osz + asz)
					do
						local n = 0
						while n < asz do
							newBuf[osz + n + 1] = 0
							do n = n + 1 end
						end
					end
				end
			end
			newBuf = _g.jk.lang.Buffer:resize(newBuf, _g.jk.lang.Buffer:getSize(newBuf) + 8)
			do
				local sz = _g.jk.lang.Buffer:getSize(newBuf)
				newBuf[sz - 8 + 1] = _vm:bitwise_right_shift(_vm:bitwise_and(inputBitLength, -9223372036854775808), 56)
				newBuf[sz - 7 + 1] = _vm:bitwise_right_shift(_vm:bitwise_and(inputBitLength, 71776119061217280), 48)
				newBuf[sz - 6 + 1] = _vm:bitwise_right_shift(_vm:bitwise_and(inputBitLength, 280375465082880), 40)
				newBuf[sz - 5 + 1] = _vm:bitwise_right_shift(_vm:bitwise_and(inputBitLength, 1095216660480), 32)
				newBuf[sz - 4 + 1] = _vm:bitwise_right_shift(_vm:bitwise_and(inputBitLength, 4278190080), 24)
				newBuf[sz - 3 + 1] = _vm:bitwise_right_shift(_vm:bitwise_and(inputBitLength, 16711680), 16)
				newBuf[sz - 2 + 1] = _vm:bitwise_right_shift(_vm:bitwise_and(inputBitLength, 65280), 8)
				newBuf[sz - 1 + 1] = _vm:bitwise_and(inputBitLength, 255)
				do return newBuf end
			end
		end
	end
end

function jk.sha.SHAEncoderGeneric.SHA:blocks(buf, size)
	local msgBlocks = {}
	do
		local i = 0
		while i < _g.jk.lang.Buffer:getSize(buf) do
			local buff = _util:allocate_buffer(size)
			buff = _g.jk.lang.Buffer:getSubBuffer(buf, i, size, false)
			do _g.jk.lang.Vector:append(msgBlocks, buff) end
			i = i + size
		end
	end
	do return msgBlocks end
end

function jk.sha.SHAEncoderGeneric.SHA:rotateRight32(num, cnt)
	do return _vm:bitwise_or(self:forUint32(_vm:bitwise_right_shift(self:forUint32(num), cnt)), self:forUint32(_vm:bitwise_left_shift(self:forUint32(num), 32 - cnt))) end
end

function jk.sha.SHAEncoderGeneric.SHA:rotateRight64(num, cnt)
	do return _vm:bitwise_or(_vm:bitwise_right_shift(num, cnt), _vm:bitwise_left_shift(num, 64 - cnt)) end
end

function jk.sha.SHAEncoderGeneric.SHA:rotateLeft(num, cnt)
	do return _vm:bitwise_or(self:forUint32(_vm:bitwise_left_shift(self:forUint32(num), cnt)), self:forUint32(_vm:bitwise_right_shift(self:forUint32(num), 32 - cnt))) end
end
jk = jk or {}

jk.socket = jk.socket or {}

jk.socket.ConnectedSocket = {}

jk.socket.TCPSocket = {}
jk.socket.TCPSocket.__index = jk.socket.TCPSocket
_vm:set_metatable(jk.socket.TCPSocket, {})

function jk.socket.TCPSocket._create()
	local v = _vm:set_metatable({}, jk.socket.TCPSocket)
	return v
end

function jk.socket.TCPSocket:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.socket.TCPSocket'
	self['_isType.jk.socket.TCPSocket'] = true
	self['_isType.jk.socket.ConnectedSocket'] = true
	self.lastErrorDescription = nil
end

function jk.socket.TCPSocket:_construct0()
	jk.socket.TCPSocket._init(self)
	return self
end

function jk.socket.TCPSocket:create()
	do return _g.jk.socket.TCPSocketForSushi._construct0(_g.jk.socket.TCPSocketForSushi._create()) end
end

function jk.socket.TCPSocket:createAndConnect(address, port)
	local v = _g.jk.socket.TCPSocket:create()
	if not (v ~= nil) then
		do return nil end
	end
	if v:connect(address, port) == false then
		v = nil
	end
	do return v end
end

function jk.socket.TCPSocket:createAndListen(port)
	local v = _g.jk.socket.TCPSocket:create()
	if not (v ~= nil) then
		do return nil end
	end
	if v:listen(port) == false then
		v = nil
	end
	do return v end
end

function jk.socket.TCPSocket:getRemoteAddress()
end

function jk.socket.TCPSocket:getRemotePort()
end

function jk.socket.TCPSocket:getLocalAddress()
end

function jk.socket.TCPSocket:getLocalPort()
end

function jk.socket.TCPSocket:connect(address, port)
end

function jk.socket.TCPSocket:listen(port)
end

function jk.socket.TCPSocket:accept()
end

function jk.socket.TCPSocket:setBlocking(blocking)
end

function jk.socket.TCPSocket:getBlocking()
end

function jk.socket.TCPSocket:close()
end

function jk.socket.TCPSocket:read(buffer)
end

function jk.socket.TCPSocket:readWithTimeout(buffer, timeout)
	do return self:read(buffer) end
end

function jk.socket.TCPSocket:write(buffer, size)
end

function jk.socket.TCPSocket:getLastErrorDescription()
	do return self.lastErrorDescription end
end

function jk.socket.TCPSocket:setLastErrorDescription(v)
	self.lastErrorDescription = v
	do return self end
end

jk.socket.TCPSocketForSushi = _g.jk.socket.TCPSocket._create()
jk.socket.TCPSocketForSushi.__index = jk.socket.TCPSocketForSushi
_vm:set_metatable(jk.socket.TCPSocketForSushi, {
	__index = _g.jk.socket.TCPSocket
})

function jk.socket.TCPSocketForSushi._create()
	local v = _vm:set_metatable({}, jk.socket.TCPSocketForSushi)
	return v
end

function jk.socket.TCPSocketForSushi:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.socket.TCPSocketForSushi'
	self['_isType.jk.socket.TCPSocketForSushi'] = true
	self['_isType.jk.io.FileDescriptor'] = true
	self.fd = -1
	self.isBlocking = true
	self._destructWrapper = _vm:create_destructor(function() self:_destruct() end)
end

function jk.socket.TCPSocketForSushi:_construct0()
	jk.socket.TCPSocketForSushi._init(self)
	do _g.jk.socket.TCPSocket._construct0(self) end
	return self
end

function jk.socket.TCPSocketForSushi:_destruct()
	do self:close() end
end

function jk.socket.TCPSocketForSushi:getFileDescriptor()
	do return self.fd end
end

function jk.socket.TCPSocketForSushi:createSocket()
	if self.fd >= 0 then
		do self:close() end
	end
	self.fd = _net:create_tcp_socket()
	if self.fd < 0 then
		do return false end
	end
	do return true end
end

function jk.socket.TCPSocketForSushi:close()
	local fd = self.fd
	if not (fd >= 0) then
		do return end
	end
	do _net:close_tcp_socket(fd) end
	self.fd = -1
end

function jk.socket.TCPSocketForSushi:getRemoteAddress()
	if not (self.fd >= 0) then
		do return nil end
	end
	do
		local fd = self.fd
		do return _net:get_tcp_socket_peer_address(fd) end
	end
end

function jk.socket.TCPSocketForSushi:getRemotePort()
	if not (self.fd >= 0) then
		do return 0 end
	end
	do
		local fd = self.fd
		do return _net:get_tcp_socket_peer_port(fd) end
	end
end

function jk.socket.TCPSocketForSushi:getLocalAddress()
	_io:write_to_stdout("[jk.socket.TCPSocketForSushi.getLocalAddress] (TCPSocketForSushi@target_sushi.sling:77:2): Not implemented" .. "\n")
	do return nil end
end

function jk.socket.TCPSocketForSushi:getLocalPort()
	_io:write_to_stdout("[jk.socket.TCPSocketForSushi.getLocalPort] (TCPSocketForSushi@target_sushi.sling:83:2): Not implemented" .. "\n")
	do return 0 end
end

function jk.socket.TCPSocketForSushi:connect(address, port)
	if not self:createSocket() then
		do return false end
	end
	do
		local fd = self.fd
		if _net:connect_tcp_socket(fd, address, port) ~= 0 then
			do self:close() end
			do return false end
		end
		do return true end
	end
end

function jk.socket.TCPSocketForSushi:listen(port)
	if not self:createSocket() then
		do return false end
	end
	do
		local fd = self.fd
		if _net:listen_tcp_socket(fd, port) ~= 0 then
			do self:close() end
			do return false end
		end
		do return true end
	end
end

function jk.socket.TCPSocketForSushi:accept()
	if not (self.fd >= 0) then
		do return nil end
	end
	do
		local r = 0
		local error = nil
		local fd = self.fd
		do r, error = _net:accept_tcp_socket(fd) end
		if error ~= nil then
			_vm:throw_error(_g.jk.lang.ExceptionWithError:forCode("failedToAcceptSocket", error))
		end
		if not (r >= 0) then
			do return nil end
		end
		do
			local v = _g.jk.socket.TCPSocketForSushi._construct0(_g.jk.socket.TCPSocketForSushi._create())
			do v:setFd(r) end
			do return v end
		end
	end
end

function jk.socket.TCPSocketForSushi:setBlocking(blocking)
	if not (self.fd >= 0) then
		do return false end
	end
	do
		local r = 0
		local fd = self.fd
		if blocking then
			do r = _net:set_socket_blocking(fd) end
		else
			do r = _net:set_socket_non_blocking(fd) end
		end
		if r ~= 0 then
			do return false end
		end
		self.isBlocking = blocking
		do return true end
	end
end

function jk.socket.TCPSocketForSushi:getBlocking()
	do return self.isBlocking end
end

function jk.socket.TCPSocketForSushi:read(buffer)
	do return self:readWithTimeout(buffer, -1) end
end

function jk.socket.TCPSocketForSushi:readWithTimeout(buffer, timeout)
	if self.fd < 0 then
		do return -1 end
	end
	if buffer == nil then
		do return -1 end
	end
	do
		local v = 0
		local fd = self.fd
		do v = _net:read_from_tcp_socket(fd, buffer, #buffer, timeout) end
		do return v end
	end
end

function jk.socket.TCPSocketForSushi:write(buffer, size)
	if self.fd < 0 then
		do return -1 end
	end
	if buffer == nil then
		do return -1 end
	end
	do
		local sz = size
		if sz < 0 then
			sz = #buffer
		end
		do
			local v = 0
			local fd = self.fd
			do v = _net:write_to_tcp_socket(fd, buffer, sz) end
			do return v end
		end
	end
end

function jk.socket.TCPSocketForSushi:getFd()
	do return self.fd end
end

function jk.socket.TCPSocketForSushi:setFd(v)
	self.fd = v
	do return self end
end

jk.socket.UDPSocket = {}
jk.socket.UDPSocket.__index = jk.socket.UDPSocket
_vm:set_metatable(jk.socket.UDPSocket, {})

function jk.socket.UDPSocket._create()
	local v = _vm:set_metatable({}, jk.socket.UDPSocket)
	return v
end

function jk.socket.UDPSocket:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.socket.UDPSocket'
	self['_isType.jk.socket.UDPSocket'] = true
end

function jk.socket.UDPSocket:_construct0()
	jk.socket.UDPSocket._init(self)
	return self
end

function jk.socket.UDPSocket:create()
	_io:write_to_stdout("[jk.socket.UDPSocket.create] (UDPSocket.sling:40:3): Not implemented." .. "\n")
	do return nil end
end

function jk.socket.UDPSocket:send(message, address, port)
end

function jk.socket.UDPSocket:sendBroadcast(message, address, port)
end

function jk.socket.UDPSocket:receive(message, timeout)
end

function jk.socket.UDPSocket:bind(port)
end

function jk.socket.UDPSocket:close()
end

function jk.socket.UDPSocket:getLocalAddress()
end

function jk.socket.UDPSocket:getLocalPort()
end
jk = jk or {}

jk.socket = jk.socket or {}

jk.socket.ssl = jk.socket.ssl or {}

jk.socket.ssl.SSLSocket = {}
jk.socket.ssl.SSLSocket.__index = jk.socket.ssl.SSLSocket
_vm:set_metatable(jk.socket.ssl.SSLSocket, {})

function jk.socket.ssl.SSLSocket._create()
	local v = _vm:set_metatable({}, jk.socket.ssl.SSLSocket)
	return v
end

function jk.socket.ssl.SSLSocket:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.socket.ssl.SSLSocket'
	self['_isType.jk.socket.ssl.SSLSocket'] = true
	self['_isType.jk.socket.ConnectedSocket'] = true
end

function jk.socket.ssl.SSLSocket:_construct0()
	jk.socket.ssl.SSLSocket._init(self)
	return self
end

function jk.socket.ssl.SSLSocket:createInstance(cSocket, serverAddress, ctx, certFile, keyFile, isServer, acceptInvalidCertificate, passphrase)
	if not (cSocket ~= nil) then
		do return nil end
	end
	do
		local v = nil
		local ss = _g.jk.socket.ssl.SSLSocketForSushi._construct0(_g.jk.socket.ssl.SSLSocketForSushi._create())
		do ss:setAcceptInvalidCertificate(acceptInvalidCertificate) end
		do ss:setCtx(ctx) end
		do ss:setServerAddress(serverAddress) end
		if ss:open(cSocket, certFile, keyFile, isServer, passphrase) then
			v = ss
		end
		do return v end
	end
end

function jk.socket.ssl.SSLSocket:forClient(cSocket, hostAddress, ctx, acceptInvalidCertificate, passphrase)
	do return _g.jk.socket.ssl.SSLSocket:createInstance(cSocket, hostAddress, ctx, nil, nil, false, acceptInvalidCertificate, passphrase) end
end

function jk.socket.ssl.SSLSocket:forServer(cSocket, certFile, keyFile, ctx, acceptInvalidCertificate, passphrase)
	do return _g.jk.socket.ssl.SSLSocket:createInstance(cSocket, nil, ctx, certFile, keyFile, true, acceptInvalidCertificate, passphrase) end
end

function jk.socket.ssl.SSLSocket:setAcceptInvalidCertificate(accept)
end

function jk.socket.ssl.SSLSocket:setRequireClientCertificate(require)
end

function jk.socket.ssl.SSLSocket:close()
end

function jk.socket.ssl.SSLSocket:read(buffer)
end

function jk.socket.ssl.SSLSocket:readWithTimeout(buffer, timeout)
end

function jk.socket.ssl.SSLSocket:write(buffer, size)
end

function jk.socket.ssl.SSLSocket:getSocket()
end

jk.socket.ssl.SSLSocketForSushi = _g.jk.socket.ssl.SSLSocket._create()
jk.socket.ssl.SSLSocketForSushi.__index = jk.socket.ssl.SSLSocketForSushi
_vm:set_metatable(jk.socket.ssl.SSLSocketForSushi, {
	__index = _g.jk.socket.ssl.SSLSocket
})

function jk.socket.ssl.SSLSocketForSushi._create()
	local v = _vm:set_metatable({}, jk.socket.ssl.SSLSocketForSushi)
	return v
end

function jk.socket.ssl.SSLSocketForSushi:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.socket.ssl.SSLSocketForSushi'
	self['_isType.jk.socket.ssl.SSLSocketForSushi'] = true
	self.ctx = nil
	self.socket = nil
	self.serverAddress = nil
	self.acceptInvalidCertificate = false
	self.requireClientCertificate = false
	self.ssl = nil
end

function jk.socket.ssl.SSLSocketForSushi:_construct0()
	jk.socket.ssl.SSLSocketForSushi._init(self)
	do _g.jk.socket.ssl.SSLSocket._construct0(self) end
	return self
end

function jk.socket.ssl.SSLSocketForSushi:setAcceptInvalidCertificate(v)
	self.acceptInvalidCertificate = v
end

function jk.socket.ssl.SSLSocketForSushi:setRequireClientCertificate(v)
	self.requireClientCertificate = v
end

function jk.socket.ssl.SSLSocketForSushi:open(cSocket, certFile, keyFile, isServer, passphrase)
	if not ((function()
		self.socket = _vm:to_table_with_key(cSocket, '_isType.jk.socket.TCPSocketForSushi')
		do return self.socket end
	end)() ~= nil) then
		do return false end
	end
	if isServer then
		do return false end
	end
	do
		local address = self.serverAddress
		if _g.jk.lang.String:isEmpty(address) then
			address = self.socket:getRemoteAddress()
		end
		if not _g.jk.lang.String:isNotEmpty(address) then
			do return false end
		end
		do
			local port = self.socket:getRemotePort()
			if port < 1 then
				port = 443
			end
			do
				local fd = self.socket:getFileDescriptor()
				local ssl = _crypto:ssl_connect(fd, address)
				if not (ssl ~= nil) then
					do return false end
				end
				self.ssl = ssl
				do return true end
			end
		end
	end
end

function jk.socket.ssl.SSLSocketForSushi:read(buffer)
	do return self:readWithTimeout(buffer, -1) end
end

function jk.socket.ssl.SSLSocketForSushi:close()
	if self.ssl ~= nil then
		local ssl = self.ssl
		self.ssl = nil
		do _crypto:ssl_close(ssl) end
	end
	if self.socket ~= nil then
		do self.socket:close() end
		self.socket = nil
	end
end

function jk.socket.ssl.SSLSocketForSushi:readWithTimeout(buffer, timeout)
	local ssl = self.ssl
	if not (ssl ~= nil) then
		do return 0 end
	end
	if not (buffer ~= nil) then
		do return -1 end
	end
	do
		local v = _crypto:ssl_read(ssl, buffer)
		if v < 1 then
			do self:close() end
			v = -1
		end
		do return v end
	end
end

function jk.socket.ssl.SSLSocketForSushi:write(buffer, size)
	local ssl = self.ssl
	if not (ssl ~= nil) then
		do return 0 end
	end
	if not (buffer ~= nil) then
		do return -1 end
	end
	do
		local v = _crypto:ssl_write(ssl, buffer, size)
		if v < 1 then
			do self:close() end
			v = -1
		end
		do return v end
	end
end

function jk.socket.ssl.SSLSocketForSushi:getSocket()
	do return self.socket end
end

function jk.socket.ssl.SSLSocketForSushi:getCtx()
	do return self.ctx end
end

function jk.socket.ssl.SSLSocketForSushi:setCtx(v)
	self.ctx = v
	do return self end
end

function jk.socket.ssl.SSLSocketForSushi:setSocket(v)
	self.socket = v
	do return self end
end

function jk.socket.ssl.SSLSocketForSushi:getServerAddress()
	do return self.serverAddress end
end

function jk.socket.ssl.SSLSocketForSushi:setServerAddress(v)
	self.serverAddress = v
	do return self end
end
jk = jk or {}

jk.model = jk.model or {}

jk.model.DynamicModel = {}
jk.model.DynamicModel.__index = jk.model.DynamicModel
_vm:set_metatable(jk.model.DynamicModel, {})

function jk.model.DynamicModel._create()
	local v = _vm:set_metatable({}, jk.model.DynamicModel)
	return v
end

function jk.model.DynamicModel:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.model.DynamicModel'
	self['_isType.jk.model.DynamicModel'] = true
	self['_isType.jk.json.JSONObject'] = true
	self['_isType.jk.lang.StringObject'] = true
	self.dataValue = nil
	self.fieldsValue = nil
end

function jk.model.DynamicModel:asDynamicMap(object)
	if not (object ~= nil) then
		do return nil end
	end
	do return object:toDynamicMap() end
end

function jk.model.DynamicModel:_construct0()
	jk.model.DynamicModel._init(self)
	do self:setData(nil) end
	return self
end

function jk.model.DynamicModel:_construct1(data)
	jk.model.DynamicModel._init(self)
	do self:setData(data) end
	return self
end

function jk.model.DynamicModel:_construct2(data, mapping)
	jk.model.DynamicModel._init(self)
	do self:setData(nil) end
	do self:copyFrom(data, mapping) end
	return self
end

function jk.model.DynamicModel:toString()
	do return _g.jk.json.JSONEncoder:toString(self:toDynamicMap()) end
end

function jk.model.DynamicModel:toDynamicMap()
	do return self:getData() end
end

function jk.model.DynamicModel:fromDynamicMap(data)
	do self:setData(data) end
end

function jk.model.DynamicModel:toJsonObject()
	do return self:toDynamicMap() end
end

function jk.model.DynamicModel:setField(name, value)
	do self:getData():setObject(name, value) end
end

function jk.model.DynamicModel:getField(name)
	do return self:getData():get(name) end
end

function jk.model.DynamicModel:getOrCreateFieldAsDynamicVector(name)
	local v = self:getData():getDynamicVector(name)
	if not (v ~= nil) then
		v = _g.jk.lang.DynamicVector._construct0(_g.jk.lang.DynamicVector._create())
		do self:getData():setObject(name, v) end
	end
	do return v end
end

function jk.model.DynamicModel:getFieldAsDynamicVector(name)
	do return self:getData():getDynamicVector(name) end
end

function jk.model.DynamicModel:getFieldAsStringVector(name)
	local v = self:getFieldAsDynamicVector(name)
	if not (v ~= nil) then
		do return nil end
	end
	do return v:toVectorOfStrings() end
end

function jk.model.DynamicModel:getFieldAsIntegerVector(name)
	local vector = self:getFieldAsDynamicVector(name)
	if not (vector ~= nil) then
		do return nil end
	end
	do
		local v = {}
		do
			local _vl = vector
			if _vl ~= nil then
				local _it = _vl:iterate()
				while _it ~= nil and _it:hasNext() do
					local o = _it:next()
					if o ~= nil then
						goto _continue1
					end
					do _g.jk.lang.Vector:append(v, _g.jk.lang.Integer:asInteger(o)) end
					::_continue1::
				end
			end
		end
		do return v end
	end
end

function jk.model.DynamicModel:getFieldAsLongIntegerVector(name)
	local vector = self:getFieldAsDynamicVector(name)
	if not (vector ~= nil) then
		do return nil end
	end
	do
		local v = {}
		do
			local _vl = vector
			if _vl ~= nil then
				local _it = _vl:iterate()
				while _it ~= nil and _it:hasNext() do
					local o = _it:next()
					if o ~= nil then
						goto _continue2
					end
					do _g.jk.lang.Vector:append(v, _g.jk.lang.LongInteger:asLong(o)) end
					::_continue2::
				end
			end
		end
		do return v end
	end
end

function jk.model.DynamicModel:getFieldAsDoubleVector(name)
	local vector = self:getFieldAsDynamicVector(name)
	if not (vector ~= nil) then
		do return nil end
	end
	do
		local v = {}
		do
			local _vl = vector
			if _vl ~= nil then
				local _it = _vl:iterate()
				while _it ~= nil and _it:hasNext() do
					local o = _it:next()
					if o ~= nil then
						goto _continue3
					end
					do _g.jk.lang.Vector:append(v, _g.jk.lang.Double:asDouble(o)) end
					::_continue3::
				end
			end
		end
		do return v end
	end
end

function jk.model.DynamicModel:getFieldAsBooleanVector(name)
	local vector = self:getFieldAsDynamicVector(name)
	if not (vector ~= nil) then
		do return nil end
	end
	do
		local v = {}
		do
			local _vl = vector
			if _vl ~= nil then
				local _it = _vl:iterate()
				while _it ~= nil and _it:hasNext() do
					local o = _it:next()
					if o ~= nil then
						goto _continue4
					end
					do _g.jk.lang.Vector:append(v, _g.jk.lang.Boolean:asBoolean(o, false)) end
					::_continue4::
				end
			end
		end
		do return v end
	end
end

function jk.model.DynamicModel:addStringToVectorField(field, value)
	do self:getOrCreateFieldAsDynamicVector(field):appendString(value) end
end

function jk.model.DynamicModel:addIntegerToVectorField(field, value)
	do self:getOrCreateFieldAsDynamicVector(field):appendInteger(value) end
end

function jk.model.DynamicModel:addLongIntegerToVectorField(field, value)
	do self:getOrCreateFieldAsDynamicVector(field):appendLong(value) end
end

function jk.model.DynamicModel:addDoubleToVectorField(field, value)
	do self:getOrCreateFieldAsDynamicVector(field):appendDouble(value) end
end

function jk.model.DynamicModel:addBooleanToVectorField(field, value)
	do self:getOrCreateFieldAsDynamicVector(field):appendBoolean(value) end
end

function jk.model.DynamicModel:addBufferToVectorField(field, value)
	do self:getOrCreateFieldAsDynamicVector(field):appendObject(value) end
end

function jk.model.DynamicModel:addObjectToVectorField(field, value)
	do self:getOrCreateFieldAsDynamicVector(field):appendObject(value) end
end

function jk.model.DynamicModel:fromJsonObject(o)
	local data = _vm:to_table_with_key(o, '_isType.jk.lang.DynamicMap')
	if data ~= nil then
		do self:fromDynamicMap(data) end
	else
		do self:clear() end
	end
	do return true end
end

function jk.model.DynamicModel:containsField(field)
	if not (field ~= nil) then
		do return false end
	end
	do
		local array = self:getFields()
		if array ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(array)
			do
				n = 0
				while n < m do
					local ff = array[n + 1]
					if ff ~= nil then
						if ff == field then
							do return true end
						end
					end
					do n = n + 1 end
				end
			end
		end
		do return false end
	end
end

function jk.model.DynamicModel:hasValue(key)
	if not (key ~= nil) then
		do return false end
	end
	do return self:getData():containsKey(key) end
end

function jk.model.DynamicModel:removeNullValues()
	if self.dataValue ~= nil then
		do self.dataValue:removeNullValues() end
	end
end

function jk.model.DynamicModel:clear()
	self.dataValue = nil
end

function jk.model.DynamicModel:setAllFields()
	local array = self:getFields()
	if array ~= nil then
		local n = 0
		local m = _g.jk.lang.Vector:getSize(array)
		do
			n = 0
			while n < m do
				local field = array[n + 1]
				if field ~= nil then
					if not self:getData():containsKey(field:getName()) then
						do self:getData():setObject(field:getName(), nil) end
					end
				end
				do n = n + 1 end
			end
		end
	end
end

function jk.model.DynamicModel:getModelMetadata()
	do return nil end
end

function jk.model.DynamicModel:getFieldInformation()
	do return nil end
end

function jk.model.DynamicModel:copyFrom(other, mapping)
	if not (other ~= nil) then
		do return end
	end
	do
		local array = self:getFields()
		if array ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(array)
			do
				n = 0
				while n < m do
					local field = array[n + 1]
					if field ~= nil then
						local fname = field:getName()
						local oname = nil
						if mapping ~= nil and mapping:containsKey(fname) then
							oname = mapping:getString(fname, nil)
						else
							oname = fname
						end
						if oname ~= nil and other:hasValue(oname) then
							do self:setField(fname, other:getField(oname)) end
						end
					end
					do n = n + 1 end
				end
			end
		end
	end
end

function jk.model.DynamicModel:getData()
	if not (self.dataValue ~= nil) then
		self.dataValue = _g.jk.lang.DynamicMap._construct0(_g.jk.lang.DynamicMap._create())
	end
	do return self.dataValue end
end

function jk.model.DynamicModel:doSetData(value)
	self.dataValue = value
end

function jk.model.DynamicModel:setData(v)
	do self:doSetData(v) end
	do return v end
end

function jk.model.DynamicModel:getFields()
	if not (self.fieldsValue ~= nil) then
		self.fieldsValue = {}
		do
			local array = self:getFieldInformation()
			if array ~= nil then
				local n = 0
				local m = _g.jk.lang.Vector:getSize(array)
				do
					n = 0
					while n < m do
						local name = array[n + 1]
						if name ~= nil then
							do _g.jk.lang.Vector:append(self.fieldsValue, name) end
						end
						do n = n + 1 end
					end
				end
			end
		end
	end
	do return self.fieldsValue end
end

function jk.model.DynamicModel:doSetFields(value)
	self.fieldsValue = value
end

function jk.model.DynamicModel:setFields(v)
	do self:doSetFields(v) end
	do return v end
end

jk.model.DynamicModelField = {}
jk.model.DynamicModelField.__index = jk.model.DynamicModelField
_vm:set_metatable(jk.model.DynamicModelField, {})

jk.model.DynamicModelField.TYPE_UNKNOWN = 0
jk.model.DynamicModelField.TYPE_OBJECT = 1
jk.model.DynamicModelField.TYPE_STRING = 2
jk.model.DynamicModelField.TYPE_BUFFER = 3
jk.model.DynamicModelField.TYPE_INTEGER = 4
jk.model.DynamicModelField.TYPE_LONG_INTEGER = 5
jk.model.DynamicModelField.TYPE_DOUBLE = 6
jk.model.DynamicModelField.TYPE_BOOLEAN = 7
jk.model.DynamicModelField.TYPE_VECTOR = 8
jk.model.DynamicModelField.TYPE_MAP = 9

function jk.model.DynamicModelField._create()
	local v = _vm:set_metatable({}, jk.model.DynamicModelField)
	return v
end

function jk.model.DynamicModelField:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.model.DynamicModelField'
	self['_isType.jk.model.DynamicModelField'] = true
	self._name = nil
	self._encodedName = nil
	self._type = 0
	self._description = nil
	self._tags = nil
end

function jk.model.DynamicModelField:_construct0()
	jk.model.DynamicModelField._init(self)
	return self
end

function jk.model.DynamicModelField:hasTag(tag)
	local array = self:getTags()
	if array ~= nil then
		local n = 0
		local m = _g.jk.lang.Vector:getSize(array)
		do
			n = 0
			while n < m do
				local tt = array[n + 1]
				if tt ~= nil then
					if tt == tag then
						do return true end
					end
				end
				do n = n + 1 end
			end
		end
	end
	do return false end
end

function jk.model.DynamicModelField:addToTags(tag)
	if not (tag ~= nil) then
		do return end
	end
	if not (self:getTags() ~= nil) then
		do self:setTags({}) end
	end
	do _g.jk.lang.Vector:append(self:getTags(), tag) end
end

function jk.model.DynamicModelField:getName()
	do return self._name end
end

function jk.model.DynamicModelField:doSetName(value)
	self._name = value
end

function jk.model.DynamicModelField:setName(v)
	do self:doSetName(v) end
	do return v end
end

function jk.model.DynamicModelField:getEncodedName()
	do return self._encodedName end
end

function jk.model.DynamicModelField:doSetEncodedName(value)
	self._encodedName = value
end

function jk.model.DynamicModelField:setEncodedName(v)
	do self:doSetEncodedName(v) end
	do return v end
end

function jk.model.DynamicModelField:getType()
	do return self._type end
end

function jk.model.DynamicModelField:doSetType(value)
	self._type = value
end

function jk.model.DynamicModelField:setType(v)
	do self:doSetType(v) end
	do return v end
end

function jk.model.DynamicModelField:getDescription()
	do return self._description end
end

function jk.model.DynamicModelField:doSetDescription(value)
	self._description = value
end

function jk.model.DynamicModelField:setDescription(v)
	do self:doSetDescription(v) end
	do return v end
end

function jk.model.DynamicModelField:getTags()
	do return self._tags end
end

function jk.model.DynamicModelField:doSetTags(value)
	self._tags = value
end

function jk.model.DynamicModelField:setTags(v)
	do self:doSetTags(v) end
	do return v end
end
jk = jk or {}

jk.thread = jk.thread or {}

jk.thread.RunningThread = {}

jk.thread.CriticalSection = {}
jk.thread.CriticalSection.__index = jk.thread.CriticalSection
_vm:set_metatable(jk.thread.CriticalSection, {})

function jk.thread.CriticalSection._create()
	local v = _vm:set_metatable({}, jk.thread.CriticalSection)
	return v
end

function jk.thread.CriticalSection:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.thread.CriticalSection'
	self['_isType.jk.thread.CriticalSection'] = true
end

function jk.thread.CriticalSection:_construct0()
	jk.thread.CriticalSection._init(self)
	return self
end

function jk.thread.CriticalSection:execute(object, block)
	local mutex = _g.jk.thread.Mutex:forObject(object)
	if mutex ~= nil then
		do mutex:lockMutex() end
	end
	if block ~= nil then
		do block() end
	end
	if mutex ~= nil then
		do mutex:unlockMutex() end
	end
end

jk.thread.Mutex = {}
jk.thread.Mutex.__index = jk.thread.Mutex
_vm:set_metatable(jk.thread.Mutex, {})

function jk.thread.Mutex._create()
	local v = _vm:set_metatable({}, jk.thread.Mutex)
	return v
end

function jk.thread.Mutex:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.thread.Mutex'
	self['_isType.jk.thread.Mutex'] = true
end

function jk.thread.Mutex:_construct0()
	jk.thread.Mutex._init(self)
	return self
end

function jk.thread.Mutex:create()
	_io:write_to_stdout("[jk.thread.Mutex.create] (Mutex.sling:49:3): Not implemented" .. "\n")
	do return nil end
end

function jk.thread.Mutex:forObject(object)
	_io:write_to_stdout("[jk.thread.Mutex.forObject] (Mutex.sling:56:2): Not implemented" .. "\n")
	do return nil end
end

function jk.thread.Mutex:lockMutex()
end

function jk.thread.Mutex:unlockMutex()
end

jk.thread.CurrentThread = {}
jk.thread.CurrentThread.__index = jk.thread.CurrentThread
_vm:set_metatable(jk.thread.CurrentThread, {})

function jk.thread.CurrentThread._create()
	local v = _vm:set_metatable({}, jk.thread.CurrentThread)
	return v
end

function jk.thread.CurrentThread:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.thread.CurrentThread'
	self['_isType.jk.thread.CurrentThread'] = true
end

function jk.thread.CurrentThread:_construct0()
	jk.thread.CurrentThread._init(self)
	return self
end

function jk.thread.CurrentThread:sleepSeconds(seconds)
	do _os:sleep_seconds(seconds) end
end

function jk.thread.CurrentThread:sleepMicroSeconds(uSeconds)
	do _os:sleep_microseconds(uSeconds) end
end

function jk.thread.CurrentThread:sleepMilliSeconds(mSeconds)
	do _os:sleep_milliseconds(mSeconds) end
end

jk.thread.Thread = {}
jk.thread.Thread.__index = jk.thread.Thread
_vm:set_metatable(jk.thread.Thread, {})

jk.thread.Thread.localValues = {}

function jk.thread.Thread._create()
	local v = _vm:set_metatable({}, jk.thread.Thread)
	return v
end

function jk.thread.Thread:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.thread.Thread'
	self['_isType.jk.thread.Thread'] = true
end

function jk.thread.Thread:_construct0()
	jk.thread.Thread._init(self)
	return self
end

function jk.thread.Thread:setLocalValue(id, value)
	if id ~= nil then
		_g.jk.thread.Thread.localValues[id] = value
	end
end

function jk.thread.Thread:getLocalValue(id)
	if not (id ~= nil) then
		do return nil end
	end
	do return _g.jk.lang.Map:get(_g.jk.thread.Thread.localValues, id) end
end

function jk.thread.Thread:removeLocalValue(id)
	if id ~= nil then
		do _g.jk.lang.Map:remove(_g.jk.thread.Thread.localValues, id) end
	end
end

function jk.thread.Thread:start(runnable)
	if not (runnable ~= nil) then
		do return nil end
	end
	_io:write_to_stdout("[jk.thread.Thread.start] (Thread.sling:360:3): Not implemented" .. "\n")
	do return nil end
end

jk.thread.SushiThread = {}
jk.thread.SushiThread.__index = jk.thread.SushiThread
_vm:set_metatable(jk.thread.SushiThread, {})

function jk.thread.SushiThread._create()
	local v = _vm:set_metatable({}, jk.thread.SushiThread)
	return v
end

function jk.thread.SushiThread:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.thread.SushiThread'
	self['_isType.jk.thread.SushiThread'] = true
	self.interpreter = nil
	self.reuseInterpreter = false
end

function jk.thread.SushiThread:_construct0()
	jk.thread.SushiThread._init(self)
	return self
end

function jk.thread.SushiThread:getOutputWriter()
	local fd = _pipefd
	if fd < 0 then
		do return nil end
	end
	do return _g.jk.io.FileDescriptorWriter:forUnownedFileDescriptor(fd) end
end

function jk.thread.SushiThread:getInputBuffer()
	do return _input end
end

function jk.thread.SushiThread:forThisProgram()
	local interpreter = _vm:prepare_interpreter(_code)
	if not (interpreter ~= nil) then
		do return nil end
	end
	do
		local v = _g.jk.thread.SushiThread._construct0(_g.jk.thread.SushiThread._create())
		do v:setInterpreter(interpreter) end
		do return v end
	end
end

function jk.thread.SushiThread:forCode(code)
	if not (code ~= nil) then
		do return nil end
	end
	do
		local interpreter = _vm:prepare_interpreter(code)
		if not (interpreter ~= nil) then
			do return nil end
		end
		do
			local v = _g.jk.thread.SushiThread._construct0(_g.jk.thread.SushiThread._create())
			do v:setInterpreter(interpreter) end
			do return v end
		end
	end
end

function jk.thread.SushiThread:start(fname, input)
	local interpreter = self.interpreter
	if not (interpreter ~= nil) then
		do return false end
	end
	do
		local ff = fname
		if _g.jk.lang.String:isEmpty(ff) then
			ff = "_main()"
		end
		do
			local reuse = 0
			if self.reuseInterpreter then
				reuse = 1
			end
			do
				local v = _os:execute_in_thread(interpreter, ff, input, 0, reuse)
				if v < 0 then
					do return false end
				end
				if not self.reuseInterpreter then
					interpreter = nil
				end
				do return true end
			end
		end
	end
end

function jk.thread.SushiThread:startPiped(fname, input)
	local interpreter = self.interpreter
	if not (interpreter ~= nil) then
		do return nil end
	end
	do
		local ff = fname
		if _g.jk.lang.String:isEmpty(ff) then
			ff = "_main()"
		end
		do
			local reuse = 0
			if self.reuseInterpreter then
				reuse = 1
			end
			do
				local v = _os:execute_in_thread(interpreter, ff, input, 1, reuse)
				if v < 0 then
					do return nil end
				end
				do
					local reader = _g.jk.io.FileDescriptorReader._construct0(_g.jk.io.FileDescriptorReader._create())
					do reader:setFd(v) end
					do return reader end
				end
			end
		end
	end
end

function jk.thread.SushiThread:getInterpreter()
	do return self.interpreter end
end

function jk.thread.SushiThread:setInterpreter(v)
	self.interpreter = v
	do return self end
end

function jk.thread.SushiThread:getReuseInterpreter()
	do return self.reuseInterpreter end
end

function jk.thread.SushiThread:setReuseInterpreter(v)
	self.reuseInterpreter = v
	do return self end
end

jk.thread.ThreadPool = {}
jk.thread.ThreadPool.__index = jk.thread.ThreadPool
_vm:set_metatable(jk.thread.ThreadPool, {})

function jk.thread.ThreadPool._create()
	local v = _vm:set_metatable({}, jk.thread.ThreadPool)
	return v
end

function jk.thread.ThreadPool:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.thread.ThreadPool'
	self['_isType.jk.thread.ThreadPool'] = true
	self.maximumPoolSize = 0
	self.queue = nil
	self.runningThreadsCount = 0
	self.mutex = nil
end

function jk.thread.ThreadPool:forMaxPoolSize(maximumPoolSize)
	local v = _g.jk.thread.ThreadPool._construct0(_g.jk.thread.ThreadPool._create())
	v.maximumPoolSize = maximumPoolSize
	do return v end
end

function jk.thread.ThreadPool:_construct0()
	jk.thread.ThreadPool._init(self)
	self.queue = {}
	self.mutex = _g.jk.thread.Mutex:create()
	return self
end

function jk.thread.ThreadPool:getRunningThreadsCount()
	do return self.runningThreadsCount end
end

function jk.thread.ThreadPool:submitTask(task)
	do self:execute(task) end
end

function jk.thread.ThreadPool:submitTasks(tasks)
	if tasks ~= nil then
		local n = 0
		local m = _g.jk.lang.Vector:getSize(tasks)
		do
			n = 0
			while n < m do
				local task = tasks[n + 1]
				if task ~= nil then
					do self:execute(task) end
				end
				do n = n + 1 end
			end
		end
	end
end

function jk.thread.ThreadPool:execute(task)
	if not (task ~= nil) then
		do return end
	end
	do self.mutex:lockMutex() end
	if self.runningThreadsCount < self.maximumPoolSize then
		local runner = _g.jk.thread.ThreadPool.TaskRunner._construct0(_g.jk.thread.ThreadPool.TaskRunner._create())
		do runner:setMyParent(self) end
		do runner:setRunnable(task) end
		if _g.jk.thread.Thread:start(runner) ~= nil then
			do self.runningThreadsCount = self.runningThreadsCount + 1 end
		else
			do _g.jk.lang.Vector:append(self.queue, task) end
		end
	else
		do _g.jk.lang.Vector:append(self.queue, task) end
	end
	do self.mutex:unlockMutex() end
end

function jk.thread.ThreadPool:getTaskFromQueue()
	do self.mutex:lockMutex() end
	do
		local item = _vm:to_table_with_key(_g.jk.lang.Vector:popFirst(self.queue), '_isType.jk.lang.Runnable')
		if not (item ~= nil) then
			do self.runningThreadsCount = self.runningThreadsCount - 1 end
		end
		do self.mutex:unlockMutex() end
		do return item end
	end
end

jk.thread.ThreadPool.TaskRunner = {}
jk.thread.ThreadPool.TaskRunner.__index = jk.thread.ThreadPool.TaskRunner
_vm:set_metatable(jk.thread.ThreadPool.TaskRunner, {})

function jk.thread.ThreadPool.TaskRunner._create()
	local v = _vm:set_metatable({}, jk.thread.ThreadPool.TaskRunner)
	return v
end

function jk.thread.ThreadPool.TaskRunner:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.thread.ThreadPool.TaskRunner'
	self['_isType.jk.thread.ThreadPool.TaskRunner'] = true
	self['_isType.jk.lang.Runnable'] = true
	self.runnable = nil
	self.myParent = nil
end

function jk.thread.ThreadPool.TaskRunner:_construct0()
	jk.thread.ThreadPool.TaskRunner._init(self)
	return self
end

function jk.thread.ThreadPool.TaskRunner:run()
	while true do
		do self.runnable:run() end
		do
			local next = self.myParent:getTaskFromQueue()
			if not (next ~= nil) then
				do break end
			end
			self.runnable = next
		end
	end
end

function jk.thread.ThreadPool.TaskRunner:getRunnable()
	do return self.runnable end
end

function jk.thread.ThreadPool.TaskRunner:setRunnable(v)
	self.runnable = v
	do return self end
end

function jk.thread.ThreadPool.TaskRunner:getMyParent()
	do return self.myParent end
end

function jk.thread.ThreadPool.TaskRunner:setMyParent(v)
	self.myParent = v
	do return self end
end
jk = jk or {}

jk.sql = jk.sql or {}

jk.sql.SQLStatement = {}

jk.sql.SQLResultSetIterator = {}
jk.sql.SQLResultSetIterator.__index = jk.sql.SQLResultSetIterator
_vm:set_metatable(jk.sql.SQLResultSetIterator, {})

function jk.sql.SQLResultSetIterator._create()
	local v = _vm:set_metatable({}, jk.sql.SQLResultSetIterator)
	return v
end

function jk.sql.SQLResultSetIterator:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.sql.SQLResultSetIterator'
	self['_isType.jk.sql.SQLResultSetIterator'] = true
	self['_isType.jk.lang.Iterator'] = true
end

function jk.sql.SQLResultSetIterator:_construct0()
	jk.sql.SQLResultSetIterator._init(self)
	return self
end

function jk.sql.SQLResultSetIterator:next()
end

function jk.sql.SQLResultSetIterator:hasNext()
end

function jk.sql.SQLResultSetIterator:nextValues(values)
end

function jk.sql.SQLResultSetIterator:step()
end

function jk.sql.SQLResultSetIterator:getColumnCount()
end

function jk.sql.SQLResultSetIterator:getColumnName(n)
end

function jk.sql.SQLResultSetIterator:getColumnNames()
end

function jk.sql.SQLResultSetIterator:getColumnObject(n)
end

function jk.sql.SQLResultSetIterator:getColumnInt(n)
end

function jk.sql.SQLResultSetIterator:getColumnLong(n)
end

function jk.sql.SQLResultSetIterator:getColumnDouble(n)
end

function jk.sql.SQLResultSetIterator:getColumnBuffer(n)
end

function jk.sql.SQLResultSetIterator:close()
end

function jk.sql.SQLResultSetIterator:toVectorOfMaps()
	local v = _g.jk.lang.DynamicVector._construct0(_g.jk.lang.DynamicVector._create())
	while true do
		local o = self:next()
		if o == nil then
			do break end
		end
		do v:appendObject(o) end
	end
	do return v end
end

function jk.sql.SQLResultSetIterator:toVectorList()
	local data = {}
	local cc = self:getColumnCount()
	local cols = {}
	do _g.jk.lang.Vector:setCapacity(cols, cc) end
	do
		local n = 0
		while n < cc do
			do _g.jk.lang.Vector:append(cols, self:getColumnName(n)) end
			do n = n + 1 end
		end
	end
	do _g.jk.lang.Vector:append(data, cols) end
	while true do
		if not self:step() then
			do break end
		end
		do
			local record = {}
			do _g.jk.lang.Vector:setCapacity(record, cc) end
			do
				local n = 0
				while n < cc do
					local co = self:getColumnObject(n)
					if co == nil then
						co = ""
					end
					do _g.jk.lang.Vector:append(record, co) end
					do n = n + 1 end
				end
			end
			do _g.jk.lang.Vector:append(data, record) end
		end
	end
	do return data end
end

function jk.sql.SQLResultSetIterator:headerJSON(sb)
	do sb:appendCharacter(91) end
	do
		local cc = self:getColumnCount()
		do
			local n = 0
			while n < cc do
				if n > 0 then
					do sb:appendCharacter(44) end
				end
				do _g.jk.json.JSONEncoder:encodeToBuilder(self:getColumnName(n), sb) end
				do n = n + 1 end
			end
		end
		do sb:appendCharacter(93) end
	end
end

function jk.sql.SQLResultSetIterator:nextJSON(sb)
	if not self:step() then
		do return false end
	end
	do
		local cc = self:getColumnCount()
		do sb:appendString(",[") end
		do
			local n = 0
			while n < cc do
				if n > 0 then
					do sb:appendCharacter(44) end
				end
				do _g.jk.json.JSONEncoder:encodeToBuilder(self:getColumnObject(n), sb) end
				do n = n + 1 end
			end
		end
		do sb:appendCharacter(93) end
		do return true end
	end
end

function jk.sql.SQLResultSetIterator:toVectorListJSON()
	local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	do sb:appendCharacter(91) end
	do self:headerJSON(sb) end
	while true do
		if not self:nextJSON(sb) then
			do break end
		end
	end
	do sb:appendCharacter(93) end
	do return sb:toString() end
end

jk.sql.SQLResultSetSingleColumnIterator = {}
jk.sql.SQLResultSetSingleColumnIterator.__index = jk.sql.SQLResultSetSingleColumnIterator
_vm:set_metatable(jk.sql.SQLResultSetSingleColumnIterator, {})

function jk.sql.SQLResultSetSingleColumnIterator._create()
	local v = _vm:set_metatable({}, jk.sql.SQLResultSetSingleColumnIterator)
	return v
end

function jk.sql.SQLResultSetSingleColumnIterator:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.sql.SQLResultSetSingleColumnIterator'
	self['_isType.jk.sql.SQLResultSetSingleColumnIterator'] = true
	self['_isType.jk.lang.DynamicIterator'] = true
	self['_isType.jk.lang.StringIterator'] = true
	self['_isType.jk.lang.IntegerIterator'] = true
	self['_isType.jk.lang.LongIntegerIterator'] = true
	self['_isType.jk.lang.DoubleIterator'] = true
	self['_isType.jk.lang.BooleanIterator'] = true
	self['_isType.jk.lang.Iterator'] = true
	self.iterator = nil
	self.columnName = nil
end

function jk.sql.SQLResultSetSingleColumnIterator:_construct0()
	jk.sql.SQLResultSetSingleColumnIterator._init(self)
	return self
end

function jk.sql.SQLResultSetSingleColumnIterator:nextMap()
	if not (self.iterator ~= nil) then
		do return nil end
	end
	do
		local r = self.iterator:next()
		if not (r ~= nil) then
			do return nil end
		end
		do return r end
	end
end

function jk.sql.SQLResultSetSingleColumnIterator:next()
	local m = self:nextMap()
	if not (m ~= nil) then
		do return nil end
	end
	do return m:get(self.columnName) end
end

function jk.sql.SQLResultSetSingleColumnIterator:hasNext()
	if not (self.iterator ~= nil) then
		do return false end
	end
	do return true end
end

function jk.sql.SQLResultSetSingleColumnIterator:nextString()
	local m = self:nextMap()
	if not (m ~= nil) then
		do return nil end
	end
	do return m:getString(self.columnName, nil) end
end

function jk.sql.SQLResultSetSingleColumnIterator:nextInteger()
	local m = self:nextMap()
	if m == nil then
		do return 0 end
	end
	do return m:getInteger(self.columnName, 0) end
end

function jk.sql.SQLResultSetSingleColumnIterator:nextLong()
	local m = self:nextMap()
	if m == nil then
		do return 0 end
	end
	do return m:getLongInteger(self.columnName, 0) end
end

function jk.sql.SQLResultSetSingleColumnIterator:nextDouble()
	local m = self:nextMap()
	if m == nil then
		do return 0.0 end
	end
	do return m:getDouble(self.columnName, 0.0) end
end

function jk.sql.SQLResultSetSingleColumnIterator:nextBoolean()
	local m = self:nextMap()
	if m == nil then
		do return false end
	end
	do return m:getBoolean(self.columnName, false) end
end

function jk.sql.SQLResultSetSingleColumnIterator:getIterator()
	do return self.iterator end
end

function jk.sql.SQLResultSetSingleColumnIterator:setIterator(v)
	self.iterator = v
	do return self end
end

function jk.sql.SQLResultSetSingleColumnIterator:getColumnName()
	do return self.columnName end
end

function jk.sql.SQLResultSetSingleColumnIterator:setColumnName(v)
	self.columnName = v
	do return self end
end

jk.sql.SQLTableColumnIndexInfo = {}
jk.sql.SQLTableColumnIndexInfo.__index = jk.sql.SQLTableColumnIndexInfo
_vm:set_metatable(jk.sql.SQLTableColumnIndexInfo, {})

function jk.sql.SQLTableColumnIndexInfo._create()
	local v = _vm:set_metatable({}, jk.sql.SQLTableColumnIndexInfo)
	return v
end

function jk.sql.SQLTableColumnIndexInfo:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.sql.SQLTableColumnIndexInfo'
	self['_isType.jk.sql.SQLTableColumnIndexInfo'] = true
	self.columns = nil
	self.unique = false
end

function jk.sql.SQLTableColumnIndexInfo:_construct0()
	jk.sql.SQLTableColumnIndexInfo._init(self)
	return self
end

function jk.sql.SQLTableColumnIndexInfo:addColumn(column)
	if _g.jk.lang.String:isNotEmpty(column) then
		if not (self.columns ~= nil) then
			self.columns = {}
		end
		do _g.jk.lang.Vector:append(self.columns, column) end
	end
	do return self end
end

function jk.sql.SQLTableColumnIndexInfo:getColumns()
	do return self.columns end
end

function jk.sql.SQLTableColumnIndexInfo:setColumns(v)
	self.columns = v
	do return self end
end

function jk.sql.SQLTableColumnIndexInfo:getUnique()
	do return self.unique end
end

function jk.sql.SQLTableColumnIndexInfo:setUnique(v)
	self.unique = v
	do return self end
end

jk.sql.SQLTableInfo = {}
jk.sql.SQLTableInfo.__index = jk.sql.SQLTableInfo
_vm:set_metatable(jk.sql.SQLTableInfo, {})

function jk.sql.SQLTableInfo._create()
	local v = _vm:set_metatable({}, jk.sql.SQLTableInfo)
	return v
end

function jk.sql.SQLTableInfo:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.sql.SQLTableInfo'
	self['_isType.jk.sql.SQLTableInfo'] = true
	self.name = nil
	self.columns = nil
	self.indexes = nil
end

function jk.sql.SQLTableInfo:_construct0()
	jk.sql.SQLTableInfo._init(self)
	return self
end

function jk.sql.SQLTableInfo:forName(name)
	do return _g.jk.sql.SQLTableInfo._construct0(_g.jk.sql.SQLTableInfo._create()):setName(name) end
end

function jk.sql.SQLTableInfo:forDetails(name, columns, indexes, uniqueIndexes)
	local v = _g.jk.sql.SQLTableInfo._construct0(_g.jk.sql.SQLTableInfo._create())
	do v:setName(name) end
	if columns ~= nil then
		local n = 0
		local m = #columns
		do
			n = 0
			while n < m do
				local column = columns[n + 1]
				if column ~= nil then
					do v:addColumn(column) end
				end
				do n = n + 1 end
			end
		end
	end
	if indexes ~= nil then
		local n2 = 0
		local m2 = #indexes
		do
			n2 = 0
			while n2 < m2 do
				local index = indexes[n2 + 1]
				if index ~= nil then
					do v:addIndex(index) end
				end
				do n2 = n2 + 1 end
			end
		end
	end
	if uniqueIndexes ~= nil then
		local n3 = 0
		local m3 = #uniqueIndexes
		do
			n3 = 0
			while n3 < m3 do
				local uniqueIndex = uniqueIndexes[n3 + 1]
				if uniqueIndex ~= nil then
					do v:addUniqueIndex(uniqueIndex) end
				end
				do n3 = n3 + 1 end
			end
		end
	end
	do return v end
end

function jk.sql.SQLTableInfo:forDynamicModel(tableName, model)
	if not (model ~= nil) then
		do return nil end
	end
	do
		local table = tableName
		if _g.jk.lang.String:isEmpty(table) then
			local meta = _vm:to_table_with_key(_g.jk.json.JSONParser:parseString(model:getModelMetadata()), '_isType.jk.lang.DynamicMap')
			if meta ~= nil then
				table = meta:getString("table", nil)
			end
		end
		if not _g.jk.lang.String:isNotEmpty(table) then
			do return nil end
		end
		do
			local v = _g.jk.sql.SQLTableInfo:forName(table)
			local array = model:getFields()
			if array ~= nil then
				local n = 0
				local m = _g.jk.lang.Vector:getSize(array)
				do
					n = 0
					while n < m do
						local field = array[n + 1]
						if field ~= nil then
							local fieldName = field:getEncodedName()
							if _g.jk.lang.String:isEmpty(fieldName) then
								fieldName = field:getName()
							end
							if field:getType() == _g.jk.model.DynamicModelField.TYPE_STRING then
								if field:hasTag("key") then
									do v:addStringKeyColumn(fieldName) end
								elseif field:hasTag("index") then
									do v:addStringColumn(fieldName) end
								else
									do v:addTextColumn(fieldName) end
								end
							elseif field:getType() == _g.jk.model.DynamicModelField.TYPE_INTEGER then
								if field:hasTag("key") then
									do v:addIntegerKeyColumn(fieldName) end
								else
									do v:addIntegerColumn(fieldName) end
								end
							elseif field:getType() == _g.jk.model.DynamicModelField.TYPE_LONG_INTEGER then
								if field:hasTag("key") then
									do v:addLongKeyColumn(fieldName) end
								else
									do v:addLongColumn(fieldName) end
								end
							elseif field:getType() == _g.jk.model.DynamicModelField.TYPE_BOOLEAN then
								do v:addIntegerColumn(fieldName) end
							elseif field:getType() == _g.jk.model.DynamicModelField.TYPE_DOUBLE then
								do v:addDoubleColumn(fieldName) end
							elseif field:getType() == _g.jk.model.DynamicModelField.TYPE_BUFFER then
								do v:addBlobColumn(fieldName) end
							elseif field:getType() == _g.jk.model.DynamicModelField.TYPE_VECTOR then
								do v:addTextColumn(fieldName) end
							elseif field:getType() == _g.jk.model.DynamicModelField.TYPE_MAP then
								do v:addTextColumn(fieldName) end
							elseif field:getType() == _g.jk.model.DynamicModelField.TYPE_OBJECT then
								do v:addTextColumn(fieldName) end
							else
								do _g.jk.lang.Error:throw("unsupportedFieldType", _g.jk.lang.String:forInteger(field:getType())) end
							end
							if field:hasTag("index") then
								do v:addIndex(fieldName) end
							end
							if field:hasTag("uniqueIndex") then
								do v:addUniqueIndex(fieldName) end
							end
						end
						do n = n + 1 end
					end
				end
			end
			do return v end
		end
	end
end

function jk.sql.SQLTableInfo:addColumn(info)
	if info == nil then
		do return self end
	end
	if self.columns == nil then
		self.columns = {}
	end
	do _g.jk.lang.Vector:append(self.columns, info) end
	do return self end
end

function jk.sql.SQLTableInfo:addIntegerColumn(name)
	do return self:addColumn(_g.jk.sql.SQLTableColumnInfo:forInteger(name)) end
end

function jk.sql.SQLTableInfo:addLongColumn(name)
	do return self:addColumn(_g.jk.sql.SQLTableColumnInfo:forLongInteger(name)) end
end

function jk.sql.SQLTableInfo:addStringColumn(name)
	do return self:addColumn(_g.jk.sql.SQLTableColumnInfo:forString(name)) end
end

function jk.sql.SQLTableInfo:addStringKeyColumn(name)
	do return self:addColumn(_g.jk.sql.SQLTableColumnInfo:forStringKey(name)) end
end

function jk.sql.SQLTableInfo:addTextColumn(name)
	do return self:addColumn(_g.jk.sql.SQLTableColumnInfo:forText(name)) end
end

function jk.sql.SQLTableInfo:addIntegerKeyColumn(name)
	do return self:addColumn(_g.jk.sql.SQLTableColumnInfo:forIntegerKey(name)) end
end

function jk.sql.SQLTableInfo:addLongKeyColumn(name)
	do return self:addColumn(_g.jk.sql.SQLTableColumnInfo:forLongIntegerKey(name)) end
end

function jk.sql.SQLTableInfo:addDoubleColumn(name)
	do return self:addColumn(_g.jk.sql.SQLTableColumnInfo:forDouble(name)) end
end

function jk.sql.SQLTableInfo:addBlobColumn(name)
	do return self:addColumn(_g.jk.sql.SQLTableColumnInfo:forBlob(name)) end
end

function jk.sql.SQLTableInfo:addIndex(column)
	if _g.jk.lang.String:isEmpty(column) == false then
		if self.indexes == nil then
			self.indexes = {}
		end
		do _g.jk.lang.Vector:append(self.indexes, _g.jk.sql.SQLTableColumnIndexInfo._construct0(_g.jk.sql.SQLTableColumnIndexInfo._create()):addColumn(column):setUnique(false)) end
	end
	do return self end
end

function jk.sql.SQLTableInfo:addMultiColumnIndex(columns)
	if columns ~= nil and #columns > 0 then
		if self.indexes == nil then
			self.indexes = {}
		end
		do
			local index = _g.jk.sql.SQLTableColumnIndexInfo._construct0(_g.jk.sql.SQLTableColumnIndexInfo._create())
			do index:setUnique(false) end
			if columns ~= nil then
				local n = 0
				local m = #columns
				do
					n = 0
					while n < m do
						local column = columns[n + 1]
						if column ~= nil then
							do index:addColumn(_g.jk.lang.String:asString(column)) end
						end
						do n = n + 1 end
					end
				end
			end
			do _g.jk.lang.Vector:append(self.indexes, index) end
		end
	end
	do return self end
end

function jk.sql.SQLTableInfo:addUniqueIndex(column)
	if _g.jk.lang.String:isEmpty(column) == false then
		if self.indexes == nil then
			self.indexes = {}
		end
		do _g.jk.lang.Vector:append(self.indexes, _g.jk.sql.SQLTableColumnIndexInfo._construct0(_g.jk.sql.SQLTableColumnIndexInfo._create()):addColumn(column):setUnique(true)) end
	end
	do return self end
end

function jk.sql.SQLTableInfo:addUniqueMultiColumnIndex(columns)
	if columns ~= nil and #columns > 0 then
		if self.indexes == nil then
			self.indexes = {}
		end
		do
			local index = _g.jk.sql.SQLTableColumnIndexInfo._construct0(_g.jk.sql.SQLTableColumnIndexInfo._create())
			do index:setUnique(true) end
			if columns ~= nil then
				local n = 0
				local m = #columns
				do
					n = 0
					while n < m do
						local column = columns[n + 1]
						if column ~= nil then
							do index:addColumn(_g.jk.lang.String:asString(column)) end
						end
						do n = n + 1 end
					end
				end
			end
			do _g.jk.lang.Vector:append(self.indexes, index) end
		end
	end
	do return self end
end

function jk.sql.SQLTableInfo:getName()
	do return self.name end
end

function jk.sql.SQLTableInfo:setName(v)
	self.name = v
	do return self end
end

function jk.sql.SQLTableInfo:getColumns()
	do return self.columns end
end

function jk.sql.SQLTableInfo:setColumns(v)
	self.columns = v
	do return self end
end

function jk.sql.SQLTableInfo:getIndexes()
	do return self.indexes end
end

function jk.sql.SQLTableInfo:setIndexes(v)
	self.indexes = v
	do return self end
end

jk.sql.SQLDatabase = {}
jk.sql.SQLDatabase.__index = jk.sql.SQLDatabase
_vm:set_metatable(jk.sql.SQLDatabase, {})

function jk.sql.SQLDatabase._create()
	local v = _vm:set_metatable({}, jk.sql.SQLDatabase)
	return v
end

function jk.sql.SQLDatabase:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.sql.SQLDatabase'
	self['_isType.jk.sql.SQLDatabase'] = true
	self.logger = nil
end

function jk.sql.SQLDatabase:_construct0()
	jk.sql.SQLDatabase._init(self)
	return self
end

function jk.sql.SQLDatabase:logDebug(message)
	do _g.jk.log.Log:debug(self.logger, message) end
end

function jk.sql.SQLDatabase:logInfo(message)
	do _g.jk.log.Log:info(self.logger, message) end
end

function jk.sql.SQLDatabase:logWarning(message)
	do _g.jk.log.Log:warning(self.logger, message) end
end

function jk.sql.SQLDatabase:logError(message)
	do _g.jk.log.Log:error(self.logger, message) end
end

function jk.sql.SQLDatabase:getDatabaseTypeId()
end

function jk.sql.SQLDatabase:prepareSync(sql)
end

function jk.sql.SQLDatabase:prepareCreateTableStatementSync(table, columns)
end

function jk.sql.SQLDatabase:prepareDeleteTableStatementSync(table)
end

function jk.sql.SQLDatabase:prepareCreateIndexStatementSync(table, columns, unique)
	if not (_g.jk.lang.String:isNotEmpty(table) and _g.jk.lang.Vector:isNotEmpty(columns)) then
		do return nil end
	end
	do
		local namesb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		do namesb:appendString(table) end
		if columns ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(columns)
			do
				n = 0
				while n < m do
					local column = columns[n + 1]
					if column ~= nil then
						do namesb:appendCharacter(95) end
						do namesb:appendString(column) end
					end
					do n = n + 1 end
				end
			end
		end
		do
			local idxname = namesb:toString()
			local unq = ""
			if unique then
				unq = "UNIQUE "
			end
			do
				local sqlsb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
				do sqlsb:appendString("CREATE ") end
				do sqlsb:appendString(unq) end
				do sqlsb:appendString("INDEX ") end
				do sqlsb:appendString(idxname) end
				do sqlsb:appendString(" ON ") end
				do sqlsb:appendString(table) end
				do sqlsb:appendString(" (") end
				do
					local first = true
					if columns ~= nil then
						local n2 = 0
						local m2 = _g.jk.lang.Vector:getSize(columns)
						do
							n2 = 0
							while n2 < m2 do
								local column = columns[n2 + 1]
								if column ~= nil then
									if first then
										do sqlsb:appendString(" ") end
									else
										do sqlsb:appendString(", ") end
									end
									first = false
									do sqlsb:appendString(column) end
								end
								do n2 = n2 + 1 end
							end
						end
					end
					do sqlsb:appendString(" )") end
					do return self:prepareSync(sqlsb:toString()) end
				end
			end
		end
	end
end

function jk.sql.SQLDatabase:prepareCreateColumnStatementSync(table, column)
end

function jk.sql.SQLDatabase:prepareUpdateColumnTypeStatementSync(table, column)
end

function jk.sql.SQLDatabase:getLastInsertIdSync(table)
end

function jk.sql.SQLDatabase:getIdentityColumnNameSync(table)
end

function jk.sql.SQLDatabase:getPrimaryKeyColumnNameSync(table)
end

function jk.sql.SQLDatabase:columnExistsSync(table, name)
end

function jk.sql.SQLDatabase:isColumnTypeSameSync(table, column)
end

function jk.sql.SQLDatabase:closeSync()
end

function jk.sql.SQLDatabase:executeSync(stmt)
end

function jk.sql.SQLDatabase:executeUpdateDeleteSync(stmt)
end

function jk.sql.SQLDatabase:querySync(stmt)
end

function jk.sql.SQLDatabase:querySingleRowSync(stmt)
end

function jk.sql.SQLDatabase:tableExistsSync(table)
end

function jk.sql.SQLDatabase:queryAllTableNamesSync()
end

function jk.sql.SQLDatabase:close(callback)
end

function jk.sql.SQLDatabase:execute(stmt, callback)
end

function jk.sql.SQLDatabase:executeUpdateDelete(stmt, callback)
end

function jk.sql.SQLDatabase:query(stmt, callback)
end

function jk.sql.SQLDatabase:querySingleRow(stmt, callback)
end

function jk.sql.SQLDatabase:tableExists(table, callback)
end

function jk.sql.SQLDatabase:queryAllTableNames(callback)
end

function jk.sql.SQLDatabase:ensureColumnsExistsSync(tableName, columns)
	if columns ~= nil then
		local n = 0
		local m = _g.jk.lang.Vector:getSize(columns)
		do
			n = 0
			while n < m do
				local column = columns[n + 1]
				if column ~= nil then
					if self:columnExistsSync(tableName, column:getName()) then
						if not self:isColumnTypeSameSync(tableName, column) then
							if not self:executeSync(self:prepareUpdateColumnTypeStatementSync(tableName, column)) then
								do return false end
							end
						end
					elseif not self:executeSync(self:prepareCreateColumnStatementSync(tableName, column)) then
						do return false end
					end
				end
				do n = n + 1 end
			end
		end
	end
	do return true end
end

function jk.sql.SQLDatabase:ensureTableExistsSync(table)
	if not (table ~= nil) then
		do return false end
	end
	do
		local name = table:getName()
		if not _g.jk.lang.String:isNotEmpty(name) then
			do return false end
		end
		if self:tableExistsSync(name) then
			local v = self:ensureColumnsExistsSync(name, table:getColumns())
			if v then
				do return true end
			end
			do return false end
		end
		if not self:executeSync(self:prepareCreateTableStatementSync(name, table:getColumns())) then
			do return false end
		end
		do
			local array = table:getIndexes()
			if array ~= nil then
				local n = 0
				local m = _g.jk.lang.Vector:getSize(array)
				do
					n = 0
					while n < m do
						local cii = array[n + 1]
						if cii ~= nil then
							if not self:executeSync(self:prepareCreateIndexStatementSync(name, cii:getColumns(), cii:getUnique())) then
								do self:executeSync(self:prepareDeleteTableStatementSync(name)) end
							end
						end
						do n = n + 1 end
					end
				end
			end
			do return true end
		end
	end
end

function jk.sql.SQLDatabase:ensureTableExists(table, callback)
	local v = self:ensureTableExistsSync(table)
	if callback ~= nil then
		do callback(v) end
	end
end

function jk.sql.SQLDatabase:createColumnSelectionString(columns)
	if not (columns ~= nil) or #columns < 1 then
		do return "*" end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		local first = true
		if columns ~= nil then
			local n = 0
			local m = #columns
			do
				n = 0
				while n < m do
					local column = (function(o)
						if (_vm:get_variable_type(o) == 'string') then
							do return o end
						end
						do return nil end
					end)(columns[n + 1])
					if column ~= nil then
						if not first then
							do sb:appendString(", ") end
						end
						do sb:appendString(column) end
						first = false
					end
					do n = n + 1 end
				end
			end
		end
		do return sb:toString() end
	end
end

function jk.sql.SQLDatabase:createOrderByString(order)
	if not (order ~= nil and #order > 0) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		do sb:appendString(" ORDER BY ") end
		do
			local first = true
			if order ~= nil then
				local n = 0
				local m = #order
				do
					n = 0
					while n < m do
						local rule = order[n + 1]
						if rule ~= nil then
							if not first then
								do sb:appendString(", ") end
							end
							if (_vm:to_table_with_key(rule, '_isType.jk.sql.SQLOrderingRule') ~= nil) then
								local sr = rule
								do sb:appendString(sr:getColumn()) end
								do sb:appendCharacter(32) end
								if sr:getDescending() then
									do sb:appendString("DESC") end
								else
									do sb:appendString("ASC") end
								end
							else
								local str = _g.jk.lang.String:asString(rule)
								if not (str ~= nil) then
									str = "unknown"
								end
								do sb:appendString(str) end
								do sb:appendString(" DESC") end
							end
							first = false
						end
						do n = n + 1 end
					end
				end
			end
			do return sb:toString() end
		end
	end
end

function jk.sql.SQLDatabase:prepareQueryAllStatementSync(table, columns, order)
	local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	do sb:appendString("SELECT ") end
	do sb:appendString(self:createColumnSelectionString(columns)) end
	do sb:appendString(" FROM ") end
	do sb:appendString(table) end
	do sb:appendString(self:createOrderByString(order)) end
	do sb:appendString(";") end
	do return self:prepareSync(sb:toString()) end
end

function jk.sql.SQLDatabase:prepareCountRecordsStatementSync(table, criteria, likeOperator)
	local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	do sb:appendString("SELECT COUNT(*) AS count FROM ") end
	do sb:appendString(table) end
	do
		local first = true
		local keys = nil
		if criteria ~= nil then
			keys = criteria:getKeys()
			if keys ~= nil then
				local n = 0
				local m = _g.jk.lang.Vector:getSize(keys)
				do
					n = 0
					while n < m do
						local key = keys[n + 1]
						if key ~= nil then
							if first then
								do sb:appendString(" WHERE ") end
								first = false
							else
								do sb:appendString(" AND ") end
							end
							do sb:appendString(key) end
							do
								local value = criteria:getString(key, nil)
								if value == nil then
									do sb:appendString(" IS NULL") end
								elseif likeOperator then
									do sb:appendString(" LIKE ?") end
								else
									do sb:appendString(" = ?") end
								end
							end
						end
						do n = n + 1 end
					end
				end
			end
		end
		do sb:appendCharacter(59) end
		do
			local stmt = self:prepareSync(sb:toString())
			if not (stmt ~= nil) then
				do return nil end
			end
			if keys ~= nil then
				if keys ~= nil then
					local n2 = 0
					local m2 = _g.jk.lang.Vector:getSize(keys)
					do
						n2 = 0
						while n2 < m2 do
							local key = keys[n2 + 1]
							if key ~= nil then
								local val = criteria:getString(key, nil)
								if val == nil then
									goto _continue1
								end
								if likeOperator then
									do stmt:addParamString("%" .. _g.jk.lang.String:safeString(val) .. "%") end
								else
									do stmt:addParamString(val) end
								end
							end
							::_continue1::
							do n2 = n2 + 1 end
						end
					end
				end
			end
			do return stmt end
		end
	end
end

function jk.sql.SQLDatabase:prepareQueryWithCriteriaStatementSync(table, criteria, limit, offset, columns, order, likeOperator)
	local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	do sb:appendString("SELECT ") end
	do sb:appendString(self:createColumnSelectionString(columns)) end
	do sb:appendString(" FROM ") end
	do sb:appendString(table) end
	do
		local first = true
		local keys = nil
		if criteria ~= nil then
			keys = criteria:getKeys()
			if keys ~= nil then
				local n = 0
				local m = _g.jk.lang.Vector:getSize(keys)
				do
					n = 0
					while n < m do
						local key = keys[n + 1]
						if key ~= nil then
							if first then
								do sb:appendString(" WHERE ") end
								first = false
							else
								do sb:appendString(" AND ") end
							end
							do sb:appendString(key) end
							do
								local value = criteria:getString(key, nil)
								if value == nil then
									do sb:appendString(" IS NULL") end
								elseif likeOperator then
									do sb:appendString(" LIKE ?") end
								else
									do sb:appendString(" = ?") end
								end
							end
						end
						do n = n + 1 end
					end
				end
			end
		end
		do sb:appendString(self:createOrderByString(order)) end
		if limit > 0 then
			do sb:appendString(" LIMIT ") end
			do sb:appendString(_g.jk.lang.String:forInteger(limit)) end
		end
		if offset > 0 then
			do sb:appendString(" OFFSET ") end
			do sb:appendString(_g.jk.lang.String:forInteger(offset)) end
		end
		do sb:appendCharacter(59) end
		do
			local sql = sb:toString()
			local stmt = self:prepareSync(sql)
			if not (stmt ~= nil) then
				do return nil end
			end
			if keys ~= nil then
				if keys ~= nil then
					local n2 = 0
					local m2 = _g.jk.lang.Vector:getSize(keys)
					do
						n2 = 0
						while n2 < m2 do
							local key = keys[n2 + 1]
							if key ~= nil then
								local val = criteria:getString(key, nil)
								if val == nil then
									goto _continue2
								end
								if likeOperator then
									do stmt:addParamString("%" .. _g.jk.lang.String:safeString(val) .. "%") end
								else
									do stmt:addParamString(val) end
								end
							end
							::_continue2::
							do n2 = n2 + 1 end
						end
					end
				end
			end
			do return stmt end
		end
	end
end

function jk.sql.SQLDatabase:prepareQueryDistinctValuesStatementSync(table, column)
	if not (_g.jk.lang.String:isNotEmpty(table) and _g.jk.lang.String:isNotEmpty(column)) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		do sb:appendString("SELECT DISTINCT ") end
		do sb:appendString(column) end
		do sb:appendString(" FROM ") end
		do sb:appendString(table) end
		do sb:appendString(";") end
		do return self:prepareSync(sb:toString()) end
	end
end

function jk.sql.SQLDatabase:prepareSelectStatementSync(table, criteria)
	do return self:prepareQueryWithCriteriaStatementSync(table, criteria, 0, 0, nil, nil, false) end
end

function jk.sql.SQLDatabase:prepareInsertStatementSync(table, data)
	if not (_g.jk.lang.String:isNotEmpty(table) and data ~= nil and data:getCount() > 0) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		do sb:appendString("INSERT INTO ") end
		do sb:appendString(table) end
		do sb:appendString(" ( ") end
		do
			local first = true
			local keys = data:getKeys()
			if keys ~= nil then
				local n = 0
				local m = _g.jk.lang.Vector:getSize(keys)
				do
					n = 0
					while n < m do
						local key = keys[n + 1]
						if key ~= nil then
							if not first then
								do sb:appendCharacter(44) end
							end
							do sb:appendString((function(o)
								if (_vm:get_variable_type(o) == 'string') then
									do return o end
								end
								do return nil end
							end)(key)) end
							first = false
						end
						do n = n + 1 end
					end
				end
			end
			do sb:appendString(" ) VALUES ( ") end
			first = true
			if keys ~= nil then
				local n2 = 0
				local m2 = _g.jk.lang.Vector:getSize(keys)
				do
					n2 = 0
					while n2 < m2 do
						local key = keys[n2 + 1]
						if key ~= nil then
							if not first then
								do sb:appendCharacter(44) end
							end
							if data:get(key) == nil then
								do sb:appendString("NULL") end
							else
								do sb:appendCharacter(63) end
							end
							first = false
						end
						do n2 = n2 + 1 end
					end
				end
			end
			do sb:appendString(" );") end
			do
				local stmt = self:prepareSync(sb:toString())
				if not (stmt ~= nil) then
					do return nil end
				end
				if keys ~= nil then
					local n3 = 0
					local m3 = _g.jk.lang.Vector:getSize(keys)
					do
						n3 = 0
						while n3 < m3 do
							local key = keys[n3 + 1]
							if key ~= nil then
								local o = data:get(key)
								if o == nil then
									goto _continue3
								end
								if (_vm:get_variable_type(o) == 'string') or (_vm:to_table_with_key(o, '_isType.jk.lang.StringObject') ~= nil) then
									do stmt:addParamString(_g.jk.lang.String:asString(o)) end
								elseif (_vm:to_table_with_key(o, '_isType.jk.lang.IntegerObject') ~= nil) then
									do stmt:addParamInteger(_g.jk.lang.Integer:asInteger(o)) end
								elseif (_vm:to_table_with_key(o, '_isType.jk.lang.LongIntegerObject') ~= nil) then
									do stmt:addParamLongInteger(_g.jk.lang.LongInteger:asLong(o)) end
								elseif (_vm:to_table_with_key(o, '_isType.jk.lang.DoubleObject') ~= nil) then
									do stmt:addParamDouble(_g.jk.lang.Double:asDouble(o)) end
								elseif (_vm:to_table_with_key(o, '_isType.jk.lang.BufferObject') ~= nil) then
									do stmt:addParamBlob(o:toBuffer()) end
								elseif _util:is_buffer(o) then
									do stmt:addParamBlob((function(o)
										if _util:is_buffer(o) then
											do return o end
										end
										do return nil end
									end)(o)) end
								elseif (_vm:to_table_with_key(o, '_isType.jk.lang.BooleanObject') ~= nil) then
									do stmt:addParamInteger((function(a, b, c)
										if a then
											do return b() end
										end
										do return c() end
									end)(o:toBoolean(), function()
										do return 1 end
									end, function()
										do return 0 end
									end)) end
								else
									local s = _g.jk.lang.String:asString(o)
									if not (s ~= nil) then
										s = ""
									end
									do stmt:addParamString(s) end
								end
							end
							::_continue3::
							do n3 = n3 + 1 end
						end
					end
				end
				do return stmt end
			end
		end
	end
end

function jk.sql.SQLDatabase:prepareUpdateStatementSync(table, criteria, data)
	if not (_g.jk.lang.String:isNotEmpty(table) and data ~= nil and data:getCount() > 0) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		do sb:appendString("UPDATE ") end
		do sb:appendString(table) end
		do sb:appendString(" SET ") end
		do
			local params = {}
			local first = true
			local keys = data:iterateKeys()
			while keys ~= nil do
				local key = keys:next()
				if not (key ~= nil) then
					do break end
				end
				if not first then
					do sb:appendString(", ") end
				end
				do sb:appendString(key) end
				do
					local value = data:get(key)
					if value == nil then
						do sb:appendString(" = NULL") end
					else
						do sb:appendString(" = ?") end
						do _g.jk.lang.Vector:append(params, value) end
					end
					first = false
				end
			end
			if criteria ~= nil and criteria:getCount() > 0 then
				do sb:appendString(" WHERE ") end
				first = true
				do
					local criterias = criteria:iterateKeys()
					while criterias ~= nil do
						local criterium = criterias:next()
						if not (criterium ~= nil) then
							do break end
						end
						if not first then
							do sb:appendString(" AND ") end
						end
						do sb:appendString(criterium) end
						do
							local value = criteria:get(criterium)
							if value == nil then
								do sb:appendString(" IS NULL") end
							else
								do sb:appendString(" = ?") end
								do _g.jk.lang.Vector:append(params, value) end
							end
							first = false
						end
					end
				end
			end
			do sb:appendCharacter(59) end
			do
				local stmt = self:prepareSync(sb:toString())
				if not (stmt ~= nil) then
					do return nil end
				end
				if params ~= nil then
					local n = 0
					local m = _g.jk.lang.Vector:getSize(params)
					do
						n = 0
						while n < m do
							local o = params[n + 1]
							if o ~= nil then
								if (_vm:to_table_with_key(o, '_isType.jk.lang.BufferObject') ~= nil) then
									do stmt:addParamBlob(o:toBuffer()) end
								elseif _util:is_buffer(o) then
									do stmt:addParamBlob(o) end
								elseif (_vm:to_table_with_key(o, '_isType.jk.lang.BooleanObject') ~= nil) then
									do stmt:addParamInteger((function(a, b, c)
										if a then
											do return b() end
										end
										do return c() end
									end)(o:toBoolean(), function()
										do return 1 end
									end, function()
										do return 0 end
									end)) end
								else
									local s = _g.jk.lang.String:asString(o)
									if not (s ~= nil) then
										s = ""
									end
									do stmt:addParamString(s) end
								end
							end
							do n = n + 1 end
						end
					end
				end
				do return stmt end
			end
		end
	end
end

function jk.sql.SQLDatabase:prepareDeleteStatementSync(table, criteria)
	if not _g.jk.lang.String:isNotEmpty(table) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		do sb:appendString("DELETE FROM ") end
		do sb:appendString(table) end
		do
			local params = {}
			if criteria ~= nil and criteria:getCount() > 0 then
				do sb:appendString(" WHERE ") end
				do
					local first = true
					local criterias = criteria:iterateKeys()
					while criterias ~= nil do
						local criterium = criterias:next()
						if not (criterium ~= nil) then
							do break end
						end
						if not first then
							do sb:appendString(" AND ") end
						end
						do sb:appendString(criterium) end
						do sb:appendString(" = ?") end
						first = false
						do _g.jk.lang.Vector:append(params, criteria:get(criterium)) end
					end
				end
			end
			do sb:appendCharacter(59) end
			do
				local stmt = self:prepareSync(sb:toString())
				if not (stmt ~= nil) then
					do return nil end
				end
				if params ~= nil then
					local n = 0
					local m = _g.jk.lang.Vector:getSize(params)
					do
						n = 0
						while n < m do
							local o = params[n + 1]
							if o ~= nil then
								if (_vm:to_table_with_key(o, '_isType.jk.lang.BufferObject') ~= nil) then
									do stmt:addParamBlob(o:toBuffer()) end
								elseif _util:is_buffer(o) then
									do stmt:addParamBlob(o) end
								elseif (_vm:to_table_with_key(o, '_isType.jk.lang.BooleanObject') ~= nil) then
									do stmt:addParamInteger((function(a, b, c)
										if a then
											do return b() end
										end
										do return c() end
									end)(o:toBoolean(), function()
										do return 1 end
									end, function()
										do return 0 end
									end)) end
								else
									local s = _g.jk.lang.String:asString(o)
									if not (s ~= nil) then
										s = ""
									end
									do stmt:addParamString(s) end
								end
							end
							do n = n + 1 end
						end
					end
				end
				do return stmt end
			end
		end
	end
end

function jk.sql.SQLDatabase:getLogger()
	do return self.logger end
end

function jk.sql.SQLDatabase:setLogger(v)
	self.logger = v
	do return self end
end

jk.sql.SQLTableColumnInfo = {}
jk.sql.SQLTableColumnInfo.__index = jk.sql.SQLTableColumnInfo
_vm:set_metatable(jk.sql.SQLTableColumnInfo, {})

jk.sql.SQLTableColumnInfo.TYPE_INTEGER = 0
jk.sql.SQLTableColumnInfo.TYPE_STRING = 1
jk.sql.SQLTableColumnInfo.TYPE_TEXT = 2
jk.sql.SQLTableColumnInfo.TYPE_INTEGER_KEY = 3
jk.sql.SQLTableColumnInfo.TYPE_DOUBLE = 4
jk.sql.SQLTableColumnInfo.TYPE_BLOB = 5
jk.sql.SQLTableColumnInfo.TYPE_STRING_KEY = 6
jk.sql.SQLTableColumnInfo.TYPE_LONG = 7
jk.sql.SQLTableColumnInfo.TYPE_LONG_KEY = 8

function jk.sql.SQLTableColumnInfo._create()
	local v = _vm:set_metatable({}, jk.sql.SQLTableColumnInfo)
	return v
end

function jk.sql.SQLTableColumnInfo:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.sql.SQLTableColumnInfo'
	self['_isType.jk.sql.SQLTableColumnInfo'] = true
	self.name = nil
	self.type = 0
end

function jk.sql.SQLTableColumnInfo:_construct0()
	jk.sql.SQLTableColumnInfo._init(self)
	return self
end

function jk.sql.SQLTableColumnInfo:instance(name, type)
	do return _g.jk.sql.SQLTableColumnInfo._construct0(_g.jk.sql.SQLTableColumnInfo._create()):setName(name):setType(type) end
end

function jk.sql.SQLTableColumnInfo:forInteger(name)
	do return _g.jk.sql.SQLTableColumnInfo._construct0(_g.jk.sql.SQLTableColumnInfo._create()):setName(name):setType(_g.jk.sql.SQLTableColumnInfo.TYPE_INTEGER) end
end

function jk.sql.SQLTableColumnInfo:forString(name)
	do return _g.jk.sql.SQLTableColumnInfo._construct0(_g.jk.sql.SQLTableColumnInfo._create()):setName(name):setType(_g.jk.sql.SQLTableColumnInfo.TYPE_STRING) end
end

function jk.sql.SQLTableColumnInfo:forStringKey(name)
	do return _g.jk.sql.SQLTableColumnInfo._construct0(_g.jk.sql.SQLTableColumnInfo._create()):setName(name):setType(_g.jk.sql.SQLTableColumnInfo.TYPE_STRING_KEY) end
end

function jk.sql.SQLTableColumnInfo:forText(name)
	do return _g.jk.sql.SQLTableColumnInfo._construct0(_g.jk.sql.SQLTableColumnInfo._create()):setName(name):setType(_g.jk.sql.SQLTableColumnInfo.TYPE_TEXT) end
end

function jk.sql.SQLTableColumnInfo:forIntegerKey(name)
	do return _g.jk.sql.SQLTableColumnInfo._construct0(_g.jk.sql.SQLTableColumnInfo._create()):setName(name):setType(_g.jk.sql.SQLTableColumnInfo.TYPE_INTEGER_KEY) end
end

function jk.sql.SQLTableColumnInfo:forLongIntegerKey(name)
	do return _g.jk.sql.SQLTableColumnInfo._construct0(_g.jk.sql.SQLTableColumnInfo._create()):setName(name):setType(_g.jk.sql.SQLTableColumnInfo.TYPE_LONG_KEY) end
end

function jk.sql.SQLTableColumnInfo:forLongInteger(name)
	do return _g.jk.sql.SQLTableColumnInfo._construct0(_g.jk.sql.SQLTableColumnInfo._create()):setName(name):setType(_g.jk.sql.SQLTableColumnInfo.TYPE_LONG) end
end

function jk.sql.SQLTableColumnInfo:forDouble(name)
	do return _g.jk.sql.SQLTableColumnInfo._construct0(_g.jk.sql.SQLTableColumnInfo._create()):setName(name):setType(_g.jk.sql.SQLTableColumnInfo.TYPE_DOUBLE) end
end

function jk.sql.SQLTableColumnInfo:forBlob(name)
	do return _g.jk.sql.SQLTableColumnInfo._construct0(_g.jk.sql.SQLTableColumnInfo._create()):setName(name):setType(_g.jk.sql.SQLTableColumnInfo.TYPE_BLOB) end
end

function jk.sql.SQLTableColumnInfo:getName()
	do return self.name end
end

function jk.sql.SQLTableColumnInfo:setName(v)
	self.name = v
	do return self end
end

function jk.sql.SQLTableColumnInfo:getType()
	do return self.type end
end

function jk.sql.SQLTableColumnInfo:setType(v)
	self.type = v
	do return self end
end

jk.sql.SQLOrderingRule = {}
jk.sql.SQLOrderingRule.__index = jk.sql.SQLOrderingRule
_vm:set_metatable(jk.sql.SQLOrderingRule, {})

function jk.sql.SQLOrderingRule._create()
	local v = _vm:set_metatable({}, jk.sql.SQLOrderingRule)
	return v
end

function jk.sql.SQLOrderingRule:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.sql.SQLOrderingRule'
	self['_isType.jk.sql.SQLOrderingRule'] = true
	self.column = nil
	self.descending = false
end

function jk.sql.SQLOrderingRule:_construct0()
	jk.sql.SQLOrderingRule._init(self)
	return self
end

function jk.sql.SQLOrderingRule:forDescending(column)
	local v = _g.jk.sql.SQLOrderingRule._construct0(_g.jk.sql.SQLOrderingRule._create())
	do v:setColumn(column) end
	do v:setDescending(true) end
	do return v end
end

function jk.sql.SQLOrderingRule:forAscending(column)
	local v = _g.jk.sql.SQLOrderingRule._construct0(_g.jk.sql.SQLOrderingRule._create())
	do v:setColumn(column) end
	do v:setDescending(false) end
	do return v end
end

function jk.sql.SQLOrderingRule:getColumn()
	do return self.column end
end

function jk.sql.SQLOrderingRule:setColumn(v)
	self.column = v
	do return self end
end

function jk.sql.SQLOrderingRule:getDescending()
	do return self.descending end
end

function jk.sql.SQLOrderingRule:setDescending(v)
	self.descending = v
	do return self end
end
jk = jk or {}

jk.mypacket = jk.mypacket or {}

jk.mypacket.MyPacketParser = {}
jk.mypacket.MyPacketParser.__index = jk.mypacket.MyPacketParser
_vm:set_metatable(jk.mypacket.MyPacketParser, {})

function jk.mypacket.MyPacketParser._create()
	local v = _vm:set_metatable({}, jk.mypacket.MyPacketParser)
	return v
end

function jk.mypacket.MyPacketParser:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mypacket.MyPacketParser'
	self['_isType.jk.mypacket.MyPacketParser'] = true
	self.buffer = nil
	self.position = 0
end

function jk.mypacket.MyPacketParser:_construct0()
	jk.mypacket.MyPacketParser._init(self)
	return self
end

function jk.mypacket.MyPacketParser:forBuffer(buffer)
	local v = _g.jk.mypacket.MyPacketParser._construct0(_g.jk.mypacket.MyPacketParser._create())
	do v:setBuffer(buffer) end
	do return v end
end

function jk.mypacket.MyPacketParser:isValid(length)
	if not (self.buffer ~= nil) then
		do return false end
	end
	do
		local sz = #self.buffer
		if not (self.position + length <= sz) then
			do return false end
		end
		do return true end
	end
end

function jk.mypacket.MyPacketParser:skipBytes(count)
	self.position = self.position + count
end

function jk.mypacket.MyPacketParser:getInt8()
	if not self:isValid(1) then
		do return 0 end
	end
	do return self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1] end
end

function jk.mypacket.MyPacketParser:getFloat()
	if not self:isValid(4) then
		do return 0.0 end
	end
	do
		local bb = _util:allocate_buffer(4)
		bb[0 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[1 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[2 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[3 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		do return _g.jk.lang.Buffer:getFloatLE(bb, 0) end
	end
end

function jk.mypacket.MyPacketParser:getDouble()
	if not self:isValid(8) then
		do return 0.0 end
	end
	do
		local bb = _util:allocate_buffer(8)
		bb[0 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[1 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[2 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[3 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[4 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[5 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[6 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[7 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		do return _g.jk.lang.Buffer:getDoubleLE(bb, 0) end
	end
end

function jk.mypacket.MyPacketParser:getInt16()
	if not self:isValid(2) then
		do return 0 end
	end
	do
		local bb = _util:allocate_buffer(2)
		bb[0 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[1 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		do return _g.jk.lang.Buffer:getInt16LE(bb, 0) end
	end
end

function jk.mypacket.MyPacketParser:getInt24()
	if not self:isValid(3) then
		do return 0 end
	end
	do
		local bb = _util:allocate_buffer(4)
		bb[0 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[1 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[2 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[3 + 1] = 0
		do return _g.jk.lang.Buffer:getInt32LE(bb, 0) end
	end
end

function jk.mypacket.MyPacketParser:getInt32()
	if not self:isValid(4) then
		do return 0 end
	end
	do
		local bb = _util:allocate_buffer(4)
		bb[0 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[1 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[2 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[3 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		do return _g.jk.lang.Buffer:getInt32LE(bb, 0) end
	end
end

function jk.mypacket.MyPacketParser:getInt64()
	if not self:isValid(8) then
		do return 0 end
	end
	do
		local bb = _util:allocate_buffer(8)
		bb[0 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[1 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[2 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[3 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[4 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[5 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[6 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		bb[7 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
		do return _g.jk.lang.Buffer:getInt64LE(bb, 0) end
	end
end

function jk.mypacket.MyPacketParser:getLengthEncodedInteger()
	if not self:isValid(1) then
		do return 0 end
	end
	do
		local first = self.buffer[self.position + 1]
		if first < 251 then
			do self.position = self.position + 1 end
			do return first end
		end
		if first == 252 then
			if not self:isValid(3) then
				do return 0 end
			end
			do self.position = self.position + 1 end
			do
				local bb = _util:allocate_buffer(2)
				bb[0 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
				bb[1 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
				do return _g.jk.lang.Buffer:getInt16LE(bb, 0) end
			end
		end
		if first == 253 then
			if not self:isValid(4) then
				do return 0 end
			end
			do self.position = self.position + 1 end
			do
				local bb = _util:allocate_buffer(4)
				bb[0 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
				bb[1 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
				bb[2 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
				bb[3 + 1] = 0
				do return _g.jk.lang.Buffer:getInt32LE(bb, 0) end
			end
		end
		if first == 254 then
			if not self:isValid(9) then
				do return 0 end
			end
			do self.position = self.position + 1 end
			do
				local bb = _util:allocate_buffer(8)
				bb[0 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
				bb[1 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
				bb[2 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
				bb[3 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
				bb[4 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
				bb[5 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
				bb[6 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
				bb[7 + 1] = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
				do return _g.jk.lang.Buffer:getInt64LE(bb, 0) end
			end
		end
		_io:write_to_stdout("[jk.mypacket.MyPacketParser.getLengthEncodedInteger] (MyPacketParser.sling:167:2): Invalid byte as first byte of length encoded integer." .. "\n")
		do return 0 end
	end
end

function jk.mypacket.MyPacketParser:getNullTerminatedString()
	if not (self.buffer ~= nil) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		local sz = #self.buffer
		while self.position < sz do
			local c = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
			if c < 1 then
				do break end
			end
			do sb:appendCharacter(c) end
		end
		do return sb:toString() end
	end
end

function jk.mypacket.MyPacketParser:getEofTerminatedString()
	if not (self.buffer ~= nil) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		local sz = #self.buffer
		while self.position < sz do
			local c = self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]
			do sb:appendCharacter(c) end
		end
		do return sb:toString() end
	end
end

function jk.mypacket.MyPacketParser:getStaticLengthString(length)
	if not (length > 0) then
		do return nil end
	end
	if not self:isValid(length) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		do
			local n = 0
			while n < length do
				do sb:appendCharacter(self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1]) end
				do n = n + 1 end
			end
		end
		do return sb:toString() end
	end
end

function jk.mypacket.MyPacketParser:getLengthEncodedString()
	local length = self:getLengthEncodedInteger()
	if length < 1 then
		do return "" end
	end
	do return self:getStaticLengthString(length) end
end

function jk.mypacket.MyPacketParser:getLengthEncodedBuffer()
	local length = self:getLengthEncodedInteger()
	if length < 1 then
		do return nil end
	end
	do return self:getBuffer(length) end
end

function jk.mypacket.MyPacketParser:getBuffer(length)
	if not self:isValid(length) then
		do return nil end
	end
	do
		local v = _util:allocate_buffer(length)
		do _g.jk.lang.Buffer:copyFrom(v, self.buffer, self.position, 0, length) end
		self.position = self.position + length
		do return v end
	end
end

function jk.mypacket.MyPacketParser:setBuffer(v)
	self.buffer = v
	do return self end
end

function jk.mypacket.MyPacketParser:getPosition()
	do return self.position end
end

function jk.mypacket.MyPacketParser:setPosition(v)
	self.position = v
	do return self end
end

jk.mypacket.MyPacketBuilder = {}
jk.mypacket.MyPacketBuilder.__index = jk.mypacket.MyPacketBuilder
_vm:set_metatable(jk.mypacket.MyPacketBuilder, {})

function jk.mypacket.MyPacketBuilder._create()
	local v = _vm:set_metatable({}, jk.mypacket.MyPacketBuilder)
	return v
end

function jk.mypacket.MyPacketBuilder:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mypacket.MyPacketBuilder'
	self['_isType.jk.mypacket.MyPacketBuilder'] = true
	self.buffer = nil
	self.position = 0
end

function jk.mypacket.MyPacketBuilder:_construct0()
	jk.mypacket.MyPacketBuilder._init(self)
	return self
end

function jk.mypacket.MyPacketBuilder:ensureAvailablesize(count)
	local sz = 0
	if self.buffer ~= nil then
		sz = #self.buffer
	end
	if sz < self.position + count then
		local nsz = sz
		while nsz < self.position + count do
			nsz = nsz + 65536
		end
		self.buffer = _g.jk.lang.Buffer:resize(self.buffer, nsz)
	end
end

function jk.mypacket.MyPacketBuilder:appendByte(byte)
	do self:ensureAvailablesize(1) end
	self.buffer[self.position + 1] = _vm:bitwise_and(byte, 255)
	do self.position = self.position + 1 end
end

function jk.mypacket.MyPacketBuilder:appendMultipleBytes(byte, count)
	if not (count > 0) then
		do return end
	end
	do self:ensureAvailablesize(count) end
	do
		local n = 0
		while n < count do
			self.buffer[(function() local v = self.position self.position = self.position + 1 return v end)() + 1] = _vm:bitwise_and(byte, 255)
			do n = n + 1 end
		end
	end
end

function jk.mypacket.MyPacketBuilder:appendBuffer(newdata)
	if not (newdata ~= nil) then
		do return end
	end
	do
		local nds = #newdata
		do self:ensureAvailablesize(nds) end
		do _g.jk.lang.Buffer:copyFrom(self.buffer, newdata, 0, self.position, nds) end
		self.position = self.position + nds
	end
end

function jk.mypacket.MyPacketBuilder:appendInt16(number)
	do self:ensureAvailablesize(2) end
	do
		local bb = _g.jk.lang.Buffer:forInt16LE(number)
		do _g.jk.lang.Buffer:copyFrom(self.buffer, bb, 0, self.position, 2) end
		self.position = self.position + 2
	end
end

function jk.mypacket.MyPacketBuilder:appendInt24(number)
	do self:ensureAvailablesize(3) end
	do
		local bb = _g.jk.lang.Buffer:forInt32LE(number)
		do _g.jk.lang.Buffer:copyFrom(self.buffer, bb, 0, self.position, 3) end
		self.position = self.position + 3
	end
end

function jk.mypacket.MyPacketBuilder:appendInt32(number)
	do self:ensureAvailablesize(4) end
	do
		local bb = _g.jk.lang.Buffer:forInt32LE(number)
		do _g.jk.lang.Buffer:copyFrom(self.buffer, bb, 0, self.position, 4) end
		self.position = self.position + 4
	end
end

function jk.mypacket.MyPacketBuilder:appendInt64(number)
	do self:ensureAvailablesize(8) end
	do
		local bb = _g.jk.lang.Buffer:forInt64LE(number)
		do _g.jk.lang.Buffer:copyFrom(self.buffer, bb, 0, self.position, 8) end
		self.position = self.position + 8
	end
end

function jk.mypacket.MyPacketBuilder:appendDouble(number)
	do self:ensureAvailablesize(8) end
	do
		local bb = _g.jk.lang.Buffer:forDouble64LE(number)
		do _g.jk.lang.Buffer:copyFrom(self.buffer, bb, 0, self.position, 8) end
		self.position = self.position + 8
	end
end

function jk.mypacket.MyPacketBuilder:appendNullTerminatedString(string)
	if not (string ~= nil) then
		do self:appendByte(0) end
		do return end
	end
	do
		local it = _g.jk.lang.String:iterate(string)
		while it ~= nil do
			local c = it:getNextChar()
			if _g.jk.lang.Character:isEOF(c) then
				do self:appendByte(0) end
				do break end
			end
			do self:appendByte(_util:convert_to_integer(c)) end
		end
	end
end

function jk.mypacket.MyPacketBuilder:appendFixedLengthString(string, length)
	if not (length > 0) then
		do return end
	end
	do
		local it = _g.jk.lang.String:iterate(string)
		do
			local n = 0
			while n < length do
				local c = it:getNextChar()
				if _g.jk.lang.Character:isEOF(c) then
					do self:appendByte(0) end
				else
					do self:appendByte(_util:convert_to_integer(c)) end
				end
				do n = n + 1 end
			end
		end
	end
end

function jk.mypacket.MyPacketBuilder:appendEofTerminatedString(string)
	if not (string ~= nil) then
		do return end
	end
	do
		local it = _g.jk.lang.String:iterate(string)
		while it ~= nil do
			local c = it:getNextChar()
			if _g.jk.lang.Character:isEOF(c) then
				do break end
			end
			do self:appendByte(_util:convert_to_integer(c)) end
		end
	end
end

function jk.mypacket.MyPacketBuilder:appendLengthEncodedInteger(value)
	if value < 251 then
		do self:appendByte(value) end
	elseif value < 65536 then
		do self:appendByte(252) end
		do self:appendInt16(value) end
	elseif value < 16777216 then
		do self:appendByte(253) end
		do self:appendInt24(value) end
	else
		do self:appendByte(254) end
		do self:appendInt64(value) end
	end
end

function jk.mypacket.MyPacketBuilder:appendLengthEncodedString(value)
	if not (value ~= nil) then
		do self:appendLengthEncodedInteger(0) end
		do return end
	end
	do
		local bb = _g.jk.lang.String:toUTF8Buffer(value)
		if not (bb ~= nil) then
			do self:appendLengthEncodedInteger(0) end
			do return end
		end
		do
			local sz = #bb
			do self:appendLengthEncodedInteger(sz) end
			if sz > 0 then
				do self:appendBuffer(bb) end
			end
		end
	end
end

function jk.mypacket.MyPacketBuilder:appendLengthEncodedBuffer(value)
	if not (value ~= nil) then
		do self:appendLengthEncodedInteger(0) end
		do return end
	end
	do
		local sz = #value
		do self:appendLengthEncodedInteger(sz) end
		if sz > 0 then
			do self:appendBuffer(value) end
		end
	end
end

function jk.mypacket.MyPacketBuilder:finalize()
	if not (self.buffer ~= nil) then
		do return nil end
	end
	do return _g.jk.lang.Buffer:getSubBuffer(self.buffer, 0, self.position, false) end
end
jk = jk or {}

jk.mysql = jk.mysql or {}

jk.mysql.MySQLDatabase = _g.jk.sql.SQLDatabase._create()
jk.mysql.MySQLDatabase.__index = jk.mysql.MySQLDatabase
_vm:set_metatable(jk.mysql.MySQLDatabase, {
	__index = _g.jk.sql.SQLDatabase
})

jk.mysql.MySQLDatabase.SSL_MODE_PREFERRED = "Preferred"
jk.mysql.MySQLDatabase.SSL_MODE_NONE = "None"
jk.mysql.MySQLDatabase.SSL_MODE_REQUIRED = "Required"
jk.mysql.MySQLDatabase.SSL_MODE_VERIFYCA = "VerifyCA"
jk.mysql.MySQLDatabase.SSL_MODE_VERIFYFULL = "VerifyFull"
jk.mysql.MySQLDatabase.PROTOCOL_SOCKET = "socket"
jk.mysql.MySQLDatabase.PROTOCOL_UNIX = "unix"
jk.mysql.MySQLDatabase.PROTOCOL_PIPE = "pipe"
jk.mysql.MySQLDatabase.PROCOL_MEMORY = "memory"

function jk.mysql.MySQLDatabase._create()
	local v = _vm:set_metatable({}, jk.mysql.MySQLDatabase)
	return v
end

function jk.mysql.MySQLDatabase:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mysql.MySQLDatabase'
	self['_isType.jk.mysql.MySQLDatabase'] = true
	self.databaseName = nil
end

function jk.mysql.MySQLDatabase:_construct0()
	jk.mysql.MySQLDatabase._init(self)
	do _g.jk.sql.SQLDatabase._construct0(self) end
	return self
end

function jk.mysql.MySQLDatabase:instance()
	do return _g.jk.mysql.MySQLDatabaseGeneric._construct0(_g.jk.mysql.MySQLDatabaseGeneric._create()) end
end

function jk.mysql.MySQLDatabase:forConnectionStringSync(ctx, connectionString)
	if not _g.jk.lang.String:isNotEmpty(connectionString) then
		do _g.jk.log.Log:error(ctx, "Empty connection string given to MySQLDatabase") end
		do return nil end
	end
	do
		local ss = _g.jk.lang.String:split(connectionString, 58, 0)
		local paramc = _g.jk.lang.Vector:getSize(ss)
		if not (ss ~= nil and paramc >= 4) then
			do _g.jk.log.Log:error(ctx, "MySQLDatabase connection string has less than 4 fields: `" .. _g.jk.lang.String:safeString(connectionString) .. "'") end
			do return nil end
		end
		do
			local address = ss[0 + 1]
			local username = ss[1 + 1]
			local password = ss[2 + 1]
			local database = ss[3 + 1]
			local sslMode = _g.jk.mysql.MySQLDatabase.SSL_MODE_NONE
			local enableUTF8 = false
			do
				local n = 4
				while n < paramc do
					local param = ss[n + 1]
					if _g.jk.lang.String:startsWith(param, "sslmode=", 0) then
						sslMode = _g.jk.lang.String:getEndOfString(param, 8)
					elseif param == "ssl" then
						sslMode = _g.jk.mysql.MySQLDatabase.SSL_MODE_REQUIRED
					elseif _g.jk.lang.String:startsWith(param, "enableutf8=", 0) then
						enableUTF8 = _g.jk.lang.Boolean:asBoolean(_g.jk.lang.String:getEndOfString(param, 11), false)
					elseif param == "utf8" then
						enableUTF8 = true
					end
					do n = n + 1 end
				end
			end
			do return _g.jk.mysql.MySQLDatabase:connectSync(ctx, address, username, password, database, sslMode, enableUTF8) end
		end
	end
end

function jk.mysql.MySQLDatabase:connectSync(ctx, serverAddress, username, password, database, sslMode, enableUTF8)
	if not (_g.jk.lang.String:isNotEmpty(serverAddress) and _g.jk.lang.String:isNotEmpty(username) and _g.jk.lang.String:isNotEmpty(password) and _g.jk.lang.String:isNotEmpty(database) and _g.jk.lang.String:isNotEmpty(sslMode)) then
		do return nil end
	end
	do
		local v = _g.jk.mysql.MySQLDatabase:instance()
		if not (v ~= nil) then
			do return nil end
		end
		do v:setLogger(ctx) end
		if not v:initializeSync(serverAddress, username, password, database, sslMode, _g.jk.mysql.MySQLDatabase.PROTOCOL_SOCKET, enableUTF8) then
			do return nil end
		end
		do return v end
	end
end

function jk.mysql.MySQLDatabase:forConfig(logContext, config)
	if not (config ~= nil) then
		do return nil end
	end
	do
		local serverAddress = config:getString("serverAddress", nil)
		if not (serverAddress ~= nil) then
			do return nil end
		end
		do
			local username = config:getString("username", nil)
			if not (username ~= nil) then
				do return nil end
			end
			do
				local password = config:getString("password", nil)
				if not (password ~= nil) then
					do return nil end
				end
				do
					local database = config:getString("database", nil)
					if not (database ~= nil) then
						do return nil end
					end
					do
						local enableUTF8 = config:getBoolean("enableUTF8", false)
						local sslMode = config:getString("sslMode", nil)
						if _g.jk.lang.String:isEmpty(sslMode) then
							sslMode = _g.jk.mysql.MySQLDatabase.SSL_MODE_NONE
						end
						do
							local protocol = config:getString("protocol", nil)
							if _g.jk.lang.String:isEmpty(protocol) then
								protocol = _g.jk.mysql.MySQLDatabase.PROTOCOL_SOCKET
							end
							do
								local v = _g.jk.mysql.MySQLDatabase:instance()
								if not (v ~= nil) then
									do return nil end
								end
								do v:setLogger(logContext) end
								if not v:initializeSync(serverAddress, username, password, database, sslMode, protocol, enableUTF8) then
									do return nil end
								end
								do return v end
							end
						end
					end
				end
			end
		end
	end
end

function jk.mysql.MySQLDatabase:getDatabaseTypeId()
	do return "mysql" end
end

function jk.mysql.MySQLDatabase:initializeSync(serverAddress, username, password, database, sslMode, protocol, enableUTF8)
	do self:logDebug("MySQLDatabase: Connecting to database host=`" .. _g.jk.lang.String:safeString(serverAddress) .. "', username=`" .. _g.jk.lang.String:safeString(username) .. "', database=`" .. _g.jk.lang.String:safeString(database) .. "', sslMode=`" .. _g.jk.lang.String:safeString(sslMode) .. "', protocol=`" .. _g.jk.lang.String:safeString(protocol) .. "'") end
	if not self:doInitialize(serverAddress, username, password, database, sslMode, protocol, enableUTF8) then
		do return false end
	end
	do self:setDatabaseName(database) end
	do return true end
end

function jk.mysql.MySQLDatabase:doInitialize(serverAddress, username, password, database, sslMode, protocol, enableUTF8)
	do return true end
end

function jk.mysql.MySQLDatabase:querySingleRowSync(stmt)
	local it = self:querySync(stmt)
	if not (it ~= nil) then
		do return nil end
	end
	do
		local v = it:next()
		do it:close() end
		do return v end
	end
end

function jk.mysql.MySQLDatabase:tableExistsSync(table)
	if not (_g.jk.lang.String:isNotEmpty(table) and _g.jk.lang.String:isNotEmpty(self.databaseName)) then
		do return false end
	end
	do
		local stmt = self:prepareSync("SELECT TABLE_NAME FROM information_schema.tables WHERE table_schema = ? AND table_name = ? LIMIT 1;")
		if not (stmt ~= nil) then
			do return false end
		end
		do stmt:addParamString(self.databaseName) end
		do stmt:addParamString(table) end
		do
			local sr = self:querySingleRowSync(stmt)
			if not (sr ~= nil) then
				do return false end
			end
			do return _g.jk.lang.String:equalsIgnoreCase(table, sr:getString("TABLE_NAME", nil)) end
		end
	end
end

function jk.mysql.MySQLDatabase:tableExists(table, callback)
	if not (_g.jk.lang.String:isNotEmpty(table) and _g.jk.lang.String:isNotEmpty(self.databaseName)) then
		do callback(false) end
		do return end
	end
	do
		local stmt = self:prepareSync("SELECT TABLE_NAME FROM information_schema.tables WHERE table_schema = ? AND table_name = ? LIMIT 1;")
		if not (stmt ~= nil) then
			do callback(false) end
			do return end
		end
		do stmt:addParamString(self.databaseName) end
		do stmt:addParamString(table) end
		do self:querySingleRow(stmt, function(sr)
			if not (sr ~= nil) then
				do callback(false) end
				do return end
			end
			do callback(_g.jk.lang.String:equalsIgnoreCase(table, sr:getString("TABLE_NAME", nil))) end
		end) end
	end
end

function jk.mysql.MySQLDatabase:queryAllTableNames(callback)
	local stmt = self:prepareSync("SELECT TABLE_NAME FROM information_schema.tables WHERE table_schema = ?;")
	if not (stmt ~= nil) then
		do callback(nil) end
		do return end
	end
	do stmt:addParamString(self.databaseName) end
	do self:query(stmt, function(it)
		if not (it ~= nil) then
			do callback(nil) end
			do return end
		end
		do
			local v = {}
			while true do
				local vv = it:next()
				if not (vv ~= nil) then
					do break end
				end
				do _g.jk.lang.Vector:append(v, vv:getString("TABLE_NAME", nil)) end
			end
			do callback(v) end
		end
	end) end
end

function jk.mysql.MySQLDatabase:queryAllTableNamesSync()
	if not _g.jk.lang.String:isNotEmpty(self.databaseName) then
		do return nil end
	end
	do
		local stmt = self:prepareSync("SELECT TABLE_NAME FROM information_schema.tables WHERE table_schema = ?;")
		if not (stmt ~= nil) then
			do return nil end
		end
		do stmt:addParamString(self.databaseName) end
		do
			local it = self:querySync(stmt)
			if not (it ~= nil) then
				do return nil end
			end
			do
				local v = {}
				while true do
					local vv = it:next()
					if not (vv ~= nil) then
						do break end
					end
					do _g.jk.lang.Vector:append(v, vv:getString("TABLE_NAME", nil)) end
				end
				do return v end
			end
		end
	end
end

function jk.mysql.MySQLDatabase:columnToCreateString(cc)
	local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	local columnName = cc:getName()
	do sb:appendString(columnName) end
	do sb:appendCharacter(32) end
	do
		local tt = cc:getType()
		do sb:appendString(self:prepareTypeAsString(tt, columnName, false)) end
		do return sb:toString() end
	end
end

function jk.mysql.MySQLDatabase:prepareTypeAsString(tt, columnName, forDataTypeChecking)
	if tt == _g.jk.sql.SQLTableColumnInfo.TYPE_INTEGER_KEY then
		if forDataTypeChecking then
			do return "INTEGER" end
		end
		do return "INTEGER AUTO_INCREMENT, PRIMARY KEY (" .. _g.jk.lang.String:safeString(columnName) .. ")" end
	elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_INTEGER then
		do return "INTEGER" end
	elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_LONG_KEY then
		if forDataTypeChecking then
			do return "BIGINT" end
		end
		do return "BIGINT AUTO_INCREMENT, PRIMARY KEY (" .. _g.jk.lang.String:safeString(columnName) .. ")" end
	elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_LONG then
		do return "BIGINT" end
	elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_STRING then
		if forDataTypeChecking then
			do return "VARCHAR(255)" end
		end
		do return "VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci" end
	elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_STRING_KEY then
		if forDataTypeChecking then
			do return "VARCHAR(255)" end
		end
		do return "VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci, PRIMARY KEY (" .. _g.jk.lang.String:safeString(columnName) .. ")" end
	elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_TEXT then
		if forDataTypeChecking then
			do return "LONGTEXT" end
		end
		do return "LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci" end
	elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_BLOB then
		do return "LONGBLOB" end
	elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_DOUBLE then
		do return "REAL" end
	end
	do _g.jk.log.Log:error(self:getLogger(), "Unknown column type: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(tt))) end
	do return "UNKNOWN" end
end

function jk.mysql.MySQLDatabase:prepareCreateTableStatementSync(table, columns)
	if not (_g.jk.lang.String:isNotEmpty(table) and columns ~= nil) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		do sb:appendString("CREATE TABLE ") end
		do sb:appendString(table) end
		do sb:appendString(" (") end
		do
			local first = true
			if columns ~= nil then
				local n = 0
				local m = _g.jk.lang.Vector:getSize(columns)
				do
					n = 0
					while n < m do
						local column = columns[n + 1]
						if column ~= nil then
							if not first then
								do sb:appendCharacter(44) end
							end
							do sb:appendCharacter(32) end
							do sb:appendString(self:columnToCreateString(column)) end
							first = false
						end
						do n = n + 1 end
					end
				end
			end
			do sb:appendString(" ) CHARACTER SET utf8 COLLATE utf8_general_ci;") end
			do return self:prepareSync(sb:toString()) end
		end
	end
end

function jk.mysql.MySQLDatabase:prepareDeleteTableStatementSync(table)
	if not _g.jk.lang.String:isNotEmpty(table) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		do sb:appendString("DROP TABLE ") end
		do sb:appendString(table) end
		do sb:appendString(";") end
		do return self:prepareSync(sb:toString()) end
	end
end

function jk.mysql.MySQLDatabase:prepareCreateColumnStatementSync(table, column)
	if not (_g.jk.lang.String:isNotEmpty(table) and column ~= nil) then
		do return nil end
	end
	do
		local sql = "ALTER TABLE " .. _g.jk.lang.String:safeString(table) .. " ADD COLUMN " .. _g.jk.lang.String:safeString(column:getName()) .. " " .. _g.jk.lang.String:safeString(self:prepareTypeAsString(column:getType(), column:getName(), false)) .. ";"
		do return self:prepareSync(sql) end
	end
end

function jk.mysql.MySQLDatabase:prepareUpdateColumnTypeStatementSync(table, column)
	if not (_g.jk.lang.String:isNotEmpty(table) and column ~= nil) then
		do return nil end
	end
	do
		local sql = "ALTER TABLE " .. _g.jk.lang.String:safeString(table) .. " CHANGE " .. _g.jk.lang.String:safeString(column:getName()) .. " " .. _g.jk.lang.String:safeString(column:getName()) .. " " .. _g.jk.lang.String:safeString(self:prepareTypeAsString(column:getType(), column:getName(), true)) .. ";"
		do return self:prepareSync(sql) end
	end
end

function jk.mysql.MySQLDatabase:getLastInsertIdSync(table)
	local v = self:querySingleRowSync(self:prepareSync("SELECT LAST_INSERT_ID() AS id;"))
	if not (v ~= nil) then
		do return 0 end
	end
	do return v:getLongInteger("id", 0) end
end

function jk.mysql.MySQLDatabase:getPrimaryKeyColumnNameSync(table)
	local v = self:querySingleRowSync(self:prepareSync("SELECT COLUMN_NAME FROM information_schema.KEY_COLUMN_USAGE WHERE CONSTRAINT_NAME LIKE 'PRIMARY%' AND TABLE_NAME='" .. _g.jk.lang.String:safeString(table) .. "';"))
	if not (v ~= nil) then
		do return nil end
	end
	do return v:getString("COLUMN_NAME", nil) end
end

function jk.mysql.MySQLDatabase:getIdentityColumnNameSync(table)
	local v = self:querySingleRowSync(self:prepareSync("SELECT COLUMN_NAME FROM information_schema.columns WHERE TABLE_NAME='" .. _g.jk.lang.String:safeString(table) .. "' AND IS_NULLABLE='NO' AND EXTRA LIKE '%auto_increment%';"))
	if not (v ~= nil) then
		do return nil end
	end
	do return v:getString("COLUMN_NAME", nil) end
end

function jk.mysql.MySQLDatabase:columnExistsSync(table, column)
	if not (_g.jk.lang.String:isNotEmpty(table) and _g.jk.lang.String:isNotEmpty(self.databaseName) and _g.jk.lang.String:isNotEmpty(column)) then
		do return false end
	end
	do
		local stmt = self:prepareSync("SELECT COLUMN_NAME FROM information_schema.columns WHERE table_schema = ? AND table_name = ? AND column_name = ? LIMIT 1;")
		if not (stmt ~= nil) then
			do return false end
		end
		do stmt:addParamString(self.databaseName) end
		do stmt:addParamString(table) end
		do stmt:addParamString(column) end
		do
			local sr = self:querySingleRowSync(stmt)
			if not (sr ~= nil) then
				do return false end
			end
			do return _g.jk.lang.String:equalsIgnoreCase(column, sr:getString("COLUMN_NAME", nil)) end
		end
	end
end

function jk.mysql.MySQLDatabase:isColumnTypeSameSync(table, column)
	if not (_g.jk.lang.String:isNotEmpty(table) and _g.jk.lang.String:isNotEmpty(self.databaseName) and column ~= nil) then
		do return false end
	end
	do
		local stmt = self:prepareSync("SELECT COLUMN_TYPE FROM information_schema.columns WHERE table_schema = ? AND table_name = ? AND column_name = ? LIMIT 1;")
		if not (stmt ~= nil) then
			do return false end
		end
		do stmt:addParamString(self.databaseName) end
		do stmt:addParamString(table) end
		do stmt:addParamString(column:getName()) end
		do
			local sr = self:querySingleRowSync(stmt)
			if not (sr ~= nil) then
				do return false end
			end
			do
				local type = self:prepareTypeAsString(column:getType(), column:getName(), true)
				local ctype = sr:getString("COLUMN_TYPE", nil)
				if _g.jk.lang.String:equalsIgnoreCase(type, ctype) then
					do return true end
				end
				if type == "INTEGER" and _g.jk.lang.String:equalsIgnoreCase("int", ctype) then
					do return true end
				end
				do return false end
			end
		end
	end
end

function jk.mysql.MySQLDatabase:getDatabaseName()
	do return self.databaseName end
end

function jk.mysql.MySQLDatabase:setDatabaseName(v)
	self.databaseName = v
	do return self end
end

jk.mysql.MySQLDatabaseGeneric = _g.jk.mysql.MySQLDatabase._create()
jk.mysql.MySQLDatabaseGeneric.__index = jk.mysql.MySQLDatabaseGeneric
_vm:set_metatable(jk.mysql.MySQLDatabaseGeneric, {
	__index = _g.jk.mysql.MySQLDatabase
})

function jk.mysql.MySQLDatabaseGeneric._create()
	local v = _vm:set_metatable({}, jk.mysql.MySQLDatabaseGeneric)
	return v
end

function jk.mysql.MySQLDatabaseGeneric:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mysql.MySQLDatabaseGeneric'
	self['_isType.jk.mysql.MySQLDatabaseGeneric'] = true
	self.authenticationPlugin = nil
	self.socket = nil
	self.receiveBuffer = _util:allocate_buffer(1024 * 1024)
	self.sequence = 0
	self.connectionState = _g.jk.mysql.MySQLDatabaseGeneric.ConnectionState.DISCONNECTED
	self.reconnectTime = 0
	self.serverAddress = nil
	self.username = nil
	self.password = nil
	self.database = nil
	self.sslMode = nil
	self.protocol = nil
	self.enableUTF8 = true
	self.serverCapabilityFlags = 0
	self.sslEnabled = false
	self.overflowBuffer = nil
	self._destructWrapper = _vm:create_destructor(function() self:_destruct() end)
end

function jk.mysql.MySQLDatabaseGeneric:_construct0()
	jk.mysql.MySQLDatabaseGeneric._init(self)
	do _g.jk.mysql.MySQLDatabase._construct0(self) end
	return self
end

jk.mysql.MySQLDatabaseGeneric.MyStatement = {}
jk.mysql.MySQLDatabaseGeneric.MyStatement.__index = jk.mysql.MySQLDatabaseGeneric.MyStatement
_vm:set_metatable(jk.mysql.MySQLDatabaseGeneric.MyStatement, {})

function jk.mysql.MySQLDatabaseGeneric.MyStatement._create()
	local v = _vm:set_metatable({}, jk.mysql.MySQLDatabaseGeneric.MyStatement)
	return v
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mysql.MySQLDatabaseGeneric.MyStatement'
	self['_isType.jk.mysql.MySQLDatabaseGeneric.MyStatement'] = true
	self['_isType.jk.sql.SQLStatement'] = true
	self.id = -1
	self.db = nil
	self.params = nil
	self.columns = nil
	self.isStoredProcedure = false
	self._destructWrapper = _vm:create_destructor(function() self:_destruct() end)
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:_construct0()
	jk.mysql.MySQLDatabaseGeneric.MyStatement._init(self)
	return self
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:forStatementId(id, columns, db)
	local v = _g.jk.mysql.MySQLDatabaseGeneric.MyStatement._construct0(_g.jk.mysql.MySQLDatabaseGeneric.MyStatement._create())
	do v:setId(id) end
	do v:setColumns(columns) end
	do v:setDb(db) end
	do return v end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:_destruct()
	do self:close() end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:addToParams(param)
	if not (param ~= nil) then
		do return end
	end
	if not (self.params ~= nil) then
		self.params = {}
	end
	do _g.jk.lang.Vector:append(self.params, param) end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:setIsStoredProcedure(v)
	self.isStoredProcedure = v
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:getIsStoredProcedure()
	do return self.isStoredProcedure end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:addParamString(val)
	do self:addToParams(val) end
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:addParamInteger(val)
	do self:addToParams(_g.jk.lang.Integer:asObject(val)) end
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:addParamLongInteger(val)
	do self:addToParams(_g.jk.lang.LongInteger:asObject(val)) end
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:addParamDouble(val)
	do self:addToParams(_g.jk.lang.Double:asObject(val)) end
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:addParamBlob(val)
	do self:addToParams(val) end
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:setParamString(name, val)
	do self:addToParams(val) end
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:setParamInteger(name, val)
	do self:addToParams(_g.jk.lang.Integer:asObject(val)) end
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:setParamLongInteger(name, val)
	do self:addToParams(_g.jk.lang.LongInteger:asObject(val)) end
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:setParamDouble(name, val)
	do self:addToParams(_g.jk.lang.Double:asObject(val)) end
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:setParamBlob(name, val)
	do self:addToParams(val) end
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:resetStatement()
	if self.db ~= nil then
		do self.db:resetStatement(self) end
	end
	self.params = nil
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:getError()
	do return nil end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:close()
	if self.db ~= nil then
		do self.db:closeStatementSync(self) end
	end
	self.db = nil
	self.id = -1
	self.params = nil
	self.isStoredProcedure = false
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:getId()
	do return self.id end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:setId(v)
	self.id = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:getDb()
	do return self.db end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:setDb(v)
	self.db = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:getParams()
	do return self.params end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:setParams(v)
	self.params = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:getColumns()
	do return self.columns end
end

function jk.mysql.MySQLDatabaseGeneric.MyStatement:setColumns(v)
	self.columns = v
	do return self end
end

jk.mysql.MySQLDatabaseGeneric.ResultSet = _g.jk.sql.SQLResultSetIterator._create()
jk.mysql.MySQLDatabaseGeneric.ResultSet.__index = jk.mysql.MySQLDatabaseGeneric.ResultSet
_vm:set_metatable(jk.mysql.MySQLDatabaseGeneric.ResultSet, {
	__index = _g.jk.sql.SQLResultSetIterator
})

function jk.mysql.MySQLDatabaseGeneric.ResultSet._create()
	local v = _vm:set_metatable({}, jk.mysql.MySQLDatabaseGeneric.ResultSet)
	return v
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mysql.MySQLDatabaseGeneric.ResultSet'
	self['_isType.jk.mysql.MySQLDatabaseGeneric.ResultSet'] = true
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:_construct0()
	jk.mysql.MySQLDatabaseGeneric.ResultSet._init(self)
	do _g.jk.sql.SQLResultSetIterator._construct0(self) end
	return self
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:next()
	_io:write_to_stdout("--- stub --- jk.mysql.MySQLDatabaseGeneric.ResultSet :: next" .. "\n")
	do return nil end
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:hasNext()
	_io:write_to_stdout("--- stub --- jk.mysql.MySQLDatabaseGeneric.ResultSet :: hasNext" .. "\n")
	do return false end
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:nextValues(values)
	_io:write_to_stdout("--- stub --- jk.mysql.MySQLDatabaseGeneric.ResultSet :: nextValues" .. "\n")
	do return false end
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:step()
	_io:write_to_stdout("--- stub --- jk.mysql.MySQLDatabaseGeneric.ResultSet :: step" .. "\n")
	do return false end
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:getColumnCount()
	_io:write_to_stdout("--- stub --- jk.mysql.MySQLDatabaseGeneric.ResultSet :: getColumnCount" .. "\n")
	do return 0 end
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:getColumnName(n)
	_io:write_to_stdout("--- stub --- jk.mysql.MySQLDatabaseGeneric.ResultSet :: getColumnName" .. "\n")
	do return nil end
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:getColumnNames()
	_io:write_to_stdout("--- stub --- jk.mysql.MySQLDatabaseGeneric.ResultSet :: getColumnNames" .. "\n")
	do return nil end
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:getColumnObject(n)
	_io:write_to_stdout("--- stub --- jk.mysql.MySQLDatabaseGeneric.ResultSet :: getColumnObject" .. "\n")
	do return nil end
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:getColumnInt(n)
	_io:write_to_stdout("--- stub --- jk.mysql.MySQLDatabaseGeneric.ResultSet :: getColumnInt" .. "\n")
	do return 0 end
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:getColumnLong(n)
	_io:write_to_stdout("--- stub --- jk.mysql.MySQLDatabaseGeneric.ResultSet :: getColumnLong" .. "\n")
	do return 0 end
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:getColumnDouble(n)
	_io:write_to_stdout("--- stub --- jk.mysql.MySQLDatabaseGeneric.ResultSet :: getColumnDouble" .. "\n")
	do return 0.0 end
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:getColumnBuffer(n)
	_io:write_to_stdout("--- stub --- jk.mysql.MySQLDatabaseGeneric.ResultSet :: getColumnBuffer" .. "\n")
	do return nil end
end

function jk.mysql.MySQLDatabaseGeneric.ResultSet:close()
	_io:write_to_stdout("--- stub --- jk.mysql.MySQLDatabaseGeneric.ResultSet :: close" .. "\n")
end

jk.mysql.MySQLDatabaseGeneric.CapabilityFlags = {}
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.__index = jk.mysql.MySQLDatabaseGeneric.CapabilityFlags
_vm:set_metatable(jk.mysql.MySQLDatabaseGeneric.CapabilityFlags, {})

jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_LONG_PASSWORD = 1
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_FOUND_ROWS = 2
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_LONG_FLAG = 4
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_CONNECT_WITH_DB = 8
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_NO_SCHEMA = 16
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_COMPRESS = 32
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_ODBC = 64
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_LOCAL_FILES = 128
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_IGNORE_SPACE = 256
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_PROTOCOL_41 = 512
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_INTERACTIVE = 1024
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_SSL = 2048
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_IGNORE_SIGPIPE = 4096
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_TRANSACTIONS = 8192
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_RESERVED = 16384
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_SECURE_CONNECTION = 32768
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_MULTI_STATEMENTS = 65536
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_MULTI_RESULTS = 131072
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_PS_MULTI_RESULTS = 262144
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_PLUGIN_AUTH = 524288
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_CONNECT_ATTRS = 1048576
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_PLUGIN_AUTH_LENENC_CLIENT_DATA = 2097152
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_CAN_HANDLE_EXPIRED_PASSWORDS = 4194304
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_SESSION_TRACK = 8388608
jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_DEPRECATE_EOF = 16777216

function jk.mysql.MySQLDatabaseGeneric.CapabilityFlags._create()
	local v = _vm:set_metatable({}, jk.mysql.MySQLDatabaseGeneric.CapabilityFlags)
	return v
end

function jk.mysql.MySQLDatabaseGeneric.CapabilityFlags:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mysql.MySQLDatabaseGeneric.CapabilityFlags'
	self['_isType.jk.mysql.MySQLDatabaseGeneric.CapabilityFlags'] = true
end

function jk.mysql.MySQLDatabaseGeneric.CapabilityFlags:_construct0()
	jk.mysql.MySQLDatabaseGeneric.CapabilityFlags._init(self)
	return self
end

jk.mysql.MySQLDatabaseGeneric.ConnectionState = {}
jk.mysql.MySQLDatabaseGeneric.ConnectionState.__index = jk.mysql.MySQLDatabaseGeneric.ConnectionState
_vm:set_metatable(jk.mysql.MySQLDatabaseGeneric.ConnectionState, {})

jk.mysql.MySQLDatabaseGeneric.ConnectionState.DISCONNECTED = 0
jk.mysql.MySQLDatabaseGeneric.ConnectionState.CONNECTION = 1
jk.mysql.MySQLDatabaseGeneric.ConnectionState.COMMAND = 2
jk.mysql.MySQLDatabaseGeneric.ConnectionState.DISCONNECTING = 3

function jk.mysql.MySQLDatabaseGeneric.ConnectionState._create()
	local v = _vm:set_metatable({}, jk.mysql.MySQLDatabaseGeneric.ConnectionState)
	return v
end

function jk.mysql.MySQLDatabaseGeneric.ConnectionState:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mysql.MySQLDatabaseGeneric.ConnectionState'
	self['_isType.jk.mysql.MySQLDatabaseGeneric.ConnectionState'] = true
end

function jk.mysql.MySQLDatabaseGeneric.ConnectionState:_construct0()
	jk.mysql.MySQLDatabaseGeneric.ConnectionState._init(self)
	return self
end

jk.mysql.MySQLDatabaseGeneric.FieldType = {}
jk.mysql.MySQLDatabaseGeneric.FieldType.__index = jk.mysql.MySQLDatabaseGeneric.FieldType
_vm:set_metatable(jk.mysql.MySQLDatabaseGeneric.FieldType, {})

jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_DECIMAL = 0
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_TINY = 1
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_TINYINT = 1
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_BOOL = 1
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_SHORT = 2
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_SMALLINT = 2
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_LONG = 3
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_INTEGER = 3
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_FLOAT = 4
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_DOUBLE = 5
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_NULL = 6
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_TIMESTAMP = 7
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_LONGLONG = 8
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_BIGINT = 8
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_SERIAL = 8
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_INT24 = 9
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_MEDIUMINT = 9
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_DATE = 10
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_TIME = 11
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_DATETIME = 12
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_YEAR = 13
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_NEWDATE = 14
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_VARCHAR = 15
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_BIT = 16
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_TIMESTAMP2 = 17
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_DATETIME2 = 18
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_TIME2 = 19
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_JSON = 245
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_NEWDECIMAL = 246
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_ENUM = 247
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_SET = 248
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_TINY_BLOB = 249
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_MEDIUM_BLOB = 250
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_LONG_BLOB = 251
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_BLOB = 252
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_VAR_STRING = 253
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_STRING = 254
jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_GEOMETRY = 255

function jk.mysql.MySQLDatabaseGeneric.FieldType._create()
	local v = _vm:set_metatable({}, jk.mysql.MySQLDatabaseGeneric.FieldType)
	return v
end

function jk.mysql.MySQLDatabaseGeneric.FieldType:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mysql.MySQLDatabaseGeneric.FieldType'
	self['_isType.jk.mysql.MySQLDatabaseGeneric.FieldType'] = true
end

function jk.mysql.MySQLDatabaseGeneric.FieldType:_construct0()
	jk.mysql.MySQLDatabaseGeneric.FieldType._init(self)
	return self
end

jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake = {}
jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake.__index = jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake
_vm:set_metatable(jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake, {})

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake._create()
	local v = _vm:set_metatable({}, jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake)
	return v
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake'
	self['_isType.jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake'] = true
	self.protocolVersion = 0
	self.serverVersion = nil
	self.connectionId = 0
	self.capabilityFlags = 0
	self.characterSet = 0
	self.statusFlags = 0
	self.capabilityFlagsLower = 0
	self.capabilityFlagsUpper = 0
	self.authPluginName = nil
	self.authPluginData = nil
	self.authPluginDataPart1 = nil
	self.authPluginDataPart2 = nil
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:_construct0()
	jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake._init(self)
	return self
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:getProtocolVersion()
	do return self.protocolVersion end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:setProtocolVersion(v)
	self.protocolVersion = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:getServerVersion()
	do return self.serverVersion end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:setServerVersion(v)
	self.serverVersion = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:getConnectionId()
	do return self.connectionId end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:setConnectionId(v)
	self.connectionId = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:getCapabilityFlags()
	do return self.capabilityFlags end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:setCapabilityFlags(v)
	self.capabilityFlags = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:getCharacterSet()
	do return self.characterSet end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:setCharacterSet(v)
	self.characterSet = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:getStatusFlags()
	do return self.statusFlags end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:setStatusFlags(v)
	self.statusFlags = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:getCapabilityFlagsLower()
	do return self.capabilityFlagsLower end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:setCapabilityFlagsLower(v)
	self.capabilityFlagsLower = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:getCapabilityFlagsUpper()
	do return self.capabilityFlagsUpper end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:setCapabilityFlagsUpper(v)
	self.capabilityFlagsUpper = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:getAuthPluginName()
	do return self.authPluginName end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:setAuthPluginName(v)
	self.authPluginName = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:getAuthPluginData()
	do return self.authPluginData end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:setAuthPluginData(v)
	self.authPluginData = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:getAuthPluginDataPart1()
	do return self.authPluginDataPart1 end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:setAuthPluginDataPart1(v)
	self.authPluginDataPart1 = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:getAuthPluginDataPart2()
	do return self.authPluginDataPart2 end
end

function jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake:setAuthPluginDataPart2(v)
	self.authPluginDataPart2 = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric:_destruct()
	do self:closeSocket() end
end

function jk.mysql.MySQLDatabaseGeneric:isSecureConnection()
	do return self.sslEnabled end
end

function jk.mysql.MySQLDatabaseGeneric:getMyCapabilityFlags()
	local v = 0
	if self:serverSupportsSSL() then
		v = _vm:bitwise_or(v, _g.jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_SSL)
	end
	v = _vm:bitwise_or(v, _g.jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_PROTOCOL_41)
	v = _vm:bitwise_or(v, _g.jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_SECURE_CONNECTION)
	v = _vm:bitwise_or(v, _g.jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_PLUGIN_AUTH)
	do return v end
end

function jk.mysql.MySQLDatabaseGeneric:createPacket()
	local v = _g.jk.mypacket.MyPacketBuilder._construct0(_g.jk.mypacket.MyPacketBuilder._create())
	do v:appendMultipleBytes(0, 4) end
	do return v end
end

function jk.mysql.MySQLDatabaseGeneric:finalizePacket(packet, seqnum)
	if not (packet ~= nil) then
		do return nil end
	end
	do
		local v = packet:finalize()
		do _g.jk.lang.Buffer:copyFrom(v, _g.jk.lang.Buffer:forInt32LE(#v - 4), 0, 0, 4) end
		v[3 + 1] = _vm:bitwise_and(seqnum, 255)
		do return v end
	end
end

function jk.mysql.MySQLDatabaseGeneric:doInitialize(serverAddress, username, password, database, sslMode, protocol, enableUTF8)
	if not (protocol == _g.jk.mysql.MySQLDatabase.PROTOCOL_SOCKET) then
		do self:logError("Unsupported protocol in MySQLDatabaseGeneric: `" .. _g.jk.lang.String:safeString(protocol) .. "'") end
		do return false end
	end
	self.serverAddress = serverAddress
	self.username = username
	self.password = password
	self.database = database
	self.sslMode = sslMode
	self.protocol = protocol
	self.enableUTF8 = enableUTF8
	self.reconnectTime = 0
	do return self:reconnectSync() end
end

function jk.mysql.MySQLDatabaseGeneric:serverSupportsSSL()
	if _vm:bitwise_and(self.serverCapabilityFlags, _g.jk.mysql.MySQLDatabaseGeneric.CapabilityFlags.CLIENT_SSL) ~= 0 then
		do return true end
	end
	do return false end
end

function jk.mysql.MySQLDatabaseGeneric:openSocketForAddress(address)
	if not (address ~= nil) then
		do return nil end
	end
	do
		local host = address
		local port = 3306
		if _g.jk.lang.String:getIndexOfCharacter(host, 58, 0) >= 0 then
			local comps = _g.jk.lang.String:split(host, 58, 2)
			host = comps[0 + 1]
			port = _g.jk.lang.String:toInteger(comps[1 + 1])
		end
		do self:logDebug("Connecting to MySQL server `" .. _g.jk.lang.String:safeString(host) .. ":" .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(port)) .. "' ..") end
		do return _g.jk.socket.TCPSocket:createAndConnect(host, port) end
	end
end

function jk.mysql.MySQLDatabaseGeneric:getHostName(address)
	local colon = _g.jk.lang.String:getIndexOfCharacter(address, 58, 0)
	if colon >= 0 then
		do return _g.jk.lang.String:getSubString(address, 0, colon) end
	end
	do return address end
end

function jk.mysql.MySQLDatabaseGeneric:parseProtocolHandshake(buffer)
	if not (buffer ~= nil) then
		do return nil end
	end
	do
		local walker = _g.jk.mypacket.MyPacketParser:forBuffer(buffer)
		local v = _g.jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake._construct0(_g.jk.mysql.MySQLDatabaseGeneric.ProtocolHandshake._create())
		do v:setProtocolVersion(walker:getInt8()) end
		do v:setServerVersion(walker:getNullTerminatedString()) end
		do v:setConnectionId(walker:getInt32()) end
		if v:getProtocolVersion() >= 10 then
			do v:setAuthPluginDataPart1(walker:getStaticLengthString(8)) end
			do walker:skipBytes(1) end
			do v:setCapabilityFlagsLower(walker:getInt16()) end
			do v:setCharacterSet(walker:getInt8()) end
			do v:setStatusFlags(walker:getInt16()) end
			do v:setCapabilityFlagsUpper(walker:getInt16()) end
			do
				local apdatalen = walker:getInt8()
				do walker:skipBytes(10) end
				apdatalen = apdatalen - 8
				if apdatalen > 13 then
					apdatalen = 13
				end
				do v:setAuthPluginDataPart2(walker:getStaticLengthString(apdatalen)) end
				do v:setAuthPluginName(walker:getNullTerminatedString()) end
				do v:setAuthPluginData(_g.jk.lang.String:appendString(v:getAuthPluginDataPart1(), v:getAuthPluginDataPart2())) end
			end
		end
		do return v end
	end
end

jk.mysql.MySQLDatabaseGeneric.OkPacket = {}
jk.mysql.MySQLDatabaseGeneric.OkPacket.__index = jk.mysql.MySQLDatabaseGeneric.OkPacket
_vm:set_metatable(jk.mysql.MySQLDatabaseGeneric.OkPacket, {})

function jk.mysql.MySQLDatabaseGeneric.OkPacket._create()
	local v = _vm:set_metatable({}, jk.mysql.MySQLDatabaseGeneric.OkPacket)
	return v
end

function jk.mysql.MySQLDatabaseGeneric.OkPacket:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mysql.MySQLDatabaseGeneric.OkPacket'
	self['_isType.jk.mysql.MySQLDatabaseGeneric.OkPacket'] = true
	self.affectedRows = 0
	self.lastInsertId = 0
	self.statusFlags = 0
	self.warningCount = 0
end

function jk.mysql.MySQLDatabaseGeneric.OkPacket:_construct0()
	jk.mysql.MySQLDatabaseGeneric.OkPacket._init(self)
	return self
end

function jk.mysql.MySQLDatabaseGeneric.OkPacket:getAffectedRows()
	do return self.affectedRows end
end

function jk.mysql.MySQLDatabaseGeneric.OkPacket:setAffectedRows(v)
	self.affectedRows = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.OkPacket:getLastInsertId()
	do return self.lastInsertId end
end

function jk.mysql.MySQLDatabaseGeneric.OkPacket:setLastInsertId(v)
	self.lastInsertId = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.OkPacket:getStatusFlags()
	do return self.statusFlags end
end

function jk.mysql.MySQLDatabaseGeneric.OkPacket:setStatusFlags(v)
	self.statusFlags = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.OkPacket:getWarningCount()
	do return self.warningCount end
end

function jk.mysql.MySQLDatabaseGeneric.OkPacket:setWarningCount(v)
	self.warningCount = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric:isOkPacket(packet)
	if not (packet ~= nil) then
		do return false end
	end
	if packet[0 + 1] == 0 then
		do return true end
	end
	do return false end
end

function jk.mysql.MySQLDatabaseGeneric:parseOkPacket(packet)
	if not (packet ~= nil) then
		do return nil end
	end
	do
		local v = _g.jk.mysql.MySQLDatabaseGeneric.OkPacket._construct0(_g.jk.mysql.MySQLDatabaseGeneric.OkPacket._create())
		local walker = _g.jk.mypacket.MyPacketParser:forBuffer(packet)
		local header = walker:getInt8()
		do v:setAffectedRows(walker:getLengthEncodedInteger()) end
		do v:setLastInsertId(walker:getLengthEncodedInteger()) end
		do v:setStatusFlags(walker:getInt16()) end
		do v:setWarningCount(walker:getInt16()) end
		do return v end
	end
end

function jk.mysql.MySQLDatabaseGeneric:logOkPacket(v)
	if not (v ~= nil) then
		do return end
	end
	do self:logDebug("MySQL server responded with OK status: affectedRows=" .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(v:getAffectedRows())) .. ", lastInsertId=" .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(v:getLastInsertId())) .. ", statusFlags=" .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(v:getStatusFlags())) .. ", warningCount=" .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(v:getWarningCount()))) end
end

function jk.mysql.MySQLDatabaseGeneric:handleAsErrorPacket(packet)
	if not (packet ~= nil) then
		do return false end
	end
	if packet[0 + 1] == 255 then
		do self:logErrorPacket(packet) end
		do return true end
	end
	do return false end
end

function jk.mysql.MySQLDatabaseGeneric:logErrorPacket(packet)
	local walker = _g.jk.mypacket.MyPacketParser:forBuffer(packet)
	local header = walker:getInt8()
	local errorCode = walker:getInt16()
	local sqlStateMarker = walker:getStaticLengthString(1)
	local sqlState = walker:getStaticLengthString(5)
	local errorMessage = walker:getEofTerminatedString()
	do self:logError("MySQL server sent error: errorCode=" .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(errorCode)) .. ", errorMessage=`" .. _g.jk.lang.String:safeString(errorMessage) .. "'") end
end

function jk.mysql.MySQLDatabaseGeneric:reconnectSync()
	do self:closeSocket() end
	do
		local now = _g.jk.time.SystemClock:asSeconds()
		if now - self.reconnectTime < 5 then
			do self:logDebug("Reconnecting too fast. Waiting for 5 seconds..") end
			do _g.jk.thread.CurrentThread:sleepSeconds(5) end
		end
		self.reconnectTime = _g.jk.time.SystemClock:asSeconds()
		do
			local osocket = self:openSocketForAddress(self.serverAddress)
			if not (osocket ~= nil) then
				do self:logError("Failed to connect to MySQL server: `" .. _g.jk.lang.String:safeString(self.serverAddress) .. "'") end
				do return false end
			end
			self.connectionState = _g.jk.mysql.MySQLDatabaseGeneric.ConnectionState.CONNECTION
			self.socket = osocket
			do
				local header = self:receivePacketDataSync()
				if not (header ~= nil) then
					do return false end
				end
				do
					local hs = self:parseProtocolHandshake(header)
					if not (hs ~= nil) then
						do self:logWarning("Failed to parse protocol handshake") end
					else
						do self:logDebug("protocolVersion: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(hs:getProtocolVersion()))) end
						do self:logDebug("serverVersion: " .. _g.jk.lang.String:safeString(hs:getServerVersion())) end
						do self:logDebug("connectionId: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(hs:getConnectionId()))) end
						do self:logDebug("authPluginData: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(_g.jk.lang.String:getLength(hs:getAuthPluginData()))) .. " bytes") end
						do self:logDebug("authPluginName: " .. _g.jk.lang.String:safeString(hs:getAuthPluginName())) end
						do self:logDebug("capabilityFlags: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(hs:getCapabilityFlags()))) end
						do self:logDebug("characterSet: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(hs:getCharacterSet()))) end
						do self:logDebug("statusFlags: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(hs:getStatusFlags()))) end
						do self:logDebug("capabilityFlagsLower: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(hs:getCapabilityFlagsLower()))) end
						do self:logDebug("capabilityFlagsUpper: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(hs:getCapabilityFlagsUpper()))) end
						self.serverCapabilityFlags = _vm:bitwise_or(_vm:bitwise_left_shift(hs:getCapabilityFlagsUpper(), 16), hs:getCapabilityFlagsLower())
					end
					if not (self.sslMode == _g.jk.mysql.MySQLDatabase.SSL_MODE_NONE) then
						if not self:serverSupportsSSL() then
							do self:logWarning("Server does not support SSL. Trying to initialize it anyway...") end
						else
							do self:logDebug("Server supports SSL") end
						end
						do self:sendSync(self:createSSLRequest()) end
						do
							local sslsocket = _g.jk.socket.ssl.SSLSocket:forClient(osocket, self:getHostName(self.serverAddress), self:getLogger(), true, nil)
							if not (sslsocket ~= nil) then
								do self:logError("SSL handshake with MySQL server failed") end
								do return false end
							end
							do self:logDebug("SSL connection successfully established.") end
							self.socket = sslsocket
							self.sslEnabled = true
						end
					else
						do self:logDebug("SSL disabled as requested") end
					end
					do
						local ap = self.authenticationPlugin
						if _g.jk.lang.String:isEmpty(ap) then
							ap = hs:getAuthPluginName()
						end
						if not self:handleAuthenticationSync(ap, hs:getAuthPluginData(), false) then
							do self:logError("Authentication failed.") end
							do self:closeSocket() end
							do return false end
						end
						if not self:executePacketSync(self:createComInitDb(self.database)) then
							do self:closeSocket() end
							do return false end
						end
						self.connectionState = _g.jk.mysql.MySQLDatabaseGeneric.ConnectionState.COMMAND
						do self:logDebug("Successfully connected and authenticated to MySQL server.") end
						do return true end
					end
				end
			end
		end
	end
end

function jk.mysql.MySQLDatabaseGeneric:getNextSequence()
	if self.connectionState == _g.jk.mysql.MySQLDatabaseGeneric.ConnectionState.COMMAND then
		do return 0 end
	end
	do
		local v = _vm:bitwise_and(self.sequence, 255)
		do self.sequence = self.sequence + 1 end
		if self.sequence > 255 then
			self.sequence = 0
		end
		do return v end
	end
end

function jk.mysql.MySQLDatabaseGeneric:onSequenceReceived(number)
	self.sequence = number + 1
	if self.sequence > 255 then
		self.sequence = 0
	end
end

function jk.mysql.MySQLDatabaseGeneric:createSSLRequest()
	local pm = self:createPacket()
	do pm:appendInt32(self:getMyCapabilityFlags()) end
	do pm:appendInt32(4294967295) end
	do pm:appendByte(255) end
	do pm:appendMultipleBytes(0, 23) end
	do return self:finalizePacket(pm, self:getNextSequence()) end
end

function jk.mysql.MySQLDatabaseGeneric:createComQuit()
	local pm = self:createPacket()
	do pm:appendByte(1) end
	do return self:finalizePacket(pm, self:getNextSequence()) end
end

function jk.mysql.MySQLDatabaseGeneric:createComInitDb(dbname)
	local pm = self:createPacket()
	do pm:appendByte(2) end
	do pm:appendEofTerminatedString(dbname) end
	do return self:finalizePacket(pm, self:getNextSequence()) end
end

function jk.mysql.MySQLDatabaseGeneric:createComQuery(query)
	local pm = self:createPacket()
	do pm:appendByte(3) end
	do pm:appendEofTerminatedString(query) end
	do return self:finalizePacket(pm, self:getNextSequence()) end
end

function jk.mysql.MySQLDatabaseGeneric:createAuthenticationPacket(authPlugin, authData, forAuthSwitch)
	local pm = self:createPacket()
	if not forAuthSwitch then
		do pm:appendInt32(self:getMyCapabilityFlags()) end
		do pm:appendInt32(4294967295) end
		do pm:appendByte(255) end
		do pm:appendMultipleBytes(0, 23) end
		do pm:appendNullTerminatedString(self.username) end
	end
	if authPlugin == "mysql_clear_password" then
		if not forAuthSwitch then
			do pm:appendByte(_g.jk.lang.String:getLength(self.password)) end
			do pm:appendBuffer(_g.jk.lang.String:toUTF8Buffer(self.password)) end
			do pm:appendNullTerminatedString("mysql_clear_password") end
		else
			do pm:appendBuffer(_g.jk.lang.String:toUTF8Buffer(self.password)) end
		end
	elseif authPlugin == "mysql_native_password" then
		local bpassword = _g.jk.lang.String:toUTF8Buffer(self.password)
		local bdata = _g.jk.lang.String:toUTF8Buffer(authData)
		local encoder = _g.jk.sha.SHAEncoder:create()
		if not (encoder ~= nil) then
			do self:logError("Failed to create a SHA encoder!") end
			do return nil end
		end
		do
			local h1 = encoder:encodeAsBuffer(bpassword, _g.jk.sha.SHAEncoder.SHA1)
			local hpw2 = encoder:encodeAsBuffer(h1, _g.jk.sha.SHAEncoder.SHA1)
			local concat = _g.jk.lang.Buffer:append(bdata, hpw2, -1)
			local h2 = encoder:encodeAsBuffer(concat, _g.jk.sha.SHAEncoder.SHA1)
			if not (#h1 == 20 and #h2 == 20) then
				do self:logError("SHA1 encoder returned buffers that are not 20 bytes!") end
				do return nil end
			end
			do
				local n = 0
				while n < 20 do
					h1[n + 1] = _vm:bitwise_xor(h1[n + 1], h2[n + 1])
					do n = n + 1 end
				end
			end
			if not forAuthSwitch then
				do pm:appendByte(20) end
				do pm:appendBuffer(h1) end
				do pm:appendNullTerminatedString("mysql_native_password") end
			else
				do pm:appendBuffer(h1) end
			end
		end
	elseif authPlugin == "caching_sha2_password" or authPlugin == "sha256_password" then
		local bpassword = _g.jk.lang.String:toUTF8Buffer(self.password)
		local bdata = _g.jk.lang.String:toUTF8Buffer(authData)
		local encoder = _g.jk.sha.SHAEncoder:create()
		if not (encoder ~= nil) then
			do self:logError("Failed to create a SHA encoder!") end
			do return nil end
		end
		do
			local h1 = encoder:encodeAsBuffer(bpassword, _g.jk.sha.SHAEncoder.SHA256)
			local hpw2 = encoder:encodeAsBuffer(h1, _g.jk.sha.SHAEncoder.SHA256)
			local concat = _g.jk.lang.Buffer:append(hpw2, bdata, -1)
			local h2 = encoder:encodeAsBuffer(concat, _g.jk.sha.SHAEncoder.SHA256)
			local sz = #h1
			local sz2 = #h2
			if not (sz == sz2) then
				do self:logError("SHA256 encoder returned different size buffers " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(sz)) .. " and " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(sz2)) .. "!") end
				do return nil end
			end
			do
				local n = 0
				while n < sz do
					h1[n + 1] = _vm:bitwise_xor(h1[n + 1], h2[n + 1])
					do n = n + 1 end
				end
			end
			if not forAuthSwitch then
				do pm:appendByte(sz) end
				do pm:appendBuffer(h1) end
				do pm:appendNullTerminatedString("caching_sha2_password") end
			else
				do pm:appendBuffer(h1) end
			end
		end
	else
		do self:logError("Unsupported authentication plugin requested by server: `" .. _g.jk.lang.String:safeString(authPlugin) .. "'") end
		do return nil end
	end
	do return self:finalizePacket(pm, self:getNextSequence()) end
end

function jk.mysql.MySQLDatabaseGeneric:handleAuthenticationSync(authPlugin, authData, forAuthSwitch)
	local response = self:sendAndReceive(self:createAuthenticationPacket(authPlugin, authData, forAuthSwitch))
	if not (response ~= nil) then
		do return false end
	end
	if authPlugin == "caching_sha2_password" then
		if #response == 2 and response[0 + 1] == 1 and response[1 + 1] == 4 then
			if self:isSecureConnection() then
				local pm = self:createPacket()
				do pm:appendNullTerminatedString(self.password) end
				response = self:sendAndReceive(self:finalizePacket(pm, self:getNextSequence()))
			else
				do self:logError("Using caching_sha2_password over unsecure connection is not supported.") end
				do return false end
			end
		elseif #response == 2 and response[0 + 1] == 1 and response[1 + 1] == 3 then
			local packet = self:receivePacketDataSync()
			if self:isOkPacket(packet) then
				do self:logDebug("Received a fast_auth_success message from MySQL server.") end
				do self:logOkPacket(self:parseOkPacket(packet)) end
				self.sequence = 0
				do return true end
			end
			do self:logError("Received an unexpected (non-ok) packet from MySQL server.") end
			do self:closeSocket() end
			do return false end
		end
	end
	if self:handleAsErrorPacket(response) then
		do self:closeSocket() end
		do return false end
	end
	if self:isOkPacket(response) then
		do self:logOkPacket(self:parseOkPacket(response)) end
		self.sequence = 0
		do return true end
	end
	if response[0 + 1] == 254 then
		local walker = _g.jk.mypacket.MyPacketParser:forBuffer(response)
		do walker:getInt8() end
		do
			local pluginName = walker:getNullTerminatedString()
			local authPluginData = walker:getEofTerminatedString()
			if _g.jk.lang.String:isNotEmpty(pluginName) then
				do self:logDebug("Server responded with auth switch request. Plugin name=`" .. _g.jk.lang.String:safeString(pluginName) .. "'") end
				if pluginName == authPlugin then
					do self:logError("Auth switch request to plugin `" .. _g.jk.lang.String:safeString(pluginName) .. "' received from server, but already using that plugin! Aborting.") end
					do self:closeSocket() end
					do return false end
				end
				do return self:handleAuthenticationSync(pluginName, authPluginData, true) end
			end
		end
	end
	do self:logError("Unknown packet received from MySQL server as response to handshake response.") end
	do self:closeSocket() end
	do return false end
end

function jk.mysql.MySQLDatabaseGeneric:asCompletePacket(buffer)
	if not (buffer ~= nil and #buffer > 4) then
		do return nil end
	end
	do
		local nb = _util:allocate_buffer(4)
		nb[0 + 1] = buffer[0 + 1]
		nb[1 + 1] = buffer[1 + 1]
		nb[2 + 1] = buffer[2 + 1]
		nb[3 + 1] = 0
		do
			local psize = _g.jk.lang.Buffer:getInt32LE(nb, 0)
			local bsize = #buffer
			if bsize == psize + 4 then
				self.overflowBuffer = nil
				do self:onSequenceReceived(buffer[3 + 1]) end
				do return buffer end
			end
			if bsize > psize + 4 then
				local v = _g.jk.lang.Buffer:getSubBuffer(buffer, 0, psize + 4, false)
				self.overflowBuffer = _g.jk.lang.Buffer:getSubBuffer(buffer, psize + 4, -1, false)
				do self:onSequenceReceived(v[3 + 1]) end
				do return v end
			end
			do return nil end
		end
	end
end

function jk.mysql.MySQLDatabaseGeneric:receivePacketSync()
	if not (self.socket ~= nil) then
		do return nil end
	end
	do
		local v = self:asCompletePacket(self.overflowBuffer)
		if not (v ~= nil) then
			local data = self.overflowBuffer
			self.overflowBuffer = nil
			while true do
				local n = self.socket:read(self.receiveBuffer)
				if n < 1 then
					if self.connectionState == _g.jk.mysql.MySQLDatabaseGeneric.ConnectionState.COMMAND then
						do self:logWarning("Failed to receive packet. Reconnecting.") end
						do self:reconnectSync() end
					end
					do return nil end
				end
				data = _g.jk.lang.Buffer:append(data, self.receiveBuffer, n)
				v = self:asCompletePacket(data)
				if v ~= nil then
					do break end
				end
			end
		end
		do self:logDebug("Received packet: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forBufferHex(v))) end
		do return v end
	end
end

function jk.mysql.MySQLDatabaseGeneric:receivePacketsSync()
	local v = nil
	while true do
		local packet = self:receivePacketSync()
		if not (packet ~= nil) then
			do return nil end
		end
		if packet[0 + 1] == 0 and packet[1 + 1] == 0 and packet[2 + 1] == 0 then
			do break end
		end
		if not (v ~= nil) then
			v = {}
		end
		do _g.jk.lang.Vector:append(v, packet) end
		if packet[0 + 1] == 255 and packet[1 + 1] == 255 and packet[2 + 1] == 255 then
			goto _continue1
		end
		do break end
		::_continue1::
	end
	do return v end
end

function jk.mysql.MySQLDatabaseGeneric:receivePacketDataSync()
	local packets = self:receivePacketsSync()
	if not (packets ~= nil) then
		do return nil end
	end
	if _g.jk.lang.Vector:getSize(packets) == 1 then
		local packet = packets[0 + 1]
		if not (packet ~= nil) then
			do return nil end
		end
		if not (#packet > 4) then
			do return nil end
		end
		do return _g.jk.lang.Buffer:getSubBuffer(packet, 4, -1, false) end
	end
	do
		local v = nil
		if packets ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(packets)
			do
				n = 0
				while n < m do
					local packet = packets[n + 1]
					if packet ~= nil then
						if packet == nil or #packet < 4 then
							goto _continue2
						end
						v = _g.jk.lang.Buffer:append(v, _g.jk.lang.Buffer:getSubBuffer(packet, 4, -1, false), -1)
					end
					::_continue2::
					do n = n + 1 end
				end
			end
		end
		do return v end
	end
end

function jk.mysql.MySQLDatabaseGeneric:sendSync(packet)
	if not (self.socket ~= nil and packet ~= nil) then
		do return false end
	end
	if not (self.socket:write(packet, -1) > 0) then
		if self.connectionState == _g.jk.mysql.MySQLDatabaseGeneric.ConnectionState.COMMAND then
			do self:logWarning("Failed to send packet of " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(#packet)) .. " bytes. Reconnecting.") end
			do self:reconnectSync() end
		end
		do return false end
	end
	do self:logDebug("Sent packet: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forBufferHex(packet))) end
	do return true end
end

function jk.mysql.MySQLDatabaseGeneric:sendAndReceive(packet)
	if not self:sendSync(packet) then
		do return nil end
	end
	do return self:receivePacketDataSync() end
end

function jk.mysql.MySQLDatabaseGeneric:executePacketSync(packet)
	local result = self:sendAndReceive(packet)
	if not (result ~= nil) then
		do return false end
	end
	if self:isOkPacket(result) then
		do self:logOkPacket(self:parseOkPacket(result)) end
		do return true end
	end
	if self:handleAsErrorPacket(result) then
		do return false end
	end
	do self:logWarning("Received an unexpected (non-error, non-ok) packet from MySQL server.") end
	do return false end
end

function jk.mysql.MySQLDatabaseGeneric:closeSocket()
	if self.socket ~= nil then
		do self:logDebug("Closing MySQL socket") end
		do self.socket:close() end
		self.socket = nil
		self.connectionState = _g.jk.mysql.MySQLDatabaseGeneric.ConnectionState.DISCONNECTED
		self.sslEnabled = false
		self.overflowBuffer = nil
	end
end

function jk.mysql.MySQLDatabaseGeneric:closeSync()
	self.connectionState = _g.jk.mysql.MySQLDatabaseGeneric.ConnectionState.DISCONNECTING
	do self:sendAndReceive(self:createComQuit()) end
	do self:closeSocket() end
end

function jk.mysql.MySQLDatabaseGeneric:receiveColumnsSync(numColumns)
	local columns = nil
	if numColumns > 0 then
		columns = {}
		do
			local n = 0
			while true do
				local packet = self:receivePacketDataSync()
				if not (packet ~= nil) then
					do self:closeSocket() end
					do return nil end
				end
				if self:isEofPacket(packet) then
					do break end
				end
				do
					local column = self:parseColumnDefinition(packet)
					if not (column ~= nil) then
						do self:logWarning("Invalid column packet received.") end
						goto _continue3
					end
					do self:logDebug("Column: `" .. _g.jk.lang.String:safeString(column:getName()) .. "'") end
					do _g.jk.lang.Vector:append(columns, column) end
					do n = n + 1 end
				end
				::_continue3::
			end
			do self:logDebug("Received " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(n)) .. " columns") end
		end
	end
	do return columns end
end

function jk.mysql.MySQLDatabaseGeneric:prepareSync(sql)
	if not _g.jk.lang.String:isNotEmpty(sql) then
		do self:logWarning("Empty string given as statement to prepare") end
		do return nil end
	end
	do
		local prep = self:createPacket()
		do prep:appendByte(22) end
		do prep:appendEofTerminatedString(sql) end
		do self:logDebug("Preparing query: `" .. _g.jk.lang.String:safeString(sql) .. "'") end
		do
			local prepresp = self:sendAndReceive(self:finalizePacket(prep, self:getNextSequence()))
			if self:handleAsErrorPacket(prepresp) then
				do return nil end
			end
			do
				local walker = _g.jk.mypacket.MyPacketParser:forBuffer(prepresp)
				local status = walker:getInt8()
				if status ~= 0 then
					do self:logError("Prepare statement returned non-zero status") end
					do return nil end
				end
				do
					local statementId = walker:getInt32()
					local numColumns = walker:getInt16()
					local numParams = walker:getInt16()
					do walker:skipBytes(1) end
					do
						local warningCount = walker:getInt16()
						do self:logDebug("Query prepared as statement id " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(statementId))) end
						if numParams > 0 then
							local n = 0
							while true do
								local packet = self:receivePacketDataSync()
								if not (packet ~= nil) then
									do self:closeSocket() end
									do return nil end
								end
								if self:isEofPacket(packet) then
									do break end
								end
								do n = n + 1 end
							end
							do self:logDebug("Query has " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(n)) .. " parameter(s)") end
						end
						do
							local columns = self:receiveColumnsSync(numColumns)
							do return _g.jk.mysql.MySQLDatabaseGeneric.MyStatement:forStatementId(statementId, columns, self) end
						end
					end
				end
			end
		end
	end
end

function jk.mysql.MySQLDatabaseGeneric:isEofPacket(packet)
	if not (packet ~= nil) then
		do return false end
	end
	if packet[0 + 1] == 254 and #packet <= 5 then
		do return true end
	end
	do return false end
end

jk.mysql.MySQLDatabaseGeneric.ColumnDefinition = {}
jk.mysql.MySQLDatabaseGeneric.ColumnDefinition.__index = jk.mysql.MySQLDatabaseGeneric.ColumnDefinition
_vm:set_metatable(jk.mysql.MySQLDatabaseGeneric.ColumnDefinition, {})

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition._create()
	local v = _vm:set_metatable({}, jk.mysql.MySQLDatabaseGeneric.ColumnDefinition)
	return v
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mysql.MySQLDatabaseGeneric.ColumnDefinition'
	self['_isType.jk.mysql.MySQLDatabaseGeneric.ColumnDefinition'] = true
	self.catalog = nil
	self.schema = nil
	self.table = nil
	self.orgTable = nil
	self.name = nil
	self.orgName = nil
	self.nextLength = 0
	self.characterSet = 0
	self.columnLength = 0
	self.type = 0
	self.flags = 0
	self.decimals = 0
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:_construct0()
	jk.mysql.MySQLDatabaseGeneric.ColumnDefinition._init(self)
	return self
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:getCatalog()
	do return self.catalog end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:setCatalog(v)
	self.catalog = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:getSchema()
	do return self.schema end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:setSchema(v)
	self.schema = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:getTable()
	do return self.table end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:setTable(v)
	self.table = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:getOrgTable()
	do return self.orgTable end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:setOrgTable(v)
	self.orgTable = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:getName()
	do return self.name end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:setName(v)
	self.name = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:getOrgName()
	do return self.orgName end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:setOrgName(v)
	self.orgName = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:getNextLength()
	do return self.nextLength end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:setNextLength(v)
	self.nextLength = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:getCharacterSet()
	do return self.characterSet end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:setCharacterSet(v)
	self.characterSet = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:getColumnLength()
	do return self.columnLength end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:setColumnLength(v)
	self.columnLength = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:getType()
	do return self.type end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:setType(v)
	self.type = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:getFlags()
	do return self.flags end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:setFlags(v)
	self.flags = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:getDecimals()
	do return self.decimals end
end

function jk.mysql.MySQLDatabaseGeneric.ColumnDefinition:setDecimals(v)
	self.decimals = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric:parseColumnDefinition(packet)
	if not (packet ~= nil) then
		do return nil end
	end
	do
		local walker = _g.jk.mypacket.MyPacketParser:forBuffer(packet)
		local v = _g.jk.mysql.MySQLDatabaseGeneric.ColumnDefinition._construct0(_g.jk.mysql.MySQLDatabaseGeneric.ColumnDefinition._create())
		do v:setCatalog(walker:getLengthEncodedString()) end
		do v:setSchema(walker:getLengthEncodedString()) end
		do v:setTable(walker:getLengthEncodedString()) end
		do v:setOrgTable(walker:getLengthEncodedString()) end
		do v:setName(walker:getLengthEncodedString()) end
		do v:setOrgName(walker:getLengthEncodedString()) end
		do v:setNextLength(walker:getLengthEncodedInteger()) end
		do v:setCharacterSet(walker:getInt16()) end
		do v:setColumnLength(walker:getInt32()) end
		do v:setType(walker:getInt8()) end
		do v:setFlags(walker:getInt16()) end
		do v:setDecimals(walker:getInt8()) end
		do return v end
	end
end

jk.mysql.MySQLDatabaseGeneric.MyResultSet = _g.jk.sql.SQLResultSetIterator._create()
jk.mysql.MySQLDatabaseGeneric.MyResultSet.__index = jk.mysql.MySQLDatabaseGeneric.MyResultSet
_vm:set_metatable(jk.mysql.MySQLDatabaseGeneric.MyResultSet, {
	__index = _g.jk.sql.SQLResultSetIterator
})

function jk.mysql.MySQLDatabaseGeneric.MyResultSet._create()
	local v = _vm:set_metatable({}, jk.mysql.MySQLDatabaseGeneric.MyResultSet)
	return v
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mysql.MySQLDatabaseGeneric.MyResultSet'
	self['_isType.jk.mysql.MySQLDatabaseGeneric.MyResultSet'] = true
	self.columns = nil
	self.rowData = nil
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:_construct0()
	jk.mysql.MySQLDatabaseGeneric.MyResultSet._init(self)
	do _g.jk.sql.SQLResultSetIterator._construct0(self) end
	return self
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:getColumnCount()
	do return _g.jk.lang.Vector:getSize(self.columns) end
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:getColumnName(n)
	local v = _g.jk.lang.Vector:get(self.columns, n)
	if not (v ~= nil) then
		do return nil end
	end
	do return v:getName() end
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:getColumnNames()
	local v = {}
	local cc = self:getColumnCount()
	do
		local n = 0
		while n < cc do
			do _g.jk.lang.Vector:append(v, self:getColumnName(n)) end
			do n = n + 1 end
		end
	end
	do return v end
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:nextValues(values)
	do _g.jk.lang.Vector:clear(values) end
	if not self:step() then
		do return false end
	end
	do
		local cc = self:getColumnCount()
		do
			local n = 0
			while n < cc do
				do _g.jk.lang.Vector:append(values, self:getColumnObject(n)) end
				do n = n + 1 end
			end
		end
		do return true end
	end
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:next()
	if not self:step() then
		do return nil end
	end
	do
		local v = _g.jk.lang.DynamicMap._construct0(_g.jk.lang.DynamicMap._create())
		local cc = self:getColumnCount()
		do
			local n = 0
			while n < cc do
				local kk = self:getColumnName(n)
				if kk ~= nil then
					do v:setObject(kk, self:getColumnObject(n)) end
				end
				do n = n + 1 end
			end
		end
		do return v end
	end
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:getColumnObject(n)
	do return _g.jk.lang.Vector:get(self.rowData, n) end
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:getColumnInt(n)
	do return _g.jk.lang.Integer:asInteger(self:getColumnObject(n)) end
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:getColumnLong(n)
	do return _g.jk.lang.LongInteger:asLong(self:getColumnObject(n)) end
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:getColumnDouble(n)
	do return _g.jk.lang.Double:asDouble(self:getColumnObject(n)) end
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:getColumnBuffer(n)
	do return (function(o)
		if _util:is_buffer(o) then
			do return o end
		end
		do return nil end
	end)(self:getColumnObject(n)) end
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:getColumns()
	do return self.columns end
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:setColumns(v)
	self.columns = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:getRowData()
	do return self.rowData end
end

function jk.mysql.MySQLDatabaseGeneric.MyResultSet:setRowData(v)
	self.rowData = v
	do return self end
end

jk.mysql.MySQLDatabaseGeneric.StaticResultSet = _g.jk.mysql.MySQLDatabaseGeneric.MyResultSet._create()
jk.mysql.MySQLDatabaseGeneric.StaticResultSet.__index = jk.mysql.MySQLDatabaseGeneric.StaticResultSet
_vm:set_metatable(jk.mysql.MySQLDatabaseGeneric.StaticResultSet, {
	__index = _g.jk.mysql.MySQLDatabaseGeneric.MyResultSet
})

function jk.mysql.MySQLDatabaseGeneric.StaticResultSet._create()
	local v = _vm:set_metatable({}, jk.mysql.MySQLDatabaseGeneric.StaticResultSet)
	return v
end

function jk.mysql.MySQLDatabaseGeneric.StaticResultSet:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mysql.MySQLDatabaseGeneric.StaticResultSet'
	self['_isType.jk.mysql.MySQLDatabaseGeneric.StaticResultSet'] = true
	self.data = nil
	self.current = 0
end

function jk.mysql.MySQLDatabaseGeneric.StaticResultSet:_construct0()
	jk.mysql.MySQLDatabaseGeneric.StaticResultSet._init(self)
	do _g.jk.mysql.MySQLDatabaseGeneric.MyResultSet._construct0(self) end
	return self
end

function jk.mysql.MySQLDatabaseGeneric.StaticResultSet:hasNext()
	do return self.current + 1 < _g.jk.lang.Vector:getSize(self.data) end
end

function jk.mysql.MySQLDatabaseGeneric.StaticResultSet:step()
	if not self:hasNext() then
		do self:setRowData(nil) end
		do return false end
	end
	do self:setRowData(_g.jk.lang.Vector:get(self.data, (function() local v = self.current self.current = self.current + 1 return v end)())) end
	do return true end
end

function jk.mysql.MySQLDatabaseGeneric.StaticResultSet:getData()
	do return self.data end
end

function jk.mysql.MySQLDatabaseGeneric.StaticResultSet:setData(v)
	self.data = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.StaticResultSet:getCurrent()
	do return self.current end
end

function jk.mysql.MySQLDatabaseGeneric.StaticResultSet:setCurrent(v)
	self.current = v
	do return self end
end

jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet = _g.jk.mysql.MySQLDatabaseGeneric.MyResultSet._create()
jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet.__index = jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet
_vm:set_metatable(jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet, {
	__index = _g.jk.mysql.MySQLDatabaseGeneric.MyResultSet
})

function jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet._create()
	local v = _vm:set_metatable({}, jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet)
	return v
end

function jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet'
	self['_isType.jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet'] = true
	self.statement = nil
	self.db = nil
	self.nextStored = nil
	self._destructWrapper = _vm:create_destructor(function() self:_destruct() end)
end

function jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet:_construct0()
	jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet._init(self)
	do _g.jk.mysql.MySQLDatabaseGeneric.MyResultSet._construct0(self) end
	return self
end

function jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet:_destruct()
	do self:close() end
end

function jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet:getNext()
	local v = self.nextStored
	if v ~= nil then
		self.nextStored = nil
		do return self.nextStored end
	end
	if not (self.db ~= nil) or not (self.statement ~= nil) then
		do return nil end
	end
	v = self.db:fetchNext(self.statement, self:getColumns())
	if not (v ~= nil) then
		do self:close() end
	end
	do return v end
end

function jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet:hasNext()
	if self.nextStored ~= nil then
		do return true end
	end
	self.nextStored = self:getNext()
	if self.nextStored ~= nil then
		do return true end
	end
	do return false end
end

function jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet:step()
	local v = self:getNext()
	do self:setRowData(v) end
	if not (v ~= nil) then
		do return false end
	end
	do return true end
end

function jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet:close()
	if self.statement ~= nil then
		do self.statement:resetStatement() end
	end
	self.statement = nil
	self.db = nil
end

function jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet:getStatement()
	do return self.statement end
end

function jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet:setStatement(v)
	self.statement = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet:getDb()
	do return self.db end
end

function jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet:setDb(v)
	self.db = v
	do return self end
end

jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse = {}
jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse.__index = jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse
_vm:set_metatable(jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse, {})

function jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse._create()
	local v = _vm:set_metatable({}, jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse)
	return v
end

function jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse'
	self['_isType.jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse'] = true
	self.status = false
	self.affectedRows = 0
	self.results = nil
end

function jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:_construct0()
	jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse._init(self)
	return self
end

function jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:forOk()
	local v = _g.jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse._construct0(_g.jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse._create())
	do v:setStatus(true) end
	do v:setAffectedRows(0) end
	do v:setResults(nil) end
	do return v end
end

function jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:forError()
	local v = _g.jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse._construct0(_g.jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse._create())
	do v:setStatus(false) end
	do v:setAffectedRows(0) end
	do v:setResults(nil) end
	do return v end
end

function jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:forAffectedRows(n)
	local v = _g.jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse._construct0(_g.jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse._create())
	do v:setStatus(true) end
	do v:setAffectedRows(n) end
	do v:setResults(nil) end
	do return v end
end

function jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:forResults(results)
	local v = _g.jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse._construct0(_g.jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse._create())
	do v:setStatus(true) end
	do v:setAffectedRows(0) end
	do v:setResults(results) end
	do return v end
end

function jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:closeResults()
	if self.results ~= nil then
		do self.results:close() end
		self.results = nil
	end
end

function jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:getStatus()
	do return self.status end
end

function jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:setStatus(v)
	self.status = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:getAffectedRows()
	do return self.affectedRows end
end

function jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:setAffectedRows(v)
	self.affectedRows = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:getResults()
	do return self.results end
end

function jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:setResults(v)
	self.results = v
	do return self end
end

function jk.mysql.MySQLDatabaseGeneric:executeSync(stmt)
	local v = self:executeStatementSync(stmt, false)
	if not (v ~= nil) then
		do return false end
	end
	do v:closeResults() end
	do return v:getStatus() end
end

function jk.mysql.MySQLDatabaseGeneric:executeUpdateDeleteSync(stmt)
	local v = self:executeStatementSync(stmt, false)
	if not (v ~= nil) then
		do return 0 end
	end
	do v:closeResults() end
	do return v:getAffectedRows() end
end

function jk.mysql.MySQLDatabaseGeneric:querySync(stmt)
	local v = self:executeStatementSync(stmt, true)
	if not (v ~= nil) then
		do return nil end
	end
	do return v:getResults() end
end

function jk.mysql.MySQLDatabaseGeneric:closeStatementSync(statement)
	if not (statement ~= nil) then
		do return end
	end
	do
		local id = statement:getId()
		do self:logDebug("Closing statement " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forLongInteger(id))) end
		do
			local close = self:createPacket()
			do close:appendByte(25) end
			do close:appendInt32(id) end
			do self:sendSync(self:finalizePacket(close, self:getNextSequence())) end
		end
	end
end

function jk.mysql.MySQLDatabaseGeneric:resetStatement(statement)
	if not (statement ~= nil) then
		do return false end
	end
	do
		local id = statement:getId()
		do self:logDebug("Resetting statement " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forLongInteger(id))) end
		do
			local close = self:createPacket()
			do close:appendByte(26) end
			do close:appendInt32(id) end
			do
				local resp = self:sendAndReceive(self:finalizePacket(close, self:getNextSequence()))
				if self:handleAsErrorPacket(resp) then
					do return false end
				end
				if self:isOkPacket(resp) then
					do self:logOkPacket(self:parseOkPacket(resp)) end
					do return true end
				end
				do self:logError("Unknown response to resetStatement") end
				do return false end
			end
		end
	end
end

function jk.mysql.MySQLDatabaseGeneric:isNullInBitmap(bitmap, index)
	if not (bitmap ~= nil) then
		do return false end
	end
	if not (index > 0) then
		do return false end
	end
	do
		local idx = index + 2
		local byte = _util:convert_to_integer(idx / 8)
		local bit = _util:convert_to_integer(idx % 8)
		if not (byte < #bitmap) then
			do return false end
		end
		do
			local n = 1
			n = _vm:bitwise_left_shift(n, bit)
			if _vm:bitwise_and(bitmap[byte + 1], n) ~= 0 then
				do return true end
			end
			do return false end
		end
	end
end

function jk.mysql.MySQLDatabaseGeneric:parseRecord(packet, columns)
	if not (packet ~= nil) then
		do self:logWarning("Null packet given to parseRecord") end
		do return nil end
	end
	do
		local walker = _g.jk.mypacket.MyPacketParser:forBuffer(packet)
		if not (walker:getInt8() == 0) then
			do self:logWarning("Record buffer has invalid header") end
			do return nil end
		end
		do
			local columnCount = _g.jk.lang.Vector:getSize(columns)
			local nullBytes = _util:convert_to_integer((columnCount + 9) / 8)
			local nullBitmap = walker:getBuffer(nullBytes)
			local v = {}
			do _g.jk.lang.Vector:setSize(v, columnCount) end
			do
				local n = 0
				if columns ~= nil then
					local n2 = 0
					local m = _g.jk.lang.Vector:getSize(columns)
					do
						n2 = 0
						while n2 < m do
							local column = columns[n2 + 1]
							if column ~= nil then
								local type = column:getType()
								local o = nil
								if self:isNullInBitmap(nullBitmap, n) then
									o = nil
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_FLOAT then
									o = _g.jk.lang.Double:asObject(walker:getFloat())
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_DOUBLE then
									o = _g.jk.lang.Double:asObject(walker:getDouble())
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_LONGLONG then
									o = _g.jk.lang.Integer:asObject(walker:getInt64())
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_INTEGER then
									o = _g.jk.lang.Integer:asObject(walker:getInt32())
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_MEDIUMINT then
									o = _g.jk.lang.Integer:asObject(walker:getInt24())
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_SMALLINT then
									o = _g.jk.lang.Integer:asObject(walker:getInt16())
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_YEAR then
									o = _g.jk.lang.Integer:asObject(walker:getInt16())
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_TINYINT then
									o = _g.jk.lang.Integer:asObject(walker:getInt8())
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_DATE then
									local length = walker:getInt8()
									if length ~= 4 then
										do self:logError("Unsupported length for date field: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(length))) end
										do return nil end
									end
									do
										local year = walker:getInt16()
										local month = walker:getInt8()
										local day = walker:getInt8()
										local dt = _g.jk.lang.DateTime._construct0(_g.jk.lang.DateTime._create())
										do dt:setYear(year) end
										do dt:setMonth(month) end
										do dt:setDayOfMonth(day) end
										o = dt
									end
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_TIMESTAMP or type == type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_DATETIME then
									local length = walker:getInt8()
									local year = walker:getInt16()
									local month = walker:getInt8()
									local days = walker:getInt8()
									local hours = walker:getInt8()
									local minutes = walker:getInt8()
									local seconds = walker:getInt8()
									local microseconds = 0
									if length == 11 then
										microseconds = walker:getInt32()
									elseif length == 7 then
									else
										do self:logError("Unsupported length for datetime field: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(length))) end
										do return nil end
									end
									do
										local dt = _g.jk.lang.DateTime._construct0(_g.jk.lang.DateTime._create())
										do dt:setYear(year) end
										do dt:setMonth(month) end
										do dt:setDayOfMonth(days) end
										do dt:setHours(hours) end
										do dt:setMinutes(minutes) end
										do dt:setSeconds(seconds) end
										o = dt
									end
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_TIME then
									local length = walker:getInt8()
									local isNegative = walker:getInt8()
									local date = walker:getInt32()
									local hours = walker:getInt8()
									local minutes = walker:getInt8()
									local seconds = walker:getInt8()
									local microseconds = 0
									if length == 8 then
									elseif length == 12 then
										microseconds = walker:getInt32()
									else
										do self:logError("Unsupported length for time field: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(length))) end
										do return nil end
									end
									do
										local dt = _g.jk.lang.DateTime._construct0(_g.jk.lang.DateTime._create())
										do dt:setHours(hours) end
										do dt:setMinutes(minutes) end
										do dt:setSeconds(seconds) end
										o = dt
									end
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_DECIMAL or type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_NEWDECIMAL then
									o = walker:getLengthEncodedString()
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_TINY_BLOB or type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_MEDIUM_BLOB or type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_LONG_BLOB or type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_BLOB then
									local cs = column:getCharacterSet()
									if cs == 63 then
										o = walker:getLengthEncodedBuffer()
									elseif cs == 255 or cs == 45 or cs == 33 then
										o = walker:getLengthEncodedString()
									elseif cs == 11 then
										o = _g.jk.lang.String:forASCIIBuffer(walker:getLengthEncodedBuffer())
									else
										do self:logWarning("Unsupported character set " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(cs)) .. " encountered. Assuming binary.") end
										o = walker:getLengthEncodedBuffer()
									end
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_GEOMETRY then
									o = walker:getLengthEncodedString()
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_STRING or type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_VARCHAR or type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_VAR_STRING then
									o = walker:getLengthEncodedString()
								elseif type == _g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_JSON then
									o = walker:getLengthEncodedString()
								else
									do self:logError("Unsupported field type " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(type)) .. " encountered in response.") end
									do return nil end
								end
								do self:logDebug("Field " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(n)) .. " or `" .. _g.jk.lang.String:safeString(column:getName()) .. "' type=" .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(type)) .. ", value=`" .. _g.jk.lang.String:safeString(_g.jk.lang.String:asString(o)) .. "'") end
								v[n + 1] = o
								do n = n + 1 end
							end
							do n2 = n2 + 1 end
						end
					end
				end
				do return v end
			end
		end
	end
end

function jk.mysql.MySQLDatabaseGeneric:fetchNext(statement, columns)
	if not (statement ~= nil) then
		do self:logWarning("null statement given to fetchNext") end
		do return nil end
	end
	do
		local statementId = statement:getId()
		do self:logDebug("Fetching next record for statement " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forLongInteger(statementId))) end
		do
			local req = self:createPacket()
			do req:appendByte(28) end
			do req:appendInt32(statementId) end
			do req:appendInt32(1) end
			do self:sendSync(self:finalizePacket(req, self:getNextSequence())) end
			do
				local v = nil
				while true do
					local resp = self:receivePacketDataSync()
					if self:handleAsErrorPacket(resp) then
						do return nil end
					end
					if not (resp ~= nil) or self:isEofPacket(resp) then
						do break end
					end
					do
						local rr = self:parseRecord(resp, columns)
						if rr ~= nil then
							if v ~= nil then
								do self:logWarning("Multiple records received in response to a single fetch statement!") end
							end
							v = rr
						end
					end
				end
				do return v end
			end
		end
	end
end

function jk.mysql.MySQLDatabaseGeneric:executeStatementSync(stmt, withCursor)
	local ms = _vm:to_table_with_key(stmt, '_isType.jk.mysql.MySQLDatabaseGeneric.MyStatement')
	if not (ms ~= nil) then
		do self:logError("Invalid statement object given to executeStatementSync") end
		do return nil end
	end
	do
		local statementId = ms:getId()
		do self:logDebug("Executing prepared statement with id " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forLongInteger(statementId))) end
		do
			local xx = self:createPacket()
			do xx:appendByte(23) end
			do xx:appendInt32(statementId) end
			if withCursor then
				do xx:appendByte(1) end
			else
				do xx:appendByte(0) end
			end
			do xx:appendInt32(1) end
			do
				local params = ms:getParams()
				local pc = _g.jk.lang.Vector:getSize(params)
				if pc > 0 then
					local nullbytes = _util:convert_to_integer((pc + 7) / 8)
					local bb = _util:allocate_buffer(nullbytes)
					do
						local n = 0
						while n < nullbytes do
							bb[n + 1] = 0
							do n = n + 1 end
						end
					end
					do
						local n = 0
						while n < pc do
							if _g.jk.lang.Vector:get(params, n) == nil then
								local by = _util:convert_to_integer(n / 8)
								local bi = _util:convert_to_integer(n % 8)
								local x = 1
								if bi > 0 then
									do _vm:bitwise_left_shift(x, bi) end
								end
								bb[by + 1] = _vm:bitwise_or(bb[by + 1], x)
							end
							do n = n + 1 end
						end
					end
					do xx:appendBuffer(bb) end
					do xx:appendByte(1) end
					do
						local n = 0
						while n < pc do
							local param = _g.jk.lang.Vector:get(params, n)
							if (_vm:get_variable_type(param) == 'string') then
								do xx:appendByte(_g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_VARCHAR) end
								do xx:appendByte(0) end
							elseif (_vm:to_table_with_key(param, '_isType.jk.lang.IntegerObject') ~= nil) then
								do xx:appendByte(_g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_LONG) end
								do xx:appendByte(0) end
							elseif (_vm:to_table_with_key(param, '_isType.jk.lang.LongIntegerObject') ~= nil) then
								do xx:appendByte(_g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_LONGLONG) end
								do xx:appendByte(0) end
							elseif (_vm:to_table_with_key(param, '_isType.jk.lang.DoubleObject') ~= nil) then
								do xx:appendByte(_g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_DOUBLE) end
								do xx:appendByte(0) end
							elseif _util:is_buffer(param) then
								do xx:appendByte(_g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_BLOB) end
								do xx:appendByte(0) end
							else
								do self:logWarning("Unsupported parameter type encountered.") end
								do xx:appendByte(_g.jk.mysql.MySQLDatabaseGeneric.FieldType.MYSQL_TYPE_BLOB) end
								do xx:appendByte(0) end
							end
							do n = n + 1 end
						end
					end
					do
						local n = 0
						while n < pc do
							local param = _g.jk.lang.Vector:get(params, n)
							if (_vm:get_variable_type(param) == 'string') then
								do xx:appendLengthEncodedString(param) end
							elseif (_vm:to_table_with_key(param, '_isType.jk.lang.IntegerObject') ~= nil) then
								local value = param:toInteger()
								do xx:appendInt32(value) end
							elseif (_vm:to_table_with_key(param, '_isType.jk.lang.LongIntegerObject') ~= nil) then
								local value = param:toLong()
								do xx:appendInt64(value) end
							elseif (_vm:to_table_with_key(param, '_isType.jk.lang.DoubleObject') ~= nil) then
								local value = param:toDouble()
								do xx:appendDouble(value) end
							elseif _util:is_buffer(param) then
								do xx:appendLengthEncodedBuffer(param) end
							else
								do self:logWarning("Unsupported parameter type encountered.") end
								do xx:appendLengthEncodedInteger(0) end
							end
							do n = n + 1 end
						end
					end
				end
				do
					local execresp = self:sendAndReceive(self:finalizePacket(xx, self:getNextSequence()))
					local v = nil
					if self:handleAsErrorPacket(execresp) then
						v = nil
					elseif self:isOkPacket(execresp) then
						local pp = self:parseOkPacket(execresp)
						do self:logOkPacket(pp) end
						if pp ~= nil then
							v = _g.jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:forAffectedRows(pp:getAffectedRows())
						else
							v = _g.jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:forOk()
						end
					else
						local walker = _g.jk.mypacket.MyPacketParser:forBuffer(execresp)
						local numColumns = walker:getLengthEncodedInteger()
						local columns = self:receiveColumnsSync(numColumns)
						local rs = _g.jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet._construct0(_g.jk.mysql.MySQLDatabaseGeneric.SyncFetchResultSet._create())
						do rs:setDb(self) end
						do rs:setStatement(ms) end
						do rs:setColumns(columns) end
						v = _g.jk.mysql.MySQLDatabaseGeneric.ExecuteStatementSyncResponse:forResults(rs)
					end
					do return v end
				end
			end
		end
	end
end

function jk.mysql.MySQLDatabaseGeneric:close(callback)
	do self:closeSync() end
	if callback ~= nil then
		do callback() end
	end
end

function jk.mysql.MySQLDatabaseGeneric:execute(stmt, callback)
	local v = self:executeSync(stmt)
	if callback ~= nil then
		do callback(v) end
	end
end

function jk.mysql.MySQLDatabaseGeneric:executeUpdateDelete(stmt, callback)
	local v = self:executeUpdateDeleteSync(stmt)
	if callback ~= nil then
		do callback(v) end
	end
end

function jk.mysql.MySQLDatabaseGeneric:query(stmt, callback)
	local v = self:querySync(stmt)
	if callback ~= nil then
		do callback(v) end
	end
end

function jk.mysql.MySQLDatabaseGeneric:querySingleRow(stmt, callback)
	local v = self:querySingleRowSync(stmt)
	if callback ~= nil then
		do callback(v) end
	end
end

function jk.mysql.MySQLDatabaseGeneric:getAuthenticationPlugin()
	do return self.authenticationPlugin end
end

function jk.mysql.MySQLDatabaseGeneric:setAuthenticationPlugin(v)
	self.authenticationPlugin = v
	do return self end
end
jk = jk or {}

jk.sqlite = jk.sqlite or {}

jk.sqlite.SQLiteDatabase = _g.jk.sql.SQLDatabase._create()
jk.sqlite.SQLiteDatabase.__index = jk.sqlite.SQLiteDatabase
_vm:set_metatable(jk.sqlite.SQLiteDatabase, {
	__index = _g.jk.sql.SQLDatabase
})

function jk.sqlite.SQLiteDatabase._create()
	local v = _vm:set_metatable({}, jk.sqlite.SQLiteDatabase)
	return v
end

function jk.sqlite.SQLiteDatabase:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.sqlite.SQLiteDatabase'
	self['_isType.jk.sqlite.SQLiteDatabase'] = true
end

function jk.sqlite.SQLiteDatabase:_construct0()
	jk.sqlite.SQLiteDatabase._init(self)
	do _g.jk.sql.SQLDatabase._construct0(self) end
	return self
end

function jk.sqlite.SQLiteDatabase:instance()
	_io:write_to_stdout("[jk.sqlite.SQLiteDatabase.instance] (SQLiteDatabase.sling:54:3): Not implemented" .. "\n")
	do return nil end
end

function jk.sqlite.SQLiteDatabase:forFile(file, allowCreate, logger)
	if not (file ~= nil) then
		do return nil end
	end
	do
		local v = _g.jk.sqlite.SQLiteDatabase:instance()
		if not (v ~= nil) then
			do return nil end
		end
		if logger ~= nil then
			do v:setLogger(logger) end
		end
		if not file:isFile() then
			if allowCreate == false then
				do return nil end
			end
			do
				local pp = file:getParent()
				if pp:isDirectory() == false then
					if pp:createDirectoryRecursive() == false then
						do _g.jk.log.Log:error(_vm:to_table_with_key(v:getLogger(), '_isType.jk.log.LoggingContext'), "Failed to create directory: " .. _g.jk.lang.String:safeString(pp:getPath())) end
					end
				end
				if v:initialize(file, true) == false then
					v = nil
				end
			end
		elseif v:initialize(file, false) == false then
			v = nil
		end
		do return v end
	end
end

function jk.sqlite.SQLiteDatabase:getDatabaseTypeId()
	do return "sqlite" end
end

function jk.sqlite.SQLiteDatabase:initialize(file, create)
	do return true end
end

function jk.sqlite.SQLiteDatabase:querySingleRowSync(stmt)
	local it = self:querySync(stmt)
	if not (it ~= nil) then
		do return nil end
	end
	do
		local v = it:next()
		do return v end
	end
end

function jk.sqlite.SQLiteDatabase:tableExistsSync(table)
	if not (table ~= nil) then
		do return false end
	end
	do
		local stmt = self:prepareSync("SELECT name FROM sqlite_master WHERE type='table' AND name=?;")
		if not (stmt ~= nil) then
			do return false end
		end
		do stmt:addParamString(table) end
		do
			local sr = self:querySingleRowSync(stmt)
			if not (sr ~= nil) then
				do return false end
			end
			if not _g.jk.lang.String:equals(table, sr:getString("name", nil)) then
				do return false end
			end
			do return true end
		end
	end
end

function jk.sqlite.SQLiteDatabase:queryAllTableNames(callback)
	local v = self:queryAllTableNamesSync()
	if callback ~= nil then
		do callback(v) end
	end
end

function jk.sqlite.SQLiteDatabase:queryAllTableNamesSync()
	local stmt = self:prepareSync("SELECT name FROM sqlite_master WHERE type='table';")
	if not (stmt ~= nil) then
		do return nil end
	end
	do
		local it = self:querySync(stmt)
		if not (it ~= nil) then
			do return nil end
		end
		do
			local v = {}
			while true do
				local o = it:next()
				if o == nil then
					do break end
				end
				do
					local name = o:getString("name", nil)
					if _g.jk.lang.String:isEmpty(name) == false then
						do _g.jk.lang.Vector:append(v, name) end
					end
				end
			end
			do return v end
		end
	end
end

function jk.sqlite.SQLiteDatabase:columnToCreateString(cc)
	local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
	do sb:appendString(cc:getName()) end
	do sb:appendCharacter(32) end
	do
		local tt = cc:getType()
		if tt == _g.jk.sql.SQLTableColumnInfo.TYPE_INTEGER_KEY then
			do sb:appendString("INTEGER PRIMARY KEY AUTOINCREMENT") end
		elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_LONG_KEY then
			do sb:appendString("BIGINT PRIMARY KEY AUTOINCREMENT") end
		elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_STRING_KEY then
			do sb:appendString("TEXT PRIMARY KEY") end
		elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_INTEGER then
			do sb:appendString("INTEGER") end
		elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_LONG then
			do sb:appendString("BIGINT") end
		elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_STRING then
			do sb:appendString("VARCHAR(255)") end
		elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_TEXT then
			do sb:appendString("TEXT") end
		elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_BLOB then
			do sb:appendString("BLOB") end
		elseif tt == _g.jk.sql.SQLTableColumnInfo.TYPE_DOUBLE then
			do sb:appendString("REAL") end
		else
			do _g.jk.log.Log:error(self:getLogger(), "Unknown column type: " .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(tt))) end
			do sb:appendString("UNKNOWN") end
		end
		do return sb:toString() end
	end
end

function jk.sqlite.SQLiteDatabase:prepareCreateTableStatementSync(table, columns)
	if not (table ~= nil) then
		do return nil end
	end
	if not (columns ~= nil) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		do sb:appendString("CREATE TABLE ") end
		do sb:appendString(table) end
		do sb:appendString(" (") end
		do
			local first = true
			if columns ~= nil then
				local n = 0
				local m = _g.jk.lang.Vector:getSize(columns)
				do
					n = 0
					while n < m do
						local column = columns[n + 1]
						if column ~= nil then
							if first == false then
								do sb:appendCharacter(44) end
							end
							do sb:appendCharacter(32) end
							do sb:appendString(self:columnToCreateString(column)) end
							first = false
						end
						do n = n + 1 end
					end
				end
			end
			do sb:appendString(" );") end
			do return self:prepareSync(sb:toString()) end
		end
	end
end

function jk.sqlite.SQLiteDatabase:prepareDeleteTableStatementSync(table)
	if not (table ~= nil) then
		do return nil end
	end
	do
		local sb = _g.jk.lang.StringBuilder._construct0(_g.jk.lang.StringBuilder._create())
		do sb:appendString("DROP TABLE ") end
		do sb:appendString(table) end
		do sb:appendString(";") end
		do return self:prepareSync(sb:toString()) end
	end
end

function jk.sqlite.SQLiteDatabase:getLastInsertIdSync(table)
	local v = self:querySingleRowSync(self:prepareSync("SELECT ROWID AS id FROM " .. _g.jk.lang.String:safeString(table) .. " ORDER BY ROWID DESC LIMIT 1;"))
	if not (v ~= nil) then
		do return 0 end
	end
	do return v:getLongInteger("id", 0) end
end

function jk.sqlite.SQLiteDatabase:getIdentityColumnNameSync(table)
	_io:write_to_stdout("--- stub --- jk.sqlite.SQLiteDatabase :: getIdentityColumnNameSync" .. "\n")
	do return nil end
end

function jk.sqlite.SQLiteDatabase:getPrimaryKeyColumnNameSync(table)
	_io:write_to_stdout("--- stub --- jk.sqlite.SQLiteDatabase :: getPrimaryKeyColumnNameSync" .. "\n")
	do return nil end
end

function jk.sqlite.SQLiteDatabase:columnExistsSync(table, name)
	_io:write_to_stdout("--- stub --- jk.sqlite.SQLiteDatabase :: columnExistsSync" .. "\n")
	do return false end
end

function jk.sqlite.SQLiteDatabase:isColumnTypeSameSync(table, column)
	_io:write_to_stdout("--- stub --- jk.sqlite.SQLiteDatabase :: isColumnTypeSameSync" .. "\n")
	do return false end
end

function jk.sqlite.SQLiteDatabase:prepareCreateColumnStatementSync(table, column)
	_io:write_to_stdout("--- stub --- jk.sqlite.SQLiteDatabase :: prepareCreateColumnStatementSync" .. "\n")
	do return nil end
end

function jk.sqlite.SQLiteDatabase:prepareUpdateColumnTypeStatementSync(table, column)
	_io:write_to_stdout("--- stub --- jk.sqlite.SQLiteDatabase :: prepareUpdateColumnTypeStatementSync" .. "\n")
	do return nil end
end
jk = jk or {}

jk.math = jk.math or {}

jk.math.Vector2 = {}
jk.math.Vector2.__index = jk.math.Vector2
_vm:set_metatable(jk.math.Vector2, {})

function jk.math.Vector2._create()
	local v = _vm:set_metatable({}, jk.math.Vector2)
	return v
end

function jk.math.Vector2:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.math.Vector2'
	self['_isType.jk.math.Vector2'] = true
	self.x = 0.0
	self.y = 0.0
end

function jk.math.Vector2:_construct0()
	jk.math.Vector2._init(self)
	return self
end

function jk.math.Vector2:create(x, y)
	local v = _g.jk.math.Vector2._construct0(_g.jk.math.Vector2._create())
	v.x = x
	v.y = y
	do return v end
end

function jk.math.Vector2:add(b)
	self.x = self.x + b.x
	self.y = self.y + b.y
	do return self end
end

function jk.math.Vector2:subtract(b)
	self.x = self.x - b.x
	self.y = self.y - b.y
	do return self end
end

function jk.math.Vector2:multiply(b)
	self.x = self.x * b.x
	self.y = self.y * b.y
	do return self end
end

function jk.math.Vector2:multiplyScalar(a)
	self.x = self.x + a
	self.y = self.y + a
	do return self end
end

function jk.math.Vector2:distance(b)
	local dist = (self.y - b.y) * (self.y - b.y) + (self.x - b.x) * (self.x - b.x)
	do return _g.jk.math.Math:sqrt(dist) end
end

function jk.math.Vector2:getLength()
	do return _g.jk.math.Math:sqrt(self.x * self.x + self.y * self.y) end
end

jk.math.Vector3 = {}
jk.math.Vector3.__index = jk.math.Vector3
_vm:set_metatable(jk.math.Vector3, {})

function jk.math.Vector3._create()
	local v = _vm:set_metatable({}, jk.math.Vector3)
	return v
end

function jk.math.Vector3:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.math.Vector3'
	self['_isType.jk.math.Vector3'] = true
	self.x = 0.0
	self.y = 0.0
	self.z = 0.0
end

function jk.math.Vector3:_construct0()
	jk.math.Vector3._init(self)
	return self
end

function jk.math.Vector3:create(x, y, z)
	local v = _g.jk.math.Vector3._construct0(_g.jk.math.Vector3._create())
	v.x = x
	v.y = y
	v.z = z
	do return v end
end

function jk.math.Vector3:add(b)
	self.x = self.x + b.x
	self.y = self.y + b.y
	self.z = self.z + b.z
	do return self end
end

function jk.math.Vector3:subtract(b)
	self.x = self.x - b.x
	self.y = self.y - b.y
	self.z = self.z - b.z
	do return self end
end

function jk.math.Vector3:multiply(b)
	self.x = self.x * b.x
	self.y = self.y * b.y
	self.z = self.z * b.z
	do return self end
end

function jk.math.Vector3:multiplyScalar(a)
	self.x = self.x * a
	self.y = self.y * a
	self.z = self.z * a
	do return self end
end

function jk.math.Vector3:distance(b)
	local dist = (self.y - b.y) * (self.y - b.y) + (self.x - b.x) * (self.x - b.x) + (self.z - b.z) * (self.z - b.z)
	do return _g.jk.math.Math:sqrt(dist) end
end

function jk.math.Vector3:getLength()
	do return _g.jk.math.Math:sqrt(self.x * self.x + self.y * self.y + self.z * self.z) end
end

jk.math.Matrix44 = {}
jk.math.Matrix44.__index = jk.math.Matrix44
_vm:set_metatable(jk.math.Matrix44, {})

function jk.math.Matrix44._create()
	local v = _vm:set_metatable({}, jk.math.Matrix44)
	return v
end

function jk.math.Matrix44:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.math.Matrix44'
	self['_isType.jk.math.Matrix44'] = true
	self.v = _vm:allocate_array(16)
end

function jk.math.Matrix44:_construct0()
	jk.math.Matrix44._init(self)
	return self
end

function jk.math.Matrix44:forZero()
	do return _g.jk.math.Matrix44:forValues({
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0
	}) end
end

function jk.math.Matrix44:forIdentity()
	do return _g.jk.math.Matrix44:forValues({
		1.0,
		0.0,
		0.0,
		0.0,
		0.0,
		1.0,
		0.0,
		0.0,
		0.0,
		0.0,
		1.0,
		0.0,
		0.0,
		0.0,
		0.0,
		1.0
	}) end
end

function jk.math.Matrix44:forTranslate(translateX, translateY, translateZ)
	do return _g.jk.math.Matrix44:forValues({
		1.0,
		0.0,
		0.0,
		translateX,
		0.0,
		1.0,
		0.0,
		translateY,
		0.0,
		0.0,
		1.0,
		translateZ,
		0.0,
		0.0,
		0.0,
		1.0
	}) end
end

function jk.math.Matrix44:forXRotation(angle)
	local c = _g.jk.math.Math:cos(angle)
	local s = _g.jk.math.Math:sin(angle)
	do return _g.jk.math.Matrix44:forValues({
		1.0,
		0.0,
		0.0,
		0.0,
		0.0,
		c,
		-s,
		0.0,
		0.0,
		s,
		c,
		0.0,
		0.0,
		0.0,
		0.0,
		1.0
	}) end
end

function jk.math.Matrix44:forYRotation(angle)
	local c = _g.jk.math.Math:cos(angle)
	local s = _g.jk.math.Math:sin(angle)
	do return _g.jk.math.Matrix44:forValues({
		c,
		0.0,
		s,
		0.0,
		0.0,
		1.0,
		0.0,
		0.0,
		-s,
		0.0,
		c,
		0.0,
		0.0,
		0.0,
		0.0,
		1.0
	}) end
end

function jk.math.Matrix44:forZRotation(angle)
	local c = _g.jk.math.Math:cos(angle)
	local s = _g.jk.math.Math:sin(angle)
	do return _g.jk.math.Matrix44:forValues({
		c,
		-s,
		0.0,
		0.0,
		s,
		c,
		0.0,
		0.0,
		0.0,
		0.0,
		1.0,
		0.0,
		0.0,
		0.0,
		0.0,
		1.0
	}) end
end

function jk.math.Matrix44:forSkew(vx, vy, vz)
	do return _g.jk.math.Matrix44:forValues({
		1.0,
		vx,
		vx,
		0.0,
		vy,
		1.0,
		vy,
		0.0,
		vz,
		vz,
		1.0,
		0.0,
		0.0,
		0.0,
		0.0,
		1.0
	}) end
end

function jk.math.Matrix44:forXRotationWithCenter(angle, centerX, centerY, centerZ)
	local translate = _g.jk.math.Matrix44:forTranslate(centerX, centerY, centerZ)
	local rotate = _g.jk.math.Matrix44:forXRotation(angle)
	local translateBack = _g.jk.math.Matrix44:forTranslate(-centerX, -centerY, -centerZ)
	local translatedRotated = _g.jk.math.Matrix44:multiplyMatrix(translate, rotate)
	do return _g.jk.math.Matrix44:multiplyMatrix(translatedRotated, translateBack) end
end

function jk.math.Matrix44:forYRotationWithCenter(angle, centerX, centerY, centerZ)
	local translate = _g.jk.math.Matrix44:forTranslate(centerX, centerY, centerZ)
	local rotate = _g.jk.math.Matrix44:forYRotation(angle)
	local translateBack = _g.jk.math.Matrix44:forTranslate(-centerX, -centerY, -centerZ)
	local translatedRotated = _g.jk.math.Matrix44:multiplyMatrix(translate, rotate)
	do return _g.jk.math.Matrix44:multiplyMatrix(translatedRotated, translateBack) end
end

function jk.math.Matrix44:forZRotationWithCenter(angle, centerX, centerY, centerZ)
	local translate = _g.jk.math.Matrix44:forTranslate(centerX, centerY, centerZ)
	local rotate = _g.jk.math.Matrix44:forZRotation(angle)
	local translateBack = _g.jk.math.Matrix44:forTranslate(-centerX, -centerY, -centerZ)
	local translatedRotated = _g.jk.math.Matrix44:multiplyMatrix(translate, rotate)
	do return _g.jk.math.Matrix44:multiplyMatrix(translatedRotated, translateBack) end
end

function jk.math.Matrix44:forScale(scaleX, scaleY, scaleZ)
	do return _g.jk.math.Matrix44:forValues({
		scaleX,
		0.0,
		0.0,
		0.0,
		0.0,
		scaleY,
		0.0,
		0.0,
		0.0,
		0.0,
		scaleZ,
		0.0,
		0.0,
		0.0,
		0.0,
		1.0
	}) end
end

function jk.math.Matrix44:forFlipXY(flipXY)
	if flipXY then
		do return _g.jk.math.Matrix44:forValues({
			1.0,
			0.0,
			0.0,
			0.0,
			0.0,
			1.0,
			0.0,
			0.0,
			0.0,
			0.0,
			-1.0,
			0.0,
			0.0,
			0.0,
			0.0,
			1.0
		}) end
	end
	do return _g.jk.math.Matrix44:forIdentity() end
end

function jk.math.Matrix44:forFlipXZ(flipXZ)
	if flipXZ then
		do return _g.jk.math.Matrix44:forValues({
			1.0,
			0.0,
			0.0,
			0.0,
			0.0,
			-1.0,
			0.0,
			0.0,
			0.0,
			0.0,
			1.0,
			0.0,
			0.0,
			0.0,
			0.0,
			1.0
		}) end
	end
	do return _g.jk.math.Matrix44:forIdentity() end
end

function jk.math.Matrix44:forFlipYZ(flipYZ)
	if flipYZ then
		do return _g.jk.math.Matrix44:forValues({
			-1.0,
			0.0,
			0.0,
			0.0,
			0.0,
			1.0,
			0.0,
			0.0,
			0.0,
			0.0,
			1.0,
			0.0,
			0.0,
			0.0,
			0.0,
			1.0
		}) end
	end
	do return _g.jk.math.Matrix44:forIdentity() end
end

function jk.math.Matrix44:forValues(mv)
	local v = _g.jk.math.Matrix44._construct0(_g.jk.math.Matrix44._create())
	local i = 0
	do
		i = 0
		while i < 16 do
			if i >= #mv then
				v.v[i + 1] = 0.0
			else
				v.v[i + 1] = mv[i + 1]
			end
			do i = i + 1 end
		end
	end
	do return v end
end

function jk.math.Matrix44:multiplyScalar(v, mm)
	do return _g.jk.math.Matrix44:forValues({
		mm.v[0 + 1] * v,
		mm.v[1 + 1] * v,
		mm.v[2 + 1] * v,
		mm.v[3 + 1] * v,
		mm.v[4 + 1] * v,
		mm.v[5 + 1] * v,
		mm.v[6 + 1] * v,
		mm.v[7 + 1] * v,
		mm.v[8 + 1] * v,
		mm.v[9 + 1] * v,
		mm.v[10 + 1] * v,
		mm.v[11 + 1] * v,
		mm.v[12 + 1] * v,
		mm.v[3 + 1] * v,
		mm.v[14 + 1] * v,
		mm.v[15 + 1] * v
	}) end
end

function jk.math.Matrix44:multiplyMatrix(a, b)
	local matrix44 = _g.jk.math.Matrix44._construct0(_g.jk.math.Matrix44._create())
	matrix44.v[0 + 1] = a.v[0 + 1] * b.v[0 + 1] + a.v[1 + 1] * b.v[4 + 1] + a.v[2 + 1] * b.v[8 + 1] + a.v[3 + 1] * b.v[12 + 1]
	matrix44.v[1 + 1] = a.v[0 + 1] * b.v[1 + 1] + a.v[1 + 1] * b.v[5 + 1] + a.v[2 + 1] * b.v[9 + 1] + a.v[3 + 1] * b.v[13 + 1]
	matrix44.v[2 + 1] = a.v[0 + 1] * b.v[2 + 1] + a.v[1 + 1] * b.v[6 + 1] + a.v[2 + 1] * b.v[10 + 1] + a.v[3 + 1] * b.v[14 + 1]
	matrix44.v[3 + 1] = a.v[0 + 1] * b.v[3 + 1] + a.v[1 + 1] * b.v[7 + 1] + a.v[2 + 1] * b.v[11 + 1] + a.v[3 + 1] * b.v[15 + 1]
	matrix44.v[4 + 1] = a.v[4 + 1] * b.v[0 + 1] + a.v[5 + 1] * b.v[4 + 1] + a.v[6 + 1] * b.v[8 + 1] + a.v[7 + 1] * b.v[12 + 1]
	matrix44.v[5 + 1] = a.v[4 + 1] * b.v[1 + 1] + a.v[5 + 1] * b.v[5 + 1] + a.v[6 + 1] * b.v[9 + 1] + a.v[7 + 1] * b.v[13 + 1]
	matrix44.v[6 + 1] = a.v[4 + 1] * b.v[2 + 1] + a.v[5 + 1] * b.v[6 + 1] + a.v[6 + 1] * b.v[10 + 1] + a.v[7 + 1] * b.v[14 + 1]
	matrix44.v[7 + 1] = a.v[4 + 1] * b.v[3 + 1] + a.v[5 + 1] * b.v[7 + 1] + a.v[6 + 1] * b.v[11 + 1] + a.v[7 + 1] * b.v[15 + 1]
	matrix44.v[8 + 1] = a.v[8 + 1] * b.v[0 + 1] + a.v[9 + 1] * b.v[4 + 1] + a.v[10 + 1] * b.v[8 + 1] + a.v[11 + 1] * b.v[12 + 1]
	matrix44.v[9 + 1] = a.v[8 + 1] * b.v[1 + 1] + a.v[9 + 1] * b.v[5 + 1] + a.v[10 + 1] * b.v[9 + 1] + a.v[11 + 1] * b.v[13 + 1]
	matrix44.v[10 + 1] = a.v[8 + 1] * b.v[2 + 1] + a.v[9 + 1] * b.v[6 + 1] + a.v[10 + 1] * b.v[10 + 1] + a.v[11 + 1] * b.v[14 + 1]
	matrix44.v[11 + 1] = a.v[8 + 1] * b.v[3 + 1] + a.v[9 + 1] * b.v[7 + 1] + a.v[10 + 1] * b.v[11 + 1] + a.v[11 + 1] * b.v[15 + 1]
	matrix44.v[12 + 1] = a.v[12 + 1] * b.v[0 + 1] + a.v[13 + 1] * b.v[4 + 1] + a.v[14 + 1] * b.v[8 + 1] + a.v[15 + 1] * b.v[12 + 1]
	matrix44.v[13 + 1] = a.v[12 + 1] * b.v[1 + 1] + a.v[13 + 1] * b.v[5 + 1] + a.v[14 + 1] * b.v[9 + 1] + a.v[15 + 1] * b.v[13 + 1]
	matrix44.v[14 + 1] = a.v[12 + 1] * b.v[2 + 1] + a.v[13 + 1] * b.v[6 + 1] + a.v[14 + 1] * b.v[10 + 1] + a.v[15 + 1] * b.v[14 + 1]
	matrix44.v[15 + 1] = a.v[12 + 1] * b.v[3 + 1] + a.v[13 + 1] * b.v[7 + 1] + a.v[14 + 1] * b.v[11 + 1] + a.v[15 + 1] * b.v[15 + 1]
	do return matrix44 end
end

function jk.math.Matrix44:multiplyVector(a, b)
	local x = a.v[0 + 1] * b.x + a.v[1 + 1] * b.y + a.v[2 + 1] * b.z + a.v[3 + 1] * 1.0
	local y = a.v[4 + 1] * b.x + a.v[5 + 1] * b.y + a.v[6 + 1] * b.z + a.v[7 + 1] * 1.0
	local z = a.v[8 + 1] * b.x + a.v[9 + 1] * b.y + a.v[10 + 1] * b.z + a.v[11 + 1] * 1.0
	do return _g.jk.math.Vector3:create(x, y, z) end
end

jk.math.Matrix33 = {}
jk.math.Matrix33.__index = jk.math.Matrix33
_vm:set_metatable(jk.math.Matrix33, {})

function jk.math.Matrix33._create()
	local v = _vm:set_metatable({}, jk.math.Matrix33)
	return v
end

function jk.math.Matrix33:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.math.Matrix33'
	self['_isType.jk.math.Matrix33'] = true
	self.v = _vm:allocate_array(9)
end

function jk.math.Matrix33:_construct0()
	jk.math.Matrix33._init(self)
	return self
end

function jk.math.Matrix33:forZero()
	do return _g.jk.math.Matrix33:forValues({
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0,
		0.0
	}) end
end

function jk.math.Matrix33:forIdentity()
	do return _g.jk.math.Matrix33:forValues({
		1.0,
		0.0,
		0.0,
		0.0,
		1.0,
		0.0,
		0.0,
		0.0,
		1.0
	}) end
end

function jk.math.Matrix33:invertMatrix(m)
	local d = m.v[0 + 1] * m.v[4 + 1] * m.v[8 + 1] + m.v[3 + 1] * m.v[7 + 1] * m.v[2 + 1] + m.v[6 + 1] * m.v[1 + 1] * m.v[5 + 1] - m.v[0 + 1] * m.v[7 + 1] * m.v[5 + 1] - m.v[3 + 1] * m.v[1 + 1] * m.v[8 + 1] - m.v[6 + 1] * m.v[4 + 1] * m.v[2 + 1]
	local v = _g.jk.math.Matrix33._construct0(_g.jk.math.Matrix33._create())
	v.v[0 + 1] = (m.v[4 + 1] * m.v[8 + 1] - m.v[7 + 1] * m.v[5 + 1]) / d
	v.v[3 + 1] = (m.v[6 + 1] * m.v[5 + 1] - m.v[3 + 1] * m.v[8 + 1]) / d
	v.v[6 + 1] = (m.v[3 + 1] * m.v[7 + 1] - m.v[6 + 1] * m.v[4 + 1]) / d
	v.v[1 + 1] = (m.v[7 + 1] * m.v[2 + 1] - m.v[1 + 1] * m.v[8 + 1]) / d
	v.v[4 + 1] = (m.v[0 + 1] * m.v[8 + 1] - m.v[6 + 1] * m.v[2 + 1]) / d
	v.v[7 + 1] = (m.v[6 + 1] * m.v[1 + 1] - m.v[0 + 1] * m.v[7 + 1]) / d
	v.v[2 + 1] = (m.v[1 + 1] * m.v[5 + 1] - m.v[4 + 1] * m.v[2 + 1]) / d
	v.v[5 + 1] = (m.v[3 + 1] * m.v[2 + 1] - m.v[0 + 1] * m.v[5 + 1]) / d
	v.v[8 + 1] = (m.v[0 + 1] * m.v[4 + 1] - m.v[3 + 1] * m.v[1 + 1]) / d
	do return v end
end

function jk.math.Matrix33:forTranslate(translateX, translateY)
	do return _g.jk.math.Matrix33:forValues({
		1.0,
		0.0,
		translateX,
		0.0,
		1.0,
		translateY,
		0.0,
		0.0,
		1.0
	}) end
end

function jk.math.Matrix33:forRotation(angle)
	local c = _g.jk.math.Math:cos(angle)
	local s = _g.jk.math.Math:sin(angle)
	do return _g.jk.math.Matrix33:forValues({
		c,
		s,
		0.0,
		-s,
		c,
		0.0,
		0.0,
		0.0,
		1.0
	}) end
end

function jk.math.Matrix33:forRotationWithCenter(angle, centerX, centerY)
	local translate = _g.jk.math.Matrix33:forTranslate(centerX, centerY)
	local rotate = _g.jk.math.Matrix33:forRotation(angle)
	local translateBack = _g.jk.math.Matrix33:forTranslate(-centerX, -centerY)
	local translatedRotated = _g.jk.math.Matrix33:multiplyMatrix(translate, rotate)
	do return _g.jk.math.Matrix33:multiplyMatrix(translatedRotated, translateBack) end
end

function jk.math.Matrix33:forSkew(skewX, skewY)
	do return _g.jk.math.Matrix33:forValues({
		1.0,
		skewX,
		0.0,
		skewY,
		1.0,
		0.0,
		0.0,
		0.0,
		1.0
	}) end
end

function jk.math.Matrix33:forScale(scaleX, scaleY)
	do return _g.jk.math.Matrix33:forValues({
		scaleX,
		0.0,
		0.0,
		0.0,
		scaleY,
		0.0,
		0.0,
		0.0,
		1.0
	}) end
end

function jk.math.Matrix33:forFlip(flipX, flipY)
	local xmat33 = _g.jk.math.Matrix33:forValues({
		1.0,
		0.0,
		0.0,
		0.0,
		-1.0,
		0.0,
		0.0,
		0.0,
		1.0
	})
	local ymat33 = _g.jk.math.Matrix33:forValues({
		-1.0,
		0.0,
		0.0,
		0.0,
		1.0,
		0.0,
		0.0,
		0.0,
		1.0
	})
	if flipX and flipY then
		do return _g.jk.math.Matrix33:multiplyMatrix(xmat33, ymat33) end
	elseif flipX then
		do return xmat33 end
	elseif flipY then
		do return ymat33 end
	end
	do return _g.jk.math.Matrix33:forIdentity() end
end

function jk.math.Matrix33:forValues(mv)
	local v = _g.jk.math.Matrix33._construct0(_g.jk.math.Matrix33._create())
	local i = 0
	do
		i = 0
		while i < 9 do
			if i >= #mv then
				v.v[i + 1] = 0.0
			else
				v.v[i + 1] = mv[i + 1]
			end
			do i = i + 1 end
		end
	end
	do return v end
end

function jk.math.Matrix33:multiplyScalar(v, mm)
	local mat33 = _g.jk.math.Matrix33:forZero()
	mat33.v[0 + 1] = mm.v[0 + 1] * v
	mat33.v[1 + 1] = mm.v[1 + 1] * v
	mat33.v[2 + 1] = mm.v[2 + 1] * v
	mat33.v[3 + 1] = mm.v[3 + 1] * v
	mat33.v[4 + 1] = mm.v[4 + 1] * v
	mat33.v[5 + 1] = mm.v[5 + 1] * v
	mat33.v[6 + 1] = mm.v[6 + 1] * v
	mat33.v[7 + 1] = mm.v[7 + 1] * v
	mat33.v[8 + 1] = mm.v[8 + 1] * v
	do return mat33 end
end

function jk.math.Matrix33:multiplyMatrix(a, b)
	local matrix33 = _g.jk.math.Matrix33._construct0(_g.jk.math.Matrix33._create())
	matrix33.v[0 + 1] = a.v[0 + 1] * b.v[0 + 1] + a.v[1 + 1] * b.v[3 + 1] + a.v[2 + 1] * b.v[6 + 1]
	matrix33.v[1 + 1] = a.v[0 + 1] * b.v[1 + 1] + a.v[1 + 1] * b.v[4 + 1] + a.v[2 + 1] * b.v[7 + 1]
	matrix33.v[2 + 1] = a.v[0 + 1] * b.v[2 + 1] + a.v[1 + 1] * b.v[5 + 1] + a.v[2 + 1] * b.v[8 + 1]
	matrix33.v[3 + 1] = a.v[3 + 1] * b.v[0 + 1] + a.v[4 + 1] * b.v[3 + 1] + a.v[5 + 1] * b.v[6 + 1]
	matrix33.v[4 + 1] = a.v[3 + 1] * b.v[1 + 1] + a.v[4 + 1] * b.v[4 + 1] + a.v[5 + 1] * b.v[7 + 1]
	matrix33.v[5 + 1] = a.v[3 + 1] * b.v[2 + 1] + a.v[4 + 1] * b.v[5 + 1] + a.v[5 + 1] * b.v[8 + 1]
	matrix33.v[6 + 1] = a.v[6 + 1] * b.v[0 + 1] + a.v[7 + 1] * b.v[3 + 1] + a.v[8 + 1] * b.v[6 + 1]
	matrix33.v[7 + 1] = a.v[6 + 1] * b.v[1 + 1] + a.v[7 + 1] * b.v[4 + 1] + a.v[8 + 1] * b.v[7 + 1]
	matrix33.v[8 + 1] = a.v[6 + 1] * b.v[2 + 1] + a.v[7 + 1] * b.v[5 + 1] + a.v[8 + 1] * b.v[8 + 1]
	do return matrix33 end
end

function jk.math.Matrix33:multiplyVector(a, b)
	local x = a.v[0 + 1] * b.x + a.v[1 + 1] * b.y + a.v[2 + 1] * 1.0
	local y = a.v[3 + 1] * b.x + a.v[4 + 1] * b.y + a.v[5 + 1] * 1.0
	do return _g.jk.math.Vector2:create(x, y) end
end

jk.math.Math = {}
jk.math.Math.__index = jk.math.Math
_vm:set_metatable(jk.math.Math, {})

jk.math.Math.M_PI = 3.14159265358979
jk.math.Math.M_PI_2 = 1.5707963267949
jk.math.Math.M_PI_4 = 0.78539816339745
jk.math.Math.M_1_PI = 0.31830988618379
jk.math.Math.M_2_PI = 0.63661977236758
jk.math.Math.M_2_SQRTPI = 1.12837916709551
jk.math.Math.M_SQRT2 = 1.4142135623731
jk.math.Math.M_SQRT1_2 = 0.70710678118655
jk.math.Math.HALF_AWAY_FROM_ZERO = 0
jk.math.Math.HALF_TOWARD_ZERO = 1
jk.math.Math.HALF_NEAREST_EVEN = 2
jk.math.Math.HALF_POSITIVE = 3
jk.math.Math.HALF_NEGATIVE = 4

function jk.math.Math._create()
	local v = _vm:set_metatable({}, jk.math.Math)
	return v
end

function jk.math.Math:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.math.Math'
	self['_isType.jk.math.Math'] = true
end

function jk.math.Math:_construct0()
	jk.math.Math._init(self)
	return self
end

function jk.math.Math:toRadians(d)
	do return _g.jk.math.Math.M_PI / 180 * d end
end

function jk.math.Math:toDegrees(r)
	do return _g.jk.math.Math.M_PI * r / 180 end
end

function jk.math.Math:abs(d)
	_io:write_to_stdout("[jk.math.Math.abs] (Math.sling:154:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:absFloat(f)
	_io:write_to_stdout("[jk.math.Math.absFloat] (Math.sling:184:3): Not implemented" .. "\n")
	do return 0.0 end
end

function jk.math.Math:absInt32(i)
	_io:write_to_stdout("[jk.math.Math.absInt32] (Math.sling:214:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:absInt64(l)
	_io:write_to_stdout("[jk.math.Math.absInt64] (Math.sling:244:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:acos(d)
	_io:write_to_stdout("[jk.math.Math.acos] (Math.sling:274:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:asin(d)
	_io:write_to_stdout("[jk.math.Math.asin] (Math.sling:304:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:atan(d)
	_io:write_to_stdout("[jk.math.Math.atan] (Math.sling:334:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:atan2(y, x)
	_io:write_to_stdout("[jk.math.Math.atan2] (Math.sling:364:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:ceil(d)
	_io:write_to_stdout("[jk.math.Math.ceil] (Math.sling:394:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:cos(d)
	_io:write_to_stdout("[jk.math.Math.cos] (Math.sling:424:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:cosh(d)
	_io:write_to_stdout("[jk.math.Math.cosh] (Math.sling:454:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:exp(d)
	_io:write_to_stdout("[jk.math.Math.exp] (Math.sling:484:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:floor(d)
	_io:write_to_stdout("[jk.math.Math.floor] (Math.sling:514:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:remainder(x, y)
	_io:write_to_stdout("[jk.math.Math.remainder] (Math.sling:543:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:log(d)
	_io:write_to_stdout("[jk.math.Math.log] (Math.sling:573:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:log10(d)
	_io:write_to_stdout("[jk.math.Math.log10] (Math.sling:603:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:max(d1, d2)
	_io:write_to_stdout("[jk.math.Math.max] (Math.sling:639:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:maxFloat(f1, f2)
	_io:write_to_stdout("[jk.math.Math.maxFloat] (Math.sling:675:3): Not implemented" .. "\n")
	do return 0.0 end
end

function jk.math.Math:maxInt32(i1, i2)
	_io:write_to_stdout("[jk.math.Math.maxInt32] (Math.sling:711:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:maxInt64(l1, l2)
	_io:write_to_stdout("[jk.math.Math.maxInt64] (Math.sling:747:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:min(d1, d2)
	_io:write_to_stdout("[jk.math.Math.min] (Math.sling:783:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:minFloat(f1, f2)
	_io:write_to_stdout("[jk.math.Math.minFloat] (Math.sling:819:3): Not implemented" .. "\n")
	do return 0.0 end
end

function jk.math.Math:minInt32(i1, i2)
	_io:write_to_stdout("[jk.math.Math.minInt32] (Math.sling:855:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:minInt64(l1, l2)
	_io:write_to_stdout("[jk.math.Math.minInt64] (Math.sling:891:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:pow(x, y)
	_io:write_to_stdout("[jk.math.Math.pow] (Math.sling:921:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:round(n)
	_io:write_to_stdout("[jk.math.Math.round] (Math.sling:956:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:roundWithMode(d, mode)
	local fd = _g.jk.math.Math:floor(d)
	local dp = d - fd
	if dp < 0.5 then
		do return fd end
	end
	if dp > 0.5 then
		do return _g.jk.math.Math:ceil(d) end
	end
	if mode == _g.jk.math.Math.HALF_AWAY_FROM_ZERO then
		if d < 0 then
			do return fd end
		end
		do return _g.jk.math.Math:ceil(d) end
	end
	if mode == _g.jk.math.Math.HALF_TOWARD_ZERO then
		if d < 0 then
			do return _g.jk.math.Math:ceil(d) end
		end
		do return fd end
	end
	if mode == _g.jk.math.Math.HALF_NEAREST_EVEN then
		if _util:convert_to_integer(_util:convert_to_integer(fd) % 2) == 0 then
			do return fd end
		end
		do return _g.jk.math.Math:ceil(d) end
	end
	if mode == _g.jk.math.Math.HALF_POSITIVE then
		do return _g.jk.math.Math:ceil(d) end
	end
	if mode == _g.jk.math.Math.HALF_NEGATIVE then
		do return fd end
	end
	do return d end
end

function jk.math.Math:sin(d)
	_io:write_to_stdout("[jk.math.Math.sin] (Math.sling:1056:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:sinh(d)
	_io:write_to_stdout("[jk.math.Math.sinh] (Math.sling:1086:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:sqrt(d)
	_io:write_to_stdout("[jk.math.Math.sqrt] (Math.sling:1116:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:tan(d)
	_io:write_to_stdout("[jk.math.Math.tan] (Math.sling:1146:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:tanh(d)
	_io:write_to_stdout("[jk.math.Math.tanh] (Math.sling:1176:3): Not implemented" .. "\n")
	do return 0 end
end

function jk.math.Math:computeQuinticInEasing(t, b, c, d)
	local x = t / d
	do return c * x * x * x * x * x + b end
end

function jk.math.Math:computeQuinticOutEasing(t, b, c, d)
	local x = t / d - 1
	do return c * (x * x * x * x * x + 1) + b end
end

function jk.math.Math:computeQuinticInOutEasing(t, b, c, d)
	local x = t / d / 2
	if x < 1.0 then
		do return c / 2 * x * x * x * x * x + b end
	end
	x = x - 2
	do return c / 2 * (x * x * x * x * x + 2) + b end
end
jk = jk or {}

jk.random = jk.random or {}

jk.random.Random = {}
jk.random.Random.__index = jk.random.Random
_vm:set_metatable(jk.random.Random, {})

jk.random.Random.instance = nil

function jk.random.Random._create()
	local v = _vm:set_metatable({}, jk.random.Random)
	return v
end

function jk.random.Random:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.random.Random'
	self['_isType.jk.random.Random'] = true
	self.random = nil
end

function jk.random.Random:getSushiRandom()
	if not (self.random ~= nil) then
		do self:setSeed(_g.jk.time.SystemClock:asUTCSeconds()) end
	end
	do return self.random end
end

function jk.random.Random:getSharedInstance()
	if not (_g.jk.random.Random.instance ~= nil) then
		_g.jk.random.Random.instance = _g.jk.random.Random._construct0(_g.jk.random.Random._create())
	end
	do return _g.jk.random.Random.instance end
end

function jk.random.Random:_construct0()
	jk.random.Random._init(self)
	return self
end

function jk.random.Random:_construct1(seed)
	jk.random.Random._init(self)
	do self:setSeed(seed) end
	return self
end

function jk.random.Random:setSeed(seed)
	self.random = _util:create_random_number_generator(seed)
end

function jk.random.Random:nextBoolean()
	if _util:convert_to_integer(self:nextInt1() % 2) == 0 then
		do return false end
	end
	do return true end
end

function jk.random.Random:nextInt1()
	local random = self:getSushiRandom()
	do return _util:create_random_number(random) end
end

function jk.random.Random:nextInt2(n)
	do return _util:convert_to_integer(self:nextInt1() % n) end
end

function jk.random.Random:nextInt3(s, e)
	do return s + _util:convert_to_integer(self:nextInt1() % (e - s)) end
end

function jk.random.Random:nextBytes(buf)
	local sz = #buf
	do
		local n = 0
		while n < sz do
			buf[n + 1] = self:nextInt3(-127, 128)
			do n = n + 1 end
		end
	end
end

function jk.random.Random:nextDouble()
	local n = self:nextInt2(2147483647)
	do return n / 2147483647.0 end
end

function jk.random.Random:nextFloat()
	local n = self:nextInt2(2147483647)
	do return n / 2147483647 end
end
jk = jk or {}

jk.env = jk.env or {}

jk.env.TemporaryDirectory = {}
jk.env.TemporaryDirectory.__index = jk.env.TemporaryDirectory
_vm:set_metatable(jk.env.TemporaryDirectory, {})

function jk.env.TemporaryDirectory._create()
	local v = _vm:set_metatable({}, jk.env.TemporaryDirectory)
	return v
end

function jk.env.TemporaryDirectory:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.env.TemporaryDirectory'
	self['_isType.jk.env.TemporaryDirectory'] = true
end

function jk.env.TemporaryDirectory:_construct0()
	jk.env.TemporaryDirectory._init(self)
	return self
end

function jk.env.TemporaryDirectory:create()
	do return _g.jk.env.TemporaryDirectory:forDirectory(nil) end
end

function jk.env.TemporaryDirectory:forDirectory(dir)
	local ff = _g.jk.env.TemporaryFile:forDirectory(dir, nil)
	if not (ff ~= nil) then
		do return nil end
	end
	do ff:remove() end
	do ff:createDirectoryRecursive() end
	if not ff:isDirectory() then
		do return nil end
	end
	do return ff end
end

jk.env.ExternalCommand = {}
jk.env.ExternalCommand.__index = jk.env.ExternalCommand
_vm:set_metatable(jk.env.ExternalCommand, {})

function jk.env.ExternalCommand._create()
	local v = _vm:set_metatable({}, jk.env.ExternalCommand)
	return v
end

function jk.env.ExternalCommand:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.env.ExternalCommand'
	self['_isType.jk.env.ExternalCommand'] = true
end

function jk.env.ExternalCommand:_construct0()
	jk.env.ExternalCommand._init(self)
	return self
end

function jk.env.ExternalCommand:findInPath(command)
	if not (command ~= nil) then
		do return nil end
	end
	do
		local path = _g.jk.env.EnvironmentVariable:get("PATH")
		if not _g.jk.lang.String:isNotEmpty(path) then
			do return nil end
		end
		do
			local separator = 58
			if _g.jk.os.OS:isWindows() then
				separator = 59
			end
			do
				local array = _g.jk.lang.String:split(path, separator, 0)
				if array ~= nil then
					local n = 0
					local m = _g.jk.lang.Vector:getSize(array)
					do
						n = 0
						while n < m do
							local dir = array[n + 1]
							if dir ~= nil then
								local pp = _g.jk.fs.File:forPath(dir):rawEntry(command):asExecutable()
								if pp:isFile() then
									do return pp end
								end
							end
							do n = n + 1 end
						end
					end
				end
				do return nil end
			end
		end
	end
end

jk.env.CommonPath = {}
jk.env.CommonPath.__index = jk.env.CommonPath
_vm:set_metatable(jk.env.CommonPath, {})

function jk.env.CommonPath._create()
	local v = _vm:set_metatable({}, jk.env.CommonPath)
	return v
end

function jk.env.CommonPath:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.env.CommonPath'
	self['_isType.jk.env.CommonPath'] = true
end

function jk.env.CommonPath:_construct0()
	jk.env.CommonPath._init(self)
	return self
end

function jk.env.CommonPath:getTemporaryDirectory()
	if _g.jk.os.OS:isLinux() or _g.jk.os.OS:isMacOS() then
		do return _g.jk.fs.File:forPath("/tmp") end
	end
	_io:write_to_stdout("[jk.env.CommonPath.getTemporaryDirectory] (CommonPath.sling:45:3): Not implemented" .. "\n")
	do return _g.jk.fs.FileInvalid._construct0(_g.jk.fs.FileInvalid._create()) end
end

function jk.env.CommonPath:getHomeDirectory()
	local dirname = _g.jk.env.EnvironmentVariable:get("HOME")
	if _g.jk.lang.String:isNotEmpty(dirname) then
		do return _g.jk.fs.File:forPath(dirname) end
	end
	do return nil end
end

function jk.env.CommonPath:getAppDirectory()
	local program = _vm:get_program_path()
	if not _g.jk.lang.String:isNotEmpty(program) then
		do return nil end
	end
	do
		local pf = _g.jk.fs.File:forPath(program)
		if not (pf ~= nil) then
			do return nil end
		end
		do return pf:getParent() end
	end
end

function jk.env.CommonPath:getCodeFileForObject(oo)
	if not (oo ~= nil) then
		do return nil end
	end
	do return nil end
end

function jk.env.CommonPath:getProgramFilesDirectory()
	do return nil end
end

function jk.env.CommonPath:getProgramFilesX86Directory()
	do return nil end
end

function jk.env.CommonPath:getApplicationsDirectory()
	if _g.jk.os.OS:isMacOS() then
		local v = _g.jk.fs.File:forPath("/Applications")
		if v:isDirectory() == false then
			v = nil
		end
		do return v end
	end
	do return nil end
end

jk.env.EnvironmentVariable = {}
jk.env.EnvironmentVariable.__index = jk.env.EnvironmentVariable
_vm:set_metatable(jk.env.EnvironmentVariable, {})

function jk.env.EnvironmentVariable._create()
	local v = _vm:set_metatable({}, jk.env.EnvironmentVariable)
	return v
end

function jk.env.EnvironmentVariable:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.env.EnvironmentVariable'
	self['_isType.jk.env.EnvironmentVariable'] = true
end

function jk.env.EnvironmentVariable:_construct0()
	jk.env.EnvironmentVariable._init(self)
	return self
end

function jk.env.EnvironmentVariable:getAll()
	local v = {}
	local envs = _os:get_all_environment_variables()
	if envs ~= nil then
		if envs ~= nil then
			local n = 0
			local m = _g.jk.lang.Vector:getSize(envs)
			do
				n = 0
				while n < m do
					local env = envs[n + 1]
					if env ~= nil then
						local comps = _g.jk.lang.String:split(env, 61, 2)
						local key = _g.jk.lang.Vector:get(comps, 0)
						local val = _g.jk.lang.Vector:get(comps, 1)
						if not (key ~= nil) then
							goto _continue1
						end
						if not (val ~= nil) then
							val = ""
						end
						do _g.jk.lang.Map:set(v, key, val) end
					end
					::_continue1::
					do n = n + 1 end
				end
			end
		end
	end
	do return v end
end

function jk.env.EnvironmentVariable:get(key)
	if not (key ~= nil) then
		do return nil end
	end
	do
		local v = nil
		do v = _os:get_environment_variable(key) end
		do return v end
	end
end

function jk.env.EnvironmentVariable:set(key, val)
	if not (key ~= nil) then
		do return end
	end
	_io:write_to_stdout("[jk.env.EnvironmentVariable.set] (EnvironmentVariable.sling:135:3): Not implemented" .. "\n")
end

function jk.env.EnvironmentVariable:unset(key)
	_io:write_to_stdout("[jk.env.EnvironmentVariable.unset] (EnvironmentVariable.sling:141:2): Not implemented" .. "\n")
end

jk.env.TemporaryFile = {}
jk.env.TemporaryFile.__index = jk.env.TemporaryFile
_vm:set_metatable(jk.env.TemporaryFile, {})

function jk.env.TemporaryFile._create()
	local v = _vm:set_metatable({}, jk.env.TemporaryFile)
	return v
end

function jk.env.TemporaryFile:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'jk.env.TemporaryFile'
	self['_isType.jk.env.TemporaryFile'] = true
end

function jk.env.TemporaryFile:_construct0()
	jk.env.TemporaryFile._init(self)
	return self
end

function jk.env.TemporaryFile:create(extension)
	do return _g.jk.env.TemporaryFile:forDirectory(nil, extension) end
end

function jk.env.TemporaryFile:forDirectory(dir, extension)
	local tmpdir = dir
	if tmpdir == nil then
		tmpdir = _g.jk.env.CommonPath:getTemporaryDirectory()
	end
	if tmpdir == nil then
		do return nil end
	end
	do tmpdir:createDirectoryRecursive() end
	if tmpdir:isDirectory() == false then
		do return nil end
	end
	do
		local v = nil
		local n = 0
		local rnd = _g.jk.random.Random._construct0(_g.jk.random.Random._create())
		while n < 100 do
			local id = "_tmp_" .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(_g.jk.time.SystemClock:asSeconds())) .. _g.jk.lang.String:safeString(_g.jk.lang.String:forInteger(_util:convert_to_integer(rnd:nextInt1() % 1000000)))
			if extension == nil or _g.jk.lang.String:getLength(extension) < 1 then
				id = _g.jk.lang.String:safeString(id) .. _g.jk.lang.String:safeString(extension)
			end
			v = tmpdir:entry(id)
			if v:exists() == false then
				do v:touch() end
				do break end
			end
			do n = n + 1 end
		end
		if v ~= nil and v:isFile() == false then
			v = nil
		end
		do return v end
	end
end

function jk.env.TemporaryFile:forString(data)
	if not (data ~= nil) then
		do return nil end
	end
	do
		local v = _g.jk.env.TemporaryFile:create(nil)
		if not (v ~= nil) then
			do return nil end
		end
		if not v:setContentsUTF8(data) then
			do v:remove() end
			do return nil end
		end
		do return v end
	end
end

function jk.env.TemporaryFile:forBuffer(data)
	if not (data ~= nil) then
		do return nil end
	end
	do
		local v = _g.jk.env.TemporaryFile:create(nil)
		if not (v ~= nil) then
			do return nil end
		end
		if not v:setContentsBuffer(data) then
			do v:remove() end
			do return nil end
		end
		do return v end
	end
end
app = app or {}

app.NoteListDatabase = {}
app.NoteListDatabase.__index = app.NoteListDatabase
_vm:set_metatable(app.NoteListDatabase, {})

app.NoteListDatabase.NOTE = "note"

function app.NoteListDatabase._create()
	local v = _vm:set_metatable({}, app.NoteListDatabase)
	return v
end

function app.NoteListDatabase:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'app.NoteListDatabase'
	self['_isType.app.NoteListDatabase'] = true
	self.db = nil
end

function app.NoteListDatabase:_construct0()
	app.NoteListDatabase._init(self)
	return self
end

app.NoteListDatabase.Note = _g.jk.json.JSONObjectAdapter._create()
app.NoteListDatabase.Note.__index = app.NoteListDatabase.Note
_vm:set_metatable(app.NoteListDatabase.Note, {
	__index = _g.jk.json.JSONObjectAdapter
})

function app.NoteListDatabase.Note._create()
	local v = _vm:set_metatable({}, app.NoteListDatabase.Note)
	return v
end

function app.NoteListDatabase.Note:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'app.NoteListDatabase.Note'
	self['_isType.app.NoteListDatabase.Note'] = true
	self['_isType.jk.lang.StringObject'] = true
	self._id = nil
	self._name = nil
	self._description = nil
	self._timeStampAdded = nil
	self._timeStampLastUpdated = nil
end

function app.NoteListDatabase.Note:_construct0()
	app.NoteListDatabase.Note._init(self)
	do _g.jk.json.JSONObjectAdapter._construct0(self) end
	return self
end

function app.NoteListDatabase.Note:setId(value)
	self._id = value
	do return self end
end

function app.NoteListDatabase.Note:getId()
	do return self._id end
end

function app.NoteListDatabase.Note:setName(value)
	self._name = value
	do return self end
end

function app.NoteListDatabase.Note:getName()
	do return self._name end
end

function app.NoteListDatabase.Note:setDescription(value)
	self._description = value
	do return self end
end

function app.NoteListDatabase.Note:getDescription()
	do return self._description end
end

function app.NoteListDatabase.Note:setTimeStampAddedValue(value)
	do return self:setTimeStampAdded(_g.jk.lang.LongInteger:asObject(value)) end
end

function app.NoteListDatabase.Note:getTimeStampAddedValue()
	do return _g.jk.lang.LongInteger:asLong(self._timeStampAdded) end
end

function app.NoteListDatabase.Note:setTimeStampAdded(value)
	self._timeStampAdded = value
	do return self end
end

function app.NoteListDatabase.Note:getTimeStampAdded()
	do return self._timeStampAdded end
end

function app.NoteListDatabase.Note:setTimeStampLastUpdatedValue(value)
	do return self:setTimeStampLastUpdated(_g.jk.lang.LongInteger:asObject(value)) end
end

function app.NoteListDatabase.Note:getTimeStampLastUpdatedValue()
	do return _g.jk.lang.LongInteger:asLong(self._timeStampLastUpdated) end
end

function app.NoteListDatabase.Note:setTimeStampLastUpdated(value)
	self._timeStampLastUpdated = value
	do return self end
end

function app.NoteListDatabase.Note:getTimeStampLastUpdated()
	do return self._timeStampLastUpdated end
end

function app.NoteListDatabase.Note:toJsonObject()
	local v = _g.jk.lang.DynamicMap._construct0(_g.jk.lang.DynamicMap._create())
	if self._id ~= nil then
		do v:setObject("id", self:asJsonValue(self._id)) end
	end
	if self._name ~= nil then
		do v:setObject("name", self:asJsonValue(self._name)) end
	end
	if self._description ~= nil then
		do v:setObject("description", self:asJsonValue(self._description)) end
	end
	if self._timeStampAdded ~= nil then
		do v:setObject("timeStampAdded", self:asJsonValue(self._timeStampAdded)) end
	end
	if self._timeStampLastUpdated ~= nil then
		do v:setObject("timeStampLastUpdated", self:asJsonValue(self._timeStampLastUpdated)) end
	end
	do return v end
end

function app.NoteListDatabase.Note:fromJsonObject(o)
	local v = _vm:to_table_with_key(o, '_isType.jk.lang.DynamicMap')
	if not (v ~= nil) then
		do return false end
	end
	self._id = v:getString("id", nil)
	self._name = v:getString("name", nil)
	self._description = v:getString("description", nil)
	if v:get("timeStampAdded") ~= nil then
		self._timeStampAdded = _g.jk.lang.LongInteger:asObject(v:getLongInteger("timeStampAdded", 0))
	end
	if v:get("timeStampLastUpdated") ~= nil then
		self._timeStampLastUpdated = _g.jk.lang.LongInteger:asObject(v:getLongInteger("timeStampLastUpdated", 0))
	end
	do return true end
end

function app.NoteListDatabase.Note:fromJsonString(o)
	do return self:fromJsonObject(_g.jk.json.JSONParser:parse(o)) end
end

function app.NoteListDatabase.Note:toJsonString()
	do return _g.jk.json.JSONEncoder:encode(self:toJsonObject(), true, false) end
end

function app.NoteListDatabase.Note:toString()
	do return self:toJsonString() end
end

function app.NoteListDatabase.Note:forJsonString(o)
	local v = _g.app.NoteListDatabase.Note._construct0(_g.app.NoteListDatabase.Note._create())
	if not v:fromJsonString(o) then
		do return nil end
	end
	do return v end
end

function app.NoteListDatabase.Note:forJsonObject(o)
	local v = _g.app.NoteListDatabase.Note._construct0(_g.app.NoteListDatabase.Note._create())
	if not v:fromJsonObject(o) then
		do return nil end
	end
	do return v end
end

function app.NoteListDatabase:forContext(ctx)
	local cstr = _g.jk.env.EnvironmentVariable:get("TASK_DATABASE")
	do _g.jk.log.Log:debug(ctx, "Opening database connection: '" .. _g.jk.lang.String:safeString(cstr) .. "'") end
	self.db = _g.jk.mysql.MySQLDatabase:forConnectionStringSync(ctx, cstr)
	if not (self.db ~= nil) then
		do _g.jk.lang.Error:throw("failedToConnectToDatabase", cstr) end
	end
	do
		local v = _g.app.NoteListDatabase._construct0(_g.app.NoteListDatabase._create())
		do v:setDb(self.db) end
		do return v end
	end
end

function app.NoteListDatabase:updateTable(table)
	if not (table ~= nil) then
		do _g.jk.lang.Error:throw("nullTable", "updateTable") end
	end
	if not (self.db ~= nil) then
		do _g.jk.lang.Error:throw("nullDb", "updateTable") end
	end
	if not self.db:ensureTableExistsSync(table) then
		do _g.jk.lang.Error:throw("failedToUpdateTable", table:getName()) end
	end
end

function app.NoteListDatabase:updateTables()
	local note = _g.jk.sql.SQLTableInfo:forName(_g.app.NoteListDatabase.NOTE)
	do note:addStringKeyColumn("id") end
	do note:addStringColumn("name") end
	do note:addStringColumn("description") end
	do self:updateTable(note) end
end

function app.NoteListDatabase:addNote(note)
	if not (note ~= nil) then
		do return nil end
	end
	do note:setId("1") end
	do note:setTimeStampAddedValue(_g.jk.time.SystemClock:asUTCSeconds()) end
	if not self.db:executeSync(self.db:prepareInsertStatementSync(_g.app.NoteListDatabase.NOTE, note:toDynamicMap())) then
		do return nil end
	end
	do return note end
end

function app.NoteListDatabase:updateNote(id, note)
	if not (note ~= nil) then
		do return false end
	end
	do note:setTimeStampLastUpdatedValue(_g.jk.time.SystemClock:asUTCSeconds()) end
	do
		local criteria = _g.app.NoteListDatabase.Note._construct0(_g.app.NoteListDatabase.Note._create())
		do criteria:setId(id) end
		do return self.db:executeSync(self.db:prepareUpdateStatementSync(_g.app.NoteListDatabase.NOTE, criteria:toDynamicMap(), note:toDynamicMap())) end
	end
end

function app.NoteListDatabase:deleteNote(id)
	local criteria = _g.app.NoteListDatabase.Note._construct0(_g.app.NoteListDatabase.Note._create())
	do criteria:setId(id) end
	do return self.db:executeSync(self.db:prepareDeleteStatementSync(_g.app.NoteListDatabase.NOTE, criteria:toDynamicMap())) end
end

function app.NoteListDatabase:getNotes()
	local v = {}
	local it = self.db:querySync(self.db:prepareQueryAllStatementSync(_g.app.NoteListDatabase.NOTE, nil, nil))
	if not (it ~= nil) then
		do return nil end
	end
	while it ~= nil do
		local o = it:next()
		if not (o ~= nil) then
			do break end
		end
		do
			local note = _g.app.NoteListDatabase.Note:forJsonObject(o)
			if not (note ~= nil) then
				goto _continue1
			end
			do _g.jk.lang.Vector:append(v, note) end
		end
		::_continue1::
	end
	do
		local data = _g.jk.lang.DynamicMap._construct0(_g.jk.lang.DynamicMap._create())
		do data:setObject("records", v) end
		do return data end
	end
end

function app.NoteListDatabase:close()
	if self.db ~= nil then
		do self.db:closeSync() end
	end
	self.db = nil
end

function app.NoteListDatabase:getDb()
	do return self.db end
end

function app.NoteListDatabase:setDb(v)
	self.db = v
	do return self end
end
