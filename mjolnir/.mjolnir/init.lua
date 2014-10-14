local application = require "mjolnir.application"
local hotkey = require "mjolnir.hotkey"
local window = require "mjolnir.window"
local fnutils = require "mjolnir.fnutils"

local cycle = require "cycle"
local grid = require "grid"

-- mjolnir.alert.show("mjolnir config loaded", 1.5)

local mash = {"ctrl", 'alt'}
local mashshift = {"cmd", "alt", "shift"}

--hotkey.bind({"cmd", "alt", "ctrl"}, "D", function()
--  local win = window.focusedwindow()
--  local f = win:frame()
--  f.x = f.x + 10
--  win:setframe(f)
--end)

-- move the window to the right half of the screen
hotkey.bind({"cmd", "alt", "ctrl"}, "L", function()
    local win = window.focusedwindow()
    local newframe = win:screen():frame()
    newframe.w = newframe.w/2
    newframe.x = newframe.w  -- comment this line to push it to left of screen
    win:setframe(newframe)
end)

-- move the window to the left half of the screen
hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
    local win = window.focusedwindow()
    local newframe = win:screen():frame()
    newframe.w = newframe.w/2
--    newframe.x = newframe.w  -- comment this line to push it to left of screen
    win:setframe(newframe)
end)

-- window maximize()
-- Make this window fill the whole screen its on, without covering the dock or menu.
hotkey.bind({"cmd", "alt", "ctrl"}, "M", function()
    local win = window.focusedwindow()
    local newframe = win:screen():frame()
    win:setframe(newframe)
end)

-- change focus
hotkey.bind(mashshift, "H", function() window.focusedwindow():focuswindow_west() end)
hotkey.bind(mashshift, "J", function() window.focusedwindow():focuswindow_east() end)
hotkey.bind(mashshift, "K", function() window.focusedwindow():focuswindow_north() end)
hotkey.bind(mashshift, "L", function() window.focusedwindow():focuswindow_south() end)

hotkey.bind(mash, ',', function() ext.grid.snap(window.focusedwindow()) end)
hotkey.bind(mash, '.', function() fnutils.map(window.visiblewindows(), ext.grid.snap) end)

hotkey.bind(mash, '#', function() ext.cycle.applicationwindows(1) end)
-- hotkey.bind(mash, '+', function() ext.cycle.applicationwindows(-1) end)

