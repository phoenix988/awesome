-- Function to create layout widget to show current layout and easily switch
local io    = require("io")
local wibox = require("wibox")
local awful = require("awful")
local lain  = require("lain")
local gears = require("gears")
local font  = require("themes.default.font")
local var   = require("themes.default.variables")

local chosen_theme  = require("activate_theme")
local theme         = require("themes/" .. chosen_theme.chosen_theme .. "/color")

-- Import function to switch the layout
-- Important so keybinding and click function will work
local layout_switcher = require("widgets.layout").layout_switcher

local markup       = lain.util.markup

-- Command to check for kernel version
local layout_command = var.layout_command

-- Sets available layouts
local se,us,az = "se","us","az"

-- Create empty table
local M = {}

-- Main function to create the widget
function M:create()
    
    local main = {}
    main.layout_command = "bash -c 'setxkbmap -query | grep layout | cut -d : -f 2'"
    -- Makes keyboard layout widget
    main.layoutwidget = awful.widget.watch(
        main.layout_command,
        0,
        function(widget, stdout)
            local stdout = string.gsub(stdout, "%s", "")
            widget.markup = '<span foreground="' .. theme.bg_normal .. '" background="' .. theme.seperator_1 .. '" font="' .. font.update .. '">'  .. stdout .. '</span>'
        end
    )
    
    main.layouticon =  wibox.widget {
        markup = "<span foreground='" .. theme.bg_normal .. "' font='" .. font.update .. "'>  </span>",
        widget = wibox.widget.textbox
    }
    
    -- Setting some settings for the update icon widget
    main.layoutwidget = wibox.container.margin(main.layoutwidget, 0, 0, 4, 1)
    main.layoutwidget = wibox.container.background(main.layoutwidget, theme.seperator_1, gears.shape.rectangle)
    
    main.layouticon = wibox.container.margin(main.layouticon, 0, 0, 4, 1)
    main.layouticon = wibox.container.background(main.layouticon, theme.seperator_1, gears.shape.rectangle)
    
    -- Sets click action when you click the widget   
    main.layoutwidget:connect_signal("button::press", function(_, _, _, button)
        -- Perform some action when the widget is clicked
        if button == 1 then
           -- sets the available layouts to switch between when you click the widget
           local switch = layout_switcher(se, us, az)
           awful.spawn("bash -c '" .. switch .. "'")
        end
    end)
    
    -- Create new table and insert the icon and widget
    local N = {}
    table.insert(N, main.layoutwidget)
    table.insert(N, main.layouticon)
    
    -- Gets more information if you hover over the widget
    for key, value in pairs(N) do
        awful.tooltip {
            objects = { N[key] },
            timer_function = function()
                return string.format("Activated: %s %s %s", se,us,az)   
            end
        }
    end

    return main
end

-- Return the module
return M

