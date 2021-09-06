
--- Sounds Settings
--
--  @topic settings


--- Enables default built-in sound groups.
--
--  @setting sounds.enable_builtin_groups
--  @settype bool
--  @default true
sounds.enable_builtin_groups = core.settings:get_bool("sounds.enable_builtin_groups", true)

--- Disables individual built-in sound groups categories.
--
--  Only useful if sounds.enable_builtin_groups is enabled. Group names that can be disabled
--  are the filenames in the "groups" directory without the ".lua" suffix.
--
--  @setting sounds.disabled_groups
--  @settype string (comma-separated list)
--  @default Empty string.
--  @usage # disable animal & weather sound groups
--  sounds.disabled_groups = animal,weather
sounds.disabled_groups = {}
for _, d in ipairs(string.split(core.settings:get("sounds.disabled_groups") or "", ",")) do
	d = d:trim()
	if d ~= "" then
		sounds.disabled_groups[d] = true
	end
end

--- Enables sounds testing with [sounds_tests](tests.html#sounds_tests) chat command.
--
--  @setting sounds.enable_tests
--  @settype bool
--  @default false
sounds.enable_tests = core.settings:get_bool("sounds.enable_tests", false)
