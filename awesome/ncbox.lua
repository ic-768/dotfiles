-- ncbox

local beautiful = require("beautiful")
local capi = { tag = tag, screen = screen }
local setmetatable = setmetatable
local tag = require("awful.tag")
local wibox = require("wibox")

local function get_screen(s)
    return s and capi.screen[s]
end

local ncbox = { mt = {} }
local boxes = nil

local function update(w, s)
    local t = get_screen(s).selected_tag
    local nm = tag.getproperty(t, "column_count") or 
        beautiful.column_count or 1

    w.text = nm or "--"
end

local function update_from_tag(t)
    local s = get_screen(t.screen)
    local w = boxes[s]
    if w then
        update(w, s)
    end
end

function ncbox.new(scr)
    local scr = get_screen(scr or 1)

    -- Do we already have the update callbacks registered?
    if boxes == nil then
        boxes = setmetatable({}, { __mode = 'kv' })
        capi.tag.connect_signal("property::selected", update_from_tag)
        capi.tag.connect_signal("property::layout", update_from_tag)
        capi.tag.connect_signal("property::column_count", update_from_tag)
        capi.tag.connect_signal("property::screen", function()
            for s, w in pairs(boxes) do
                if s.valid then
                    update(w, s)
                end
            end
        end)
        ncbox.boxes = boxes
    end

    -- Do we already have an ncbox for this screen?
    local w = boxes[scr]
    if not w then
        w = wibox.widget.textbox()
        w.font="Terminus 11"

        update(w, scr)
        boxes[scr] = w
    end

    return w
end

function ncbox.mt:__call(...)
    return ncbox.new(...)
end

return setmetatable(ncbox, ncbox.mt)

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
