
--- Sounds Settings
--
--  @topic settings


--- Enables default built-in sound groups.
--
--  @setting sounds.enable_builtin_groups
--  @settype bool
--  @default true
sounds.enable_builtin_groups = core.settings:get_bool("sounds.enable_builtin_groups", true)

--- Enables sounds testing with [sounds_tests](tests.html#sounds_tests) chat command.
--
--  @setting sounds.enable_tests
--  @settype bool
--  @default false
sounds.enable_tests = core.settings:get_bool("sounds.enable_tests", false)
