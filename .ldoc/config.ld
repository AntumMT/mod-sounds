
local dofile = import("dofile")
local print = import("print")
local error = import("error")
local type = import("type")
local table = import("table")
local pairs = import("pairs")
local ipairs = import("ipairs")
local string = import("string")
local tostring = import("tostring")

project = "Sounds"
title = "Sound Pack for Minetest"
format = "markdown"
boilerplate = false
not_luadoc = true
favicon = "https://www.minetest.net/media/icon.svg"

file = {
	"api.lua",
	"groups.lua",
	"node_groups.lua",
	"node.lua",
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


local function sndgroup_handler(item)
	if item.tags.snd then
		item.description = item.description .. "\n\n**Sounds:**\n"
		local s_count = 1
		for _, s in ipairs(item.tags.snd) do
			item.description = item.description
				.. "\n" .. s_count .. ". " .. format_string(s, {size="80%", color="darkgreen"})
			s_count = s_count + 1
		end
	end

	return item
end

function custom_display_name_handler(item, default_handler)
	if not is_registered(item) then
		if item.type == "sndgroup" then
			item = sndgroup_handler(item)
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
