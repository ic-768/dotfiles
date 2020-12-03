--[[ Powerarrow Dark Awesome WM theme
     github.com/lcpz
changes made from default are marked with --ME ]]

local brightnessarc_widget = require("awesome-wm-widgets.brightnessarc-widget.brightnessarc")


local nmbox = require("nmbox") -- make sure to require the library, wherever it is.
local ncbox = require("ncbox") -- make sure to require the library, wherever it is.
local volumearc_widget = require("awesome-wm-widgets.volumearc-widget.volumearc")
local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi

local os = os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/" -- CHANGED FROM AWESOME/THEMES/POWERARROW-DARK
theme.wallpaper                                 = "~/Pictures/Wallpapers/torii.jpg"
theme.font                                      = "Terminus 9"
theme.taglist_font                              = "Font Awesome 5 Free Solid 10.5"
theme.menu_bg_normal                            = "#000000"
theme.menu_bg_focus                             = "#FFFFFF"
theme.bg_normal                                 = "#262626"
--theme.bg_focus                                  = "#000000" --ME for top-left roundedness
theme.bg_urgent                                 = "#000000"
theme.fg_normal                                 = "#ffffff"
theme.fg_focus                                  = "#ff8c00"
theme.fg_urgent                                 = "#af1d18"
theme.fg_minimize                               = "#ffffff"
theme.border_width                              = dpi(1) --ME changed from 1
theme.border_normal                             = "#1c2022"
theme.border_focus                              = "#FFFFFF"   --Changes color of focus border
theme.border_marked                             = "#3ca4d8"
theme.tasklist_bg_focus                         = "#1A1A1A"
theme.titlebar_bg_focus                         = theme.bg_focus
theme.titlebar_bg_normal                        = theme.bg_normal
theme.titlebar_fg_focus                         = theme.fg_focus
theme.menu_height                               = dpi(14)
theme.menu_width                                = dpi(120)
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.taglist_squares_sel                       = theme.dir .. "/icons/square_unselNew.png"
theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unselNew.png"
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
theme.ac                                        = theme.dir .. "/icons/newIcons/ac.png"
theme.bat                                       = theme.dir .. "/icons/newIcons/batNew.png"
theme.bat_low                                   = theme.dir .. "/icons/newIcons/bat_low.png"
theme.bat_no                                    = theme.dir .. "/icons/newIcons/bat_no.png"
theme.widget_mem                                = theme.dir .. "/icons/mem.png"
theme.widget_cpu                                = theme.dir .. "/icons/cpu.png"
theme.widget_temp                               = theme.dir .. "/icons/temp.png"
theme.widget_net                                = theme.dir .. "/icons/net.png"
theme.widget_hdd                                = theme.dir .. "/icons/hdd.png"
theme.widget_music                              = theme.dir .. "/icons/note.png"
theme.widget_music_on                           = theme.dir .. "/icons/note_on.png"
theme.widget_vol                                = theme.dir .. "/icons/vol.png"
theme.widget_vol_low                            = theme.dir .. "/icons/vol_low.png"
theme.widget_vol_no                             = theme.dir .. "/icons/vol_no.png"
theme.widget_vol_mute                           = theme.dir .. "/icons/vol_mute.png"
theme.widget_mail                               = theme.dir .. "/icons/mail.png"
theme.widget_mail_on                            = theme.dir .. "/icons/mail_on.png"
theme.tasklist_plain_task_name                  = false
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = dpi(0)
--theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
--theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"
--theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
--theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
--theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
--theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
--theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
--theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
--theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
--theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
--theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
--theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
--theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
--theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
--theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
--theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
--theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
--theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"

local markup = lain.util.markup
local separators = lain.util.separators
local arrow = separators.arrow_left
-- Textclock
local clockicon = wibox.widget.imagebox(theme.widget_clock) local clock = awful.widget.watch(
    "date +'%a %d %b %R'", 60,
    function(widget, stdout)
        widget:set_markup(markup.fontfg(theme.font, "#FFFFFF", markup.font(theme.font, stdout)))
    end
)

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { clock },
    notification_preset = {
        font = "Terminus 10",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})


-- MEM
local memicon = wibox.widget.imagebox(theme.widget_mem)
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#e0da37", mem_now.used .. "M "))
    end
})

-- CPU
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#FFFFFF", cpu_now.usage .. "% "))
    end
})

-- Coretemp
local tempicon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#ffffff", coretemp_now .. "°C "))
    end
})

-- Battery

local batteryarc_widget = require("awesome-wm-widgets.batteryarc-widget.batteryarc")

-- Net
local neticon = wibox.widget.imagebox(theme.widget_net)
local net = lain.widget.net({
    settings = function()
        widget:set_markup(markup.font(theme.font, --ME %03.1f decimal points 
                          markup("#7AC82E", " " .. string.format("%03.1f", net_now.received))
                          .. " " ..
                          markup("#46A8C3", " " .. string.format("%03.1f", net_now.sent) .. " ")))
    end
})

-- Separators
local spr     = wibox.widget.textbox(' ')
local arrl_dl = separators.arrow_left(theme.bg_focus, "alpha")
local arrl_ld = separators.arrow_left("alpha", theme.bg_focus)

function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

   -- If wallpaper is a function, call it with the screen 
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.suit.tile.left) --ME changed from awful.layout.layouts (each window starts with same tiling)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
     s.mylayoutbox = awful.widget.layoutbox(s)
     s.mylayoutbox:buttons(my_table.join(
                             awful.button({}, 1, function () awful.layout.inc( 1) end),
                             awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                             awful.button({}, 3, function () awful.layout.inc(-1) end),
                             awful.button({}, 4, function () awful.layout.inc( 1) end),
                             awful.button({}, 5, function () awful.layout.inc(-1) end)))


    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

-- Create a tasklist widget

     s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)
	 
	 s.panel =
    wibox(
      {
        ontop = false,
        screen = s,
        height = 28,
        width = s.geometry.width-17,
        x = s.geometry.x+8,
        y = s.geometry.y+5,
        stretch = false,
        bg = "#00000000",
		visible = true,
      }
		)

		function my_round_shape(cr, width, height)
			gears.shape.rounded_rect(cr, width, height, 16)
		end
	s.panel:struts(--struts are used to change the work area size so tiling windows don't
--overlap the bar 
    {
      top = 34
    }
  )

s.tbox_separator = wibox.widget.textbox("  ")--ME Padding 
  
 s.panel:setup {
    { -- Left widgets
      {--making a round bar that stuff will go inside
        {--stuff at the beginning actually goes here
			s.tbox_separator,
            s.mytaglist,
			s.tbox_separator,
            s.mypromptbox,
          layout = wibox.layout.align.horizontal
        },
        bg = theme.bg_normal,--the background color  --ME can delete to make transparent
		opacity=0.85,
        shape = my_round_shape,--the background shape. 
        widget = wibox.widget.background,
      },
      layout = wibox.layout.fixed.horizontal,
			s.tbox_separator,
			nmbox(s),
			ncbox(s),
    },
    {--middle widgets. This thing is expanded to as big as it can get, so if you want something
    --that isn't really long it has to be inside another set of {}, within middle
      nil,--used for making it centered
      {--making a round bar that stuff will go inside
        {--stuff in the middle actually goes here
        wibox.widget.systray(),
		s.mytasklist,
          layout = wibox.layout.fixed.horizontal
        },
        bg = theme.bg_normal,--the background color  --ME can delete to make transparent
		opacity=0.9,
        shape = gears.shape.rectangle,--the background shape. 
        widget = wibox.widget.background,
      },
      expand = "none",--used for making it centered
      layout = wibox.layout.align.horizontal,
    },
    { -- Right widgets
      {--making a round bar that stuff will go inside
        {--stuff at the end actually goes here
            spr,
            spr,
	    	memicon, 
			mem.widget,
            spr,
			cpuicon, 
            spr,
			cpu.widget, 
			tempicon, 
			temp.widget, 
            spr,
            neticon,
            net.widget,
            spr,
			spr,
            spr,
            volumearc_widget(),
            brightnessarc_widget(), 
            batteryarc_widget({ font="Play 8",medium_level_color="#ff6700",low_level_color="#8b0000",arc_thickness=2.0, show_current_level = false,   bg_color="#444444"}),
			spr,
			spr,
			spr,
            clock,
            spr,
            spr,
            spr,
          layout = wibox.layout.fixed.horizontal
        },
        bg = theme.bg_normal,--the background color  --ME can delete to make transparent
		opacity=0.9,
        shape = my_round_shape,--the background shape. 
        widget = wibox.widget.background,
      },
      layout = wibox.layout.fixed.horizontal,
    },
    layout = wibox.layout.align.horizontal,--an allign layout expands the middle widget to as big as it can get
  }

 return s.panel
end

return theme
