
--- Sounds Settings
--
--  @topic settings

--- Enables sounds testing with /sounds_test chat command.
--
--  @setting sounds.enable_tests
--  @settype bool
--  @default false
sounds.enable_tests = core.settings:get_bool("sounds.enable_tests", false)
