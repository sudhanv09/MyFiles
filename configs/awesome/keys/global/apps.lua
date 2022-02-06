local awful = require("awful")
local gears = require("gears")
local apps = require("config.apps")

return gears.table.join(
    awful.key(
      { modkey }, "Return", 
      function () awful.spawn(apps.terminal) end,
      {
        description = "open a terminal", 
        group = "launcher"
      }
    ),

    awful.key(
      { modkey }, "f", 
      function () awful.spawn(apps.browser) end,
      {
        description = "open a browser", 
        group = "launcher"
      }
    ),

    awful.key(
      { modkey }, "q", 
      function () awful.spawn(apps.lockscreen) end,
      {
        description = "lock the screen", 
        group = "launcher"
      }
    ),

  awful.key(
     { }, "Print", function () awful.util.spawn("scrot") end,
      {
        description = "Screenshot screen", 
        group = "screenshot"
      }
    ),

      awful.key(
      { modkey, "Shift" }, "r", 
      function () awful.util.spawn("kitty -e ranger") end,
      {
        description = "ranger", 
        group = "launcher"
      }
    ),

  awful.key(
      { modkey, "Shift" }, "c", 
      function () awful.util.spawn("calibre") end,
      {
        description = "calibre", 
        group = "launcher"
      }
    ),

  awful.key(
      { modkey, "Shift" }, "t", 
      function () awful.spawn(apps.email) end,
      {
        description = "Evolution", 
        group = "launcher"
      }
    ),

    awful.key(
      { modkey, "Shift" }, "e", 
      function () awful.spawn(apps.emacs) end,
      {
        description = "emacs", 
        group = "launcher"
      }
    ),

    awful.key(
      { modkey }, "r",
      function () awful.spawn.with_shell(apps.launcher) end,
      {
        description = "run prompt", 
        group = "launcher"
      }
    )

--    awful.key(
--      { modkey }, "p",
--      function () awful.spawn.with_shell(apps.colorpicker) end,
--      {
--        description = "show a color picker",
--        group = "launcher"
--      }
--    )
--    awful.key(
--      { modkey }, "a", 
--      function () awful.spawn.with_shell(apps.screenshot.area) end,
--      {
--        description = "make an area screenshot", 
--        group = "launcher"
--      }
--    ),

)
