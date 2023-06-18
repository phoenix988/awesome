

local mywibar = {}

function mywibar.create(s,wibox,init,theme)

s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            init.sep.first_main,
            init.launcher,
            init.pow.sep_right,
            layout = wibox.layout.fixed.horizontal,
            init.sep.first_sec,
            s.mylayoutbox,
            init.sep.first_sec,
            init.sep.first,
            {
            {s.mytaglist,
             bottom = 2,
             color  = theme.fg_normal,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            s.mypromptbox,
            init.sep.first_sec,
        },
          -- Middle widget
            s.mytasklist,
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            init.sep.first_sec,
            init.pow.sep_1,
            init.clock,
            init.sep.clock_sep,
            init.updateicon,
            init.updatewidget,
            init.sep.clock_sep,
            init.pow.sep_2,
            init.sep.first_sec,
            {
            {init.sep.linuxicon,
             bottom = 2,
             color  = theme.fg_icon,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            {
            {init.sep.small_spr,
             bottom = 2,
             color  = theme.fg_icon,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            {
            {init.kernelwidget,
             bottom = 2,
             color  = theme.fg_icon,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            init.sep.first_sec,
            {
            {init.mem.memicon,
             bottom = 2,
             color  = theme.fg_mem,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            {
            {init.mem_text,
             bottom = 2,
             color  = theme.fg_mem,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 10,
             layout = wibox.container.margin,
            },
            init.pow.sep_4,
            {
            {init.cpu.cpuicon,
             bottom = 2,
             color  = theme.fg_cpu,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            {
            {init.cpu.cpuwidget,
             bottom = 2,
             color  = theme.fg_cpu,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            {
            {init.cpu.tempicon,
             bottom = 2,
             color  = theme.fg_cpu,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            {
            {init.cpu.tempwidget,
             bottom = 2,
             color  = theme.fg_cpu,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            init.pow.sep_3,
            {
            {init.fs.fsicon,
             bottom = 2,
             color  = theme.fg_focus,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            {
            {init.fs.fswidget,
             bottom = 2,
             color  = theme.fg_focus,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            init.pow.sep_4,
            {
            {init.vol.volicon,
             bottom = 2,
             color  = theme.fg_alt,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            {
            {init.vol.volumewidget,
             bottom = 2,
             color  = theme.fg_alt,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            init.pow.sep_3,
            init.sep.first_sec,
            {
            {wibox.widget.systray(),
             bottom = 4,
             top    = 6,
             color  = theme.bg_normal,
             widget = wibox.container.margin,
            },
             left  = 3,
             right = -2,
             layout = wibox.container.margin,
            },
        },
    }

end


function mywibar.create_sec(s,wibox,init,theme)

s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            init.sep.first_main,
            init.launcher,
            init.pow.sep_right,
            layout = wibox.layout.fixed.horizontal,
            init.sep.first_sec,
            s.mylayoutbox,
            init.sep.first_sec,
            init.sep.first,
            {
            {s.mytaglist,
             bottom = 2,
             color  = theme.fg_normal,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            s.mypromptbox,
            init.sep.first_sec,
        },
          -- Middle widget
            s.mytasklist,
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            init.sep.first_sec,
            init.pow.sep_1,
            init.clock,
            init.sep.clock_sep,
            init.updateicon,
            init.updatewidget,
            init.sep.clock_sep,
            init.pow.sep_2,
            init.sep.first_sec,
            {
            {init.sep.linuxicon,
             bottom = 2,
             color  = theme.fg_icon,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            {
            {init.sep.small_spr,
             bottom = 2,
             color  = theme.fg_icon,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            {
            {init.kernelwidget,
             bottom = 2,
             color  = theme.fg_icon,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            init.sep.first_sec,
            {
            {init.mem.memicon,
             bottom = 2,
             color  = theme.fg_mem,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            {
            {init.mem_text,
             bottom = 2,
             color  = theme.fg_mem,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 10,
             layout = wibox.container.margin,
            },
            init.pow.sep_4,
            {
            {init.cpu.cpuicon,
             bottom = 2,
             color  = theme.fg_cpu,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            {
            {init.cpu.cpuwidget,
             bottom = 2,
             color  = theme.fg_cpu,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
             init.pow.sep_3,
            {
            {init.fs.fsicon,
             bottom = 2,
             color  = theme.fg_focus,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            {
            {init.fs.fswidget,
             bottom = 2,
             color  = theme.fg_focus,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            init.pow.sep_4,
            {
            {init.vol.volicon,
             bottom = 2,
             color  = theme.fg_alt,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            {
            {init.vol.volumewidget,
             bottom = 2,
             color  = theme.fg_alt,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            init.pow.sep_3,
            {
            {init.sep.linuxicon,
             bottom = 2,
             color  = theme.fg_icon,
             widget = wibox.container.margin,
            },
             left  = 0,
             right = 0,
             layout = wibox.container.margin,
            },
            init.sep.first_sec,

        },
    }




end


return mywibar
