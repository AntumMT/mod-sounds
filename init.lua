
sounds = {}
sounds.modname = core.get_current_modname()
sounds.modpath = core.get_modpath(sounds.modname)

local debugging = core.settings:get_bool("debug_mods", false)

sounds.log = function(lvl, msg)
	if not msg then
		msg = lvl
		lvl = nil
	end

	if not debugging and lvl == "debug" then return end

	msg = "[" .. sounds.modname .. "] " .. msg

	if lvl == "debug" then
		msg = "[DEBUG] " .. msg
		lvl = "action"
	end

	if not lvl then
		core.log(msg)
	else
		core.log(lvl, msg)
	end
end


dofile(sounds.modpath .. "/settings.lua")

local scripts = {
	"override",
	"api",
}

if not sounds.disabled_groups["all"] then
	local dir_groups = sounds.modpath .. "/groups"
	for _, lua in ipairs(core.get_dir_list(dir_groups, false)) do
		if lua:find("%.lua$") then
			local sg = lua:gsub("%.lua$", "")
			if not sounds.disabled_groups[sg] then
				sounds.log("debug", "sounds groups \"" .. sg .. "\" loading")
				table.insert(scripts, "groups/" .. sg)
			else
				sounds.log("debug", "sounds groups \"" .. sg .. "\" disabled")
			end
		end
	end
else
	sounds.log("debug", "built-in sounds groups disabled")
end

-- ensure that node.lua is loaded after groups/node.lua
table.insert(scripts, "node")

for _, s in ipairs(scripts) do
	dofile(sounds.modpath .. "/" .. s .. ".lua")
end

if sounds.enable_tests then
	dofile(sounds.modpath .. "/tests.lua")
end


-- cache available sound files
sounds.cache = {}
core.register_on_mods_loaded(function()
	sounds.log("action", "caching sound files ...")

	for _, modname in ipairs(core.get_modnames()) do
		local s_dir = core.get_modpath(modname) .. "/sounds"
		for _, ogg in ipairs(core.get_dir_list(s_dir, false)) do
			if ogg:find("%.ogg$") then
				local basename = ogg:gsub("%.ogg$", "")
				local cache_value = true

				-- files for playing randomly by core must have suffix trimmed
				if basename:find("%.[0-9]$") then
					cache_value = basename:gsub("^.*%.(.*)$", "%1")
					cache_value = tonumber(cache_value)

					basename = basename:gsub("%.[0-9]$", "")
				end

				sounds.cache[basename] = cache_value
			end
		end
	end
end)
