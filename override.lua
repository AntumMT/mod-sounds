
-- override built-in type function
local otype = type
type = function(obj)
	local base_type = otype(obj)
	if base_type == "table" then
		local meta_type = otype(obj.__type)
		if meta_type == "string" then
			return obj.__type
		elseif meta_type == "function" then
			return obj:__type()
		end
	end

	return base_type
end
