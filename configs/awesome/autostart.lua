local awful = require("awful")

awful.spawn.with_shell("picom --experimental-backends")
awful.spawn.with_shell("nitrogen --restore")
