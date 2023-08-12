local awesome, client, mouse, screen, tag = awesome, client, mouse, screen, tag
local ipairs, string, os, table, tostring, tonumber, type = ipairs, string, os, table, tostring, tonumber, type

local awful         = require("awful")
                      require("awful.autofocus")
local wibox         = require("wibox")
local beautiful     = require("beautiful")

-- Import my custom variables
local var           = require("themes.default.variables")

-- Rules to apply to new clients (through the "manage" signal).
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     raise = true,
                     ontop = false,
                     fullscreen = false,
                     keys = clientkeys,
                     buttons = clientbuttons,
                     screen = awful.screen.preferred,
                     --placement = awful.placement.no_overlap+awful.placement.no_offscreen,
                     placement = awful.placement.centered,
                     size_hints_honor = false
     }
    },

    -- Titlebars
    { rule_any = { type = { "dialog", "normal" } },
              properties = { titlebars_enabled = false } },
            --properties = { titlebars_enabled = true } },

    { rule = { class = "LibreWolf" },
              properties = {tag = var.names[1] } },

    { rule = { class = "steam" },
              properties = {tag = var.names[4] } },

    { rule = { class = "Gimp" },
              properties = { tag = var.names[9] } },

    { rule = { class = "kdenlive" },
               properties = { tag = var.names[9] } },

    { rule = { class = "youtube.com" },
               properties = { screen = 1, tag = var.names[6] } },

    { rule = { class = "whatsapp-nativefier-d40211" },
               properties = { tag = var.names[7] } },
    
    { rule = { class = "discord" },
               properties = { tag = var.names[7] } },

    { rule = { class = "Yad" },
               properties = { floating = true } },

    { rule = { class = "Blueman-manager" },
               properties = { floating = true } },

}
-- }}}


