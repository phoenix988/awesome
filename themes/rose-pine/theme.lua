--[[

     Copland Awesome WM theme 2.0
     github.com/copycat-killer

--]]

local gears   = require("gears")
local vicious = require("vicious")
local lain    = require("lain")
local awful   = require("awful")
local wibox   = require("wibox")
local os      = { getenv = os.getenv, setlocale = os.setlocale }
local awesome, client = awesome, client
local gpmdp   = require("widgets.gpmdp")

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/rose-pine"
-- theme.wallpaper                                 = theme.dir .. "/wall.png"
theme.font                                      = "Droid Sans 14"
theme.taglist_font 				= "Xirod 13"
theme.fg_normal                                 = "#F6C177"
theme.fg_focus                                  = "#C4A7E7"
theme.bg_normal                                 = "#191724"
theme.bg_normal                                 = "#191724"
theme.bg_focus                                  = "#191724"
theme.fg_urgent                                 = "#191724"
theme.bg_urgent                                 = "#EB6F92"
theme.border_width                              = 1
theme.border_normal                             = "#141414"
--theme.border_focus                              = "#9CCFD8"
theme.border_focus                              = "#C4A7E7"
theme.taglist_fg_focus                          = "#EBBCBA"
theme.taglist_bg_focus                          = "#191724"
theme.taglist_bg_normal                         = "#191724"
theme.titlebar_bg_normal                        = "#191724"
theme.titlebar_bg_focus                         = "#6E6A86"
theme.menu_height                               = 25
theme.menu_width                                = 250
theme.tasklist_disable_icon                     = true
theme.awesome_icon                              = theme.dir .."/icons/awesome.png"
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.taglist_squares_sel                       = theme.dir .. "/icons/square_unsel.png"
theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
theme.vol                                       = theme.dir .. "/icons/vol.png"
theme.vol_low                                   = theme.dir .. "/icons/vol_low.png"
theme.vol_no                                    = theme.dir .. "/icons/vol_no.png"
theme.vol_mute                                  = theme.dir .. "/icons/vol_mute.png"
theme.disk                                      = theme.dir .. "/icons/disk.png"
theme.ac                                        = theme.dir .. "/icons/ac.png"
theme.bat                                       = theme.dir .. "/icons/bat.png"
theme.bat_low                                   = theme.dir .. "/icons/bat_low.png"
theme.bat_no                                    = theme.dir .. "/icons/bat_no.png"
theme.cpu                                       = theme.dir .. "/icons/cpu.png"
theme.play                                      = theme.dir .. "/icons/play.png"
theme.pause                                     = theme.dir .. "/icons/pause.png"
theme.stop                                      = theme.dir .. "/icons/stop.png"
theme.layout_tile                               = theme.dir .. "/icons/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/floating.png"
theme.useless_gap                               = 0
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"

-- lain related
theme.layout_centerfair                         = theme.dir .. "/icons/centerfair.png"
theme.layout_termfair                           = theme.dir .. "/icons/termfair.png"
theme.layout_centerwork                         = theme.dir .. "/icons/centerwork.png"

local markup = lain.util.markup
local blue   = theme.fg_focus
local red    = "#EB8F8F"
local green  = "#8FEB8F"
local white	 = theme.fg_normal

local mytextclock = wibox.widget.textclock(markup("#191724", " %a") .. markup("#161821", " %d ") .. markup("#191724", "%b ") ..  markup("#161821", "%I:%M "))
mytextclock.font = theme.font

local mytextclock = wibox.container.background(mytextclock, "#9CCFD8", gears.shape.rectangle)

--3uptimewidget = wibox.widget.textbox()
--3vicious.register(uptimewidget, vicious.widgeet.uptime, (markup(blue, "$1") .. markup(white, " D") .. markup(blue, " $2") ..  markup(white, " h"))

-- Calendar
lain.widget.calendar({
    attach_to = { mytextclock },
    notification_preset = {
        font = "Droid Sans Mono 13",
        fg   = white,
        bg   = theme.bg_normal
}})

-- Launcher
local mylauncher = awful.widget.button({image = theme.awesome_icon})
mylauncher:connect_signal("button::press", function() awful.util.mymainmenu:toggle() end)

--[[ Mail IMAP check
-- commented because it needs to be set before use
local mail = lain.widget.imap({
    timeout  = 180,
    server   = "server",
    mail     = "mail",
    password = "keyring get mail",
    settings = function()
        mail  = ""
        count = ""

        if mailcount > 0 then
            mail = "<span font='Droid Sans 5'> </span>Mail "
            count = mailcount .. " "
        end

        widget:set_markup(markup(blue, mail) .. count)
    end
})
--]]

-- MPD
local mpdicon = wibox.widget.imagebox()
theme.mpd = lain.widget.mpd({
    settings = function()
        if mpd_now.state == "play" then
            title = mpd_now.title
            artist  = " " .. mpd_now.artist  .. markup("#333333", " <span font='Droid Sans 2'> </span>|<span font='Droid Sans 5'> </span>")
            mpdicon:set_image(theme.play)
        elseif mpd_now.state == "pause" then
            title = "mpd "
            artist  = "paused" .. markup("#333333", " |<span font='Droid Sans 5'> </span>")
            mpdicon:set_image(theme.pause)
        else
            title  = ""
            artist = ""
            mpdicon._private.image = nil
            mpdicon:emit_signal("widget::redraw_needed")
            mpdicon:emit_signal("widget::layout_changed")
        end

        widget:set_markup(markup.font(theme.font, markup(blue, title) .. artist))
    end
})

-- Battery
local baticon = wibox.widget.imagebox(theme.bat)
local batbar = wibox.widget {
    forced_height    = 1,
    forced_width     = 143,
    color            = theme.fg_normal,
    background_color = theme.bg_normal,
    margins          = 1,
    paddings         = 1,
    ticks            = true,
    ticks_size       = 13,
    widget           = wibox.widget.progressbar,
}
local batupd = lain.widget.bat({
    settings = function()
        if bat_now.status == "N/A" or type(bat_now.perc) ~= "number" then return end

        if bat_now.status == "Charging" then
            baticon:set_image(theme.ac)
            if bat_now.perc >= 98 then
                batbar:set_color(green)
            elseif bat_now.perc > 50 then
                batbar:set_color(theme.fg_normal)
            elseif bat_now.perc > 15 then
                batbar:set_color(theme.fg_normal)
            else
                batbar:set_color(red)
            end
        else
            if bat_now.perc >= 98 then
                batbar:set_color(green)
            elseif bat_now.perc > 50 then
                batbar:set_color(theme.fg_normal)
                baticon:set_image(theme.bat)
            elseif bat_now.perc > 15 then
                batbar:set_color(theme.fg_normal)
                baticon:set_image(theme.bat_low)
            else
                batbar:set_color(red)
                baticon:set_image(theme.bat_no)
            end
        end
        batbar:set_value(bat_now.perc / 100)
    end
})
local batbg = wibox.container.background(batbar, "#474747", gears.shape.rectangle)
local batwidget = wibox.container.margin(batbg, 2, 7, 4, 4)

---- / fs
local fsicon = wibox.widget.imagebox(theme.disk)
local fsbar = wibox.widget {
    forced_height    = 1,
    forced_width     = 143,
    color            = theme.fg_normal,
    background_color = theme.bg_normal,
    margins          = 1,
    paddings         = 1,
    ticks            = true,
    ticks_size       = 13,
    widget           = wibox.widget.progressbar,
}
theme.fs = lain.widget.fs({
    partition = "/",
--    partition = "/",
    options = "--exclude-type=tmpfs",
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = "Droid Sans 10.5" },
    settings  = function()
        if tonumber(fs_now.used) < 90 then
            fsbar:set_color(theme.fg_normal)
        else
            fsbar:set_color("#EB8F8F")
        end
        fsbar:set_value(fs_now.used / 100)
    end
})
local fsbg = wibox.container.background(fsbar, "#474747", gears.shape.rectangle)
local fswidget = wibox.container.margin(fsbg, 2, 7, 4, 4)

local fswidget = wibox.container.background(fswidget, "#2E3440", gears.shape.rectangle)
local fsicon = wibox.container.background(fsicon, "#2E3440", gears.shape.rectangle)


-- ALSA volume bar
local volicon = wibox.widget.imagebox(theme.vol)
theme.volume = lain.widget.alsabar({
    width = 143, border_width = 0, ticks = true, ticks_size = 13,
    notification_preset = { font = theme.font },
    --togglechannel = "IEC958,3",
    settings = function()
        if volume_now.status == "off" then
            volicon:set_image(theme.vol_mute)
        elseif volume_now.level == 0 then
            volicon:set_image(theme.vol_no)
        elseif volume_now.level <= 50 then
            volicon:set_image(theme.vol_low)
        else
            volicon:set_image(theme.vol)
        end
    end,
    colors = {
        background   = theme.bg_normal,
        mute         = red,
        unmute       = theme.fg_normal
    }
})
theme.volume.tooltip.wibox.fg = theme.fg_focus
theme.volume.bar:buttons(awful.util.table.join (
          awful.button({}, 1, function()
            awful.spawn.with_shell(string.format("%s -e alsamixer", awful.util.terminal))
          end),
          awful.button({}, 2, function()
            awful.spawn(string.format("%s set %s 100%%", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 3, function()
            awful.spawn(string.format("%s set %s toggle", theme.volume.cmd, theme.volume.togglechannel or theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 4, function()
            awful.spawn(string.format("%s set %s 2%%+", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 5, function()
            awful.spawn(string.format("%s set %s 2%%-", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end)
))

local volumebg = wibox.container.background(theme.volume.bar, "#474747", gears.shape.rectangle)
local volumewidget = wibox.container.margin(volumebg, 2, 7, 4, 4)

local volumewidget = wibox.container.background(volumewidget, "#282A36", gears.shape.rectangle)
local volicon = wibox.container.background(volicon, "#282A36", gears.shape.rectangle)

-- Creates cpu widget
local cpuicon = wibox.widget.imagebox(theme.cpu)
local cpuwidget = wibox.widget.textbox()
vicious.register(cpuwidget, vicious.widgets.cpu, "CPU: $1%", 1)
cpuwidget.font = theme.font

-- Makes the color of the cpu widget
local cpuwidget = wibox.container.background(cpuwidget, "#282A36")
local cpuicon = wibox.container.background(cpuicon, "#282A36", gears.shape.rectangle)

-- Makes memory widget
local memory_widget = lain.widget.mem({
  settings = function()
        widget:set_markup( "MEM: " .. mem_now.used .. "MB ")
    end
})

-- Sets the font of the memory widget
memory_widget.font = theme.font


local weather_widget = lain.widget.weather({
    city_id = 598316,
    units = "metric",  -- Use "imperial" for Fahrenheit
    settings = function()
        -- Format the weather widget text
        widget:set_text("Temp: " .. weather_now["main"]["temp"] .. "°C | " .. weather_now["weather"][1]["description"])
    end
})


-- Separators
local first     = wibox.widget.textbox(markup.font("Droid Sans 3", " "))
local spr       = wibox.widget.textbox(' ')
local spr_big       = wibox.widget.textbox('                        ')
local small_spr = wibox.widget.textbox(markup.font("Droid Sans 4", "  "))
local bar_spr   = wibox.widget.textbox(markup.font("Droid Sans 3", " ") .. markup.fontfg(theme.font, "#333333", "  |  ") .. markup.font("Droid Sans 5", " "))
local bar_spr_small   = wibox.widget.textbox(markup.font("Droid Sans 28", "") .. markup.fontfg(theme.font, "#333333", " ", "Droid Sans 20") .. markup.font("Droid Sans 12", " "))
local bar_spr_middle   = wibox.widget.textbox(markup.font("Droid Sans 20", " ") .. markup.fontfg(theme.font, "#161821", "                         ") .. markup.font("Droid Sans 5", " "))

local linux_icon =  wibox.widget {
     markup = '<span foreground="#EB8F8F" font="Droid Sans 14"></span>',
     widget = wibox.widget.textbox
}

local linux_icon = wibox.container.background(linux_icon, "#161821", gears.shape.rectangle)

local col_bg =  wibox.widget {
     markup = '<span background="#161821" font="Droid Sans 25">  </span>',
     widget = wibox.widget.textbox
}

-- powerline seperators
local seperator = wibox.widget {
     markup = '<span foreground="#9CCFD8"  font="FiraCode Nerd Font Mono 38"></span>',
     widget = wibox.widget.textbox,
}

local seperator_dif = wibox.widget {
     markup = '<span foreground="#161821" background="#9CCFD8" font="FiraCode Nerd Font Mono 38"></span>',
     widget = wibox.widget.textbox,
}


local seperator_col = wibox.widget {
     markup = '<span foreground="#161821" background="#282A36" font="FiraCode Nerd Font Mono 38"></span>',
     widget = wibox.widget.textbox,
}

local seperator_col_dif = wibox.widget {
     markup = '<span foreground="#282A36" background="#161821" font="FiraCode Nerd Font Mono 38"></span>',
     widget = wibox.widget.textbox,
}

local seperator_fs = wibox.widget {
     markup = '<span foreground="#2E3440" background="#161821" font="FiraCode Nerd Font Mono 38"></span>',
     widget = wibox.widget.textbox,
}

local seperator_fs_diff = wibox.widget {
     markup = '<span foreground="#161821" background="#2E3440" font="FiraCode Nerd Font Mono 38"></span>',
     widget = wibox.widget.textbox,
}

local seperator_black = wibox.widget {
     markup = '<span foreground="#161821"  font="FiraCode Nerd Font Mono 38"></span>',
     widget = wibox.widget.textbox,
}


local seperator = wibox.container.margin(seperator)
seperator:set_right(-1)

local seperator_col = wibox.container.margin(seperator_col)
seperator_col:set_right(-4)

local seperator_dif = wibox.container.margin(seperator_dif)
seperator_dif:set_left(0)

-- Eminent-like task filtering
local orig_filter = awful.widget.taglist.filter.all

-- Taglist label functions
awful.widget.taglist.filter.all = function (t, args)
    if t.selected or #t:clients() > 0 then
        return orig_filter(t, args)
    end
end

function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tag names and layouts
    --awful.tag(awful.util.tagnames, s, awful.layout.layouts)
	local names = { "", "", "", "", "", "", "", "", "" }
	local l = awful.layout.suit
	local layouts = { l.max, l.tile.right, l.spiral, l.corner.se, l.tile.bottom, l.corner.se, l.tile.right, l.floating, l.floating, }
	awful.tag(names, s, layouts)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(awful.util.table.join(
                           awful.button({ }, 1, function () awful.layout.inc( 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(-1) end),
                           awful.button({ }, 4, function () awful.layout.inc( 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(-1) end)))

    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)



    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    s.mytasklist = wibox.container.background(s.mytasklist, "#00000000")

    local bar_gap = 10
    local screen_geometry = awful.screen.focused().geometry
    
    -- Calculate the width for the widget bar (25% of the screen width)
    local widget_bar_width = screen_geometry.width * 0.40


    -- Create the horizontal wibox
    s.mywibox = awful.wibar({ position = "top", 
    screen = s, 
    height = 25, 
    bg = theme.bg_normal, 
    fg = theme.fg_normal, 
    y = screen_geometry.y,
    x = screen_geometry.x,})


    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            mylauncher,
            layout = wibox.layout.fixed.horizontal,
            small_spr,
            s.mylayoutbox,
            bar_spr,
            first,
            s.mytaglist,
            first,
            s.mypromptbox,
            spr_big,
        },
        s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            spr_big,
            small_spr,
            seperator,
            mytextclock,
            seperator_dif,
            memory_widget,
            col_bg,
            seperator_col_dif,
--            cpuicon,
            cpuwidget,
            seperator_col,
            --mail.widget,
--	    brightness.widget,
	    gpmdp.widget,
            mpdicon,
            theme.mpd.widget,
            --baticon,
            --batwidget,
            --bar_spr,
            seperator_fs,
            fsicon,
            fswidget,
            seperator_fs_diff,
            seperator_col_dif,
            volicon,
            volumewidget,
            seperator_col,
            col_bg,
            wibox.widget.systray(),
            col_bg,
            linux_icon,
            first,
        },
    }


end

return theme