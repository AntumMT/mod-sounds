
-- Place this file in mod's ".ldoc" directory


local env = {
	import = import,
}

local loadfile = import("loadfile")
local type = import("type", env)
local string = import("string", env)
local tostring = import("tostring", env)
local tonumber = import("tonumber", env)
local table = import("table", env)
local pairs = import("pairs", env)
local ipairs = import("ipairs", env)

local dofile = function(f)
	return loadfile(f, "t", env)()
end
env["dofile"] = dofile

dofile(".ldoc/auxf.ld")

local args = import("args")
local d_data = args.dir .. "/data"


project = "Sounds"
title = "Sound Pack for Minetest"
format = "markdown"
boilerplate = false
not_luadoc = true
favicon = "https://www.minetest.net/media/icon.svg"
readme = ".ldoc/README.md"
style = true

local version = "1.12"

file = {
	"settings.lua",
	"api.lua",
	"node.lua",
	"groups/main.lua",
	"groups/animal.lua",
	"groups/creature.lua",
	"groups/firearm.lua",
	"groups/node.lua",
	"groups/projectile.lua",
	"groups/scifi.lua",
	"groups/vehicle.lua",
	"groups/weather.lua",
	"tests.lua",
}

new_type("chatcmd", "Chat Commands")
new_type("setting", "Settings")
new_type("sndgroup", "Sound Groups")


local function video_frame(src)
	return '<iframe width="560" height="315" src="' .. src
		.. '" title="Video Player" frameborder="0"'
		.. ' allow="fullscreen;"></iframe>'
end

local tags
tags, custom_tags = dofile(".ldoc/tags.ld")


-- START: handling items to prevent re-parsing

local registered_items = {}

local function is_registered(item)
	if not registered_items[item.type] then return false end

	for _, tbl in ipairs(registered_items[item.type]) do
		if item == tbl then
			return true
		end
	end

	return false
end

local function register(item)
	if not registered_items[item.type] then
		registered_items[item.type] = {}
	end

	if not is_registered(item) then
		table.insert(registered_items[item.type], item)
	end
end

-- END:


local function format_string(value, flags)
	local st = '<span style="'
	if flags.color then
		st = st .. 'color:' .. flags.color .. ';'
	end
	if flags.size then
		st = st .. 'font-size:' .. flags.size .. ';'
	end

	return st .. '">' .. value:gsub("_", "\\_") .. '</span>'
end

local format_setting_tag = function(desc, value)
	return "\n- " .. format_string("`" .. desc .. ":`", {size="80%"}) .. " " .. value
end


local setting_handler = function(item)
	local tags = {
		{"settype", "type"},
		{"default"},
		{"min", "minimum value"},
		{"max", "maximum value"},
	}

	local def = {
		["settype"] = format_setting_tag("type", "string"),
	}

	for _, t in ipairs(tags) do
		local name = t[1]
		local desc = t[2]
		if not desc then desc = name end

		local value = item.tags[name]
		if type(value) == "table" then
			if #value > 1 then
				local msg = item.file.filename .. " (line " .. item.lineno
					.. "): multiple instances of tag \"" .. name .. "\" found"
				if error then
					error(msg)
				elseif print then
					print("WARNING: " .. msg)
				end
			end

			if value[1] then
				def[name] = format_setting_tag(desc, value[1])
			end
		end
	end

	item.description = item.description .. "\n\n**Definition:**\n" .. def.settype
	for _, t in ipairs({def.default, def.min, def.max}) do
		if t then
			item.description = item.description .. t
		end
	end

	return item
end

local function sndgroup_handler(item)
	if item.tags.snd then
		item.description = item.description .. "\n\n**Sounds:**\n"
		local s_count = 1
		for _, s in ipairs(item.tags.snd) do
			local after
			local idx = s:find(" ")
			if idx then
				after = s:sub(idx+1)
				s = s:sub(1, idx-1)
			end

			local ran = false
			if item.modifiers.snd then
				for _, m in ipairs(item.modifiers.snd) do
					if ran then break end

					for k, v in pairs(m) do
						if k:find("^r%d") then
							ran = k:gsub("^r", "")
							ran = tonumber(ran)
							break
						end
					end
				end
			end

			item.description = item.description
				.. "\n" .. s_count .. ". " .. format_string(s, {size="80%", color="darkgreen"})

			if ran then
				item.description = item.description .. " *(random)*"
			end
			if after then
				item.description = item.description .. " " .. after
			end

			-- add preview
			local branch = "master"
			if version then
				branch = "v" .. version
			end

			if ran then
				for r = 1, ran do
					local a_source = "https://github.com/AntumMT/mod-sounds/raw/" .. branch
						.. "/sounds/sounds_" .. s .. "." .. r .. ".ogg"
					local preview = '<br>\n<audio controls style="width:20em;height:1em;">\n  <source src="' .. a_source .. '" type="audio/ogg">'
						.. '\n  Your browser does not support the audio element.'
						.. '\n</audio>'

					item.description = item.description .. preview
				end
			else
				local a_source = "https://github.com/AntumMT/mod-sounds/raw/" .. branch
					.. "/sounds/sounds_" .. s .. ".ogg"
				local preview = '<br>\n<audio controls style="width:20em;height:1em;">\n  <source src="' .. a_source .. '" type="audio/ogg">'
					.. '\n  Your browser does not support the audio element.'
					.. '\n</audio>'

				item.description = item.description .. preview
			end

			s_count = s_count + 1
		end
	end

	return item
end

local chatcmd_handler = function(item)
	for _, p in ipairs(item.params) do
		if item.modifiers.param[p].opt then
			item.name = item.name .. " [" .. p .. "]"
		else
			item.name = item.name .. " &lt;" .. p .. "&gt;"
		end
	end

	return item
end

function custom_display_name_handler(item, default_handler)
	if not is_registered(item) then
		if item.type == "setting" then
			item = setting_handler(item)
		elseif item.type == "sndgroup" then
			item = sndgroup_handler(item)
		elseif item.type == "chatcmd" then
			item = chatcmd_handler(item)
		end

		local parse_tags = {"priv", "note"}
		for _, pt in ipairs(parse_tags) do
			local tvalues = item.tags[pt]
			if tvalues then
				local tstring = ""

				local title = tags.get_title(pt)
				if title then
					tstring = tstring .. "\n\n### " .. title .. ":\n"
				end

				for _, tv in ipairs(tvalues) do
					tstring = tstring .. "\n- " .. tags.format(pt, tv)
				end

				item.description = item.description .. tstring
			end
		end
	end

	register(item)
	return default_handler(item)
end


local custom_see_links = {
	["ObjectRef"] = "https://minetest.gitlab.io/minetest/class-reference/#objectref",
	["PlayerMetaRef"] = "https://minetest.gitlab.io/minetest/class-reference/#playermetaref",
	["ItemDef"] = "https://minetest.gitlab.io/minetest/definition-tables/#item-definition",
	["ItemStack"] = "https://minetest.gitlab.io/minetest/class-reference/#itemstack",
	["groups"] = "https://minetest.gitlab.io/minetest/groups/",
	["entity_damage_mechanism"] = "https://minetest.gitlab.io/minetest/entity-damage-mechanism/",
	["vector"] = "https://minetest.gitlab.io/minetest/representations-of-simple-things/#positionvector",
	["SoundParams"] = "https://minetest.gitlab.io/minetest/sounds/",
}

local function format_custom_see(name, section)
	local url = custom_see_links[name]
	if not url then
		url = ""
	end

	if not name then
		name = ""
	end

	return name, url
end


custom_see_handler("^(ObjectRef)$", function(name, section)
	return format_custom_see(name, section)
end)

custom_see_handler("^(PlayerMetaRef)$", function(name, section)
	return format_custom_see(name, section)
end)

custom_see_handler("^(ItemDef)$", function(name, section)
	return format_custom_see(name, section)
end)

custom_see_handler("^(groups)$", function(name, section)
	return format_custom_see(name, section)
end)

custom_see_handler("^(entity_damage_mechanism)$", function(name, section)
	return format_custom_see(name, section)
end)

custom_see_handler("^(ItemStack)$", function(name, section)
	return format_custom_see(name, section)
end)

custom_see_handler("^(vector)$", function(name, section)
	return format_custom_see(name, section)
end)

custom_see_handler("^(SoundParams)$", function(name, section)
	return format_custom_see(name, section)
end)

-- reference items from separate modules
custom_see_handler("^(.*) (.*)$", function(name, section)
	return section, name .. ".html#" .. section
end)

-- reference external pages
custom_see_handler("^(.*) (http.*)$", function(name, section)
	return name, section
end)
