-- Imports all widgets so its available to use
local init = {}

-- imports kernelwidgets
init.kernelwidget = require("widgets.kernelwidget")

-- System monitor widgets
init.cpu = require("widgets.barwidgets.cpuwidget")
init.fs  = require("widgets.barwidgets.fswidget")
init.mem = require("widgets.barwidgets.memwidget")
init.vol = require("widgets.barwidgets.volwidget")
init.bat = require("widgets.barwidgets.batwidget")

-- Seperators
init.pow = require("widgets.seperator.powerline")
init.sep = require("widgets.seperator.normal")

-- Clock
init.clock = require("widgets.clock")

-- Launcher
init.launcher = require("widgets.launcher")

init.layoutWidget = require("widgets.functions.layout")
init.update = require("widgets.updatewidget")

return init









