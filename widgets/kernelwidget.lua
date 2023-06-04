local wibox = require("wibox")
local awful = require("awful")
local lain  = require("lain")
local gears = require("gears")
local font  = require("themes.default.font")
local var   = require("themes.default.variables")

local chosen_theme  = require("activate_theme")
local theme         = require("themes/" .. chosen_theme.chosen_theme .. "/color")

local markup       = lain.util.markup

-- Command to check for kernel version
local kernel_command = var.kernel_command

local kernelbar = wibox.widget {
       forced_height    = 1,
       forced_width     = var.bar_width,
       color            = theme.fg_mem,
       background_color = theme.bg_normal,
       margins          = 1,
       paddings         = 1,
       ticks            = true,
       ticks_size       = 13,
       widget           = wibox.widget.progressbar,
   }

    local kerneltext = wibox.widget.textbox()

    local kernelstack = wibox.widget {
        kernelbar,
        kerneltext,
        layout = wibox.layout.stack
    }

-- Makes kernel version widget
   kernelwidget = awful.widget.watch(
       kernel_command,
       1,
       function(widget, stdout)
           kernelwidget.markup = '<span foreground="' .. theme.fg_icon .. '" background="' .. theme.bg_normal .. '" font="' .. font.update .. '">' .. stdout .. '</span>'
       end
   )

   -- Setting some settings for the update icon widget
   local kernelbg = wibox.container.background(kernelstack, "#474747", gears.shape.rectangle)
   local kernelwidget = wibox.container.margin(kernelbg, table.unpack(var.bar_size))
   kernelwidget = wibox.container.background(kernelwidget, theme.bg_normal, gears.shape.rectangle)
-- Kernel widget end


