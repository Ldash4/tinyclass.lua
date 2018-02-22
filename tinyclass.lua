return function()
	local class = setmetatable({}, {
		__call = function(self, ...)
			return setmetatable({}, self):__init(...)
		end,
	})
	class.__index = class
	return class
end