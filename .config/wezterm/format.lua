local wezterm = require("wezterm")
local colors = require("colors")

local function BaseName(s)
  return string.gsub(s, "(.*[/\\])(.*)", "%2")
end

wezterm.on("format-window-title", function(tab)
  return BaseName(tab.active_pane.foreground_process_name)
end)

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local SYMBOL_COLOR = { "#ffb2cc", "#a4a4a4" }
  local FONT_COLOR = { "#dddddd", "#888888" }
  local BACK_COLOR = colors.DEFAULT_BG.Color
  local HOVER_COLOR = "#434343"

  local index = tab.is_active and 1 or 2

  local bg = hover and HOVER_COLOR or BACK_COLOR
  local zoomed = tab.active_pane.is_zoomed and "🔎 " or " "

  return {
    { Foreground = { Color = SYMBOL_COLOR[index] } },
    { Background = { Color = bg } },

    { Foreground = { Color = FONT_COLOR[index] } },
    { Background = { Color = bg } },
    { Text = " " },
    { Text = tab.active_pane.title },
    -- { Text = BaseName(tab.active_pane.foreground_process_name) },
    { Text = " " },
  }
end)
