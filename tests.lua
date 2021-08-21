
--- Sounds Tests
--
--  Enabled with [sounds.enable_tests](settings.html#sounds.enable_tests).
--
--  @topic tests


local player_cache = {}
local groups_list = {}
local s_handle

local fs_w = 16
local fs_h = 12

local get_tests_fs = function(pname, play_state)
	play_state = play_state or {}
	local manual_play = ""
	if player_cache[pname] then
		manual_play = player_cache[pname].manual_play or ""
	end

	local fs = "formspec_version[2]"
		.. "size[" .. fs_w .. "," .. fs_h .. "]"
		.. "label[0.25,0.5;Sounds Tests]"
		.. "button_exit[" .. fs_w-0.75 .. ",0.25;0.5,0.5;btn_close;X]"
		.. "label[0.25,1.75;Last played:]"
		.. "textlist[3.25,1.5;" .. fs_w-5.5 .. ",1.5;played_status;"
			.. "Name: " .. (play_state.name or "")
			.. ",Cached: " .. (play_state.cached or "")
			.. ",Played: " .. (play_state.played or "")
		.. "]"
		.. "label[0.25,3.5;Manual play:]"
		.. "field[3.25,3.25;" .. fs_w-5.5 .. ",0.5;input_name;;" .. manual_play .. "]"
			.. "field_close_on_enter[input_name;false]"
		.. "button[" .. fs_w-1.75 .. ",3.25;1.5,0.5;btn_play_man;Play]"
		.. "label[0.25,4.25;Group play:]"
		.. "textlist[3.25,4;" .. fs_w-5.5 .. "," .. fs_h-4.25 .. ";groups;"

		if #groups_list == 0 then -- cache groups
			for k in pairs(sounds) do
				if type(sounds[k]) == "SoundGroup" then
					table.insert(groups_list, k)
				end
			end
			table.sort(groups_list)
		end

		local g = ""
		local g_added = 0
		for _, k in ipairs(groups_list) do
			if g_added > 0 then
				g = g .. ","
			end
			g = g .. k
			g_added = g_added + 1
		end

		fs = fs .. g .. "]"
		.. "button[" .. fs_w-1.75 .. ",4;1.5,0.5;btn_play_grp;Play]"

	return fs
end

--- Displays sounds tests formspec.
--
--  @local
--  @tparam string pname Player name to whom formspec is shown.
--  @tparam table play_state
local show_tests = function(pname, play_state)
	core.show_formspec(pname, "sounds_tests", get_tests_fs(pname, play_state))
end

--- Displays sounds tests formspec.
--
--  @chatcmd sounds_tests
core.register_chatcommand("sounds_tests", {
	description = "Displays sounds tests formspec.",
	func = function(pname, param)
		show_tests(pname)
		return true
	end,
})


core.register_on_player_receive_fields(function(player, formname, fields)
	if formname == "sounds_tests" then
		local pname = player:get_player_name()
		player_cache[pname] = player_cache[pname] or {}

		if fields.quit then
			if s_handle then
				sounds:stop(s_handle)
				s_handle = nil
			end

			player_cache[pname] = nil
		elseif fields.btn_play_man then
			if s_handle then
				sounds:stop(s_handle)
				s_handle = nil
			end

			local s_name = tostring(fields.input_name):trim()
			if s_name ~= "" then
				local s_cached = "no"
				if sounds.cache[s_name] then
					s_cached = "yes"
				end

				s_handle = sounds:play(s_name, {to_player=pname})

				local s_played = "no"
				if s_handle then
					s_played = "yes"
				end

				player_cache[pname].manual_play = s_name
				show_tests(pname, {name=s_name, cached=s_cached, played=s_played})
			end
		elseif fields.groups then
			local selected_group = tostring(fields.groups):gsub("^CHG:", "")
			player_cache[pname].selected_group = tonumber(selected_group)
		elseif fields.btn_play_grp then
			if s_handle then
				sounds:stop(s_handle)
				s_handle = nil
			end

			if player_cache[pname] then
				local selected_group = player_cache[pname].selected_group
				if selected_group then
					local sound_group = sounds[groups_list[selected_group]]
					if type(sound_group) == "SoundGroup" then
						local s_name
						s_handle, s_name = sound_group({to_player=pname})

						local s_cached = "no"
						if sounds.cache[s_name] then
							s_cached = "yes"
						end
						local s_played = "no"
						if s_handle then
							s_played = "yes"
						end

						show_tests(pname, {name=s_name, cached=s_cached, played=s_played})
					end
				end
			end
		end

		return true
	end
end)
