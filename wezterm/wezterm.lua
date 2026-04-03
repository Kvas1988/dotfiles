local wezterm = require 'wezterm';
local act = wezterm.action

config = {}
-- LOOK'n'FEEL
config.color_scheme = 'Catppuccin Frappe'
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.font = wezterm.font("JetBrains Mono") --, {weight="Bold", italic=false})
config.font_size = 11.0

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
-- How many lines of scrollback you want to retain per tab
-- scrollback_lines = 3500
config.enable_scroll_bar = true


-- KEYS
config.leader = { key = "a", mods = "ALT", timeout_milliseconds = 1000 }
config.keys = {
  -- Window management
  { key = "a", mods = "LEADER", action = act { SendString = "`" } },
  { key = "s", mods = "LEADER", action = act { SplitVertical = { domain = "CurrentPaneDomain" } } }, -- key="-"
  { key = "v", mods = "LEADER", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } }, -- key="\\"
  { key = "z", mods = "LEADER", action = "TogglePaneZoomState" },
  { key = "c", mods = "LEADER", action = act { SpawnTab = "CurrentPaneDomain" } },

  { key = "h", mods = "LEADER", action = act.ActivatePaneDirection("Left") },
  { key = "j", mods = "LEADER", action = act.ActivatePaneDirection("Down") },
  { key = "k", mods = "LEADER", action = act.ActivatePaneDirection("Up") },
  { key = "l", mods = "LEADER", action = act.ActivatePaneDirection("Right") },

  { key = "H", mods = "LEADER", action = act { AdjustPaneSize = { "Left", 5 } } },
  { key = "J", mods = "LEADER", action = act { AdjustPaneSize = { "Down", 5 } } },
  { key = "K", mods = "LEADER", action = act { AdjustPaneSize = { "Up", 5 } } },
  { key = "L", mods = "LEADER", action = act { AdjustPaneSize = { "Right", 5 } } },

  { key = "Tab", mods = "LEADER", action = act.ActivateLastTab },
  { key = " ", mods = "LEADER", action = act.ActivateTabRelative(1) },
  { key = "1", mods = "LEADER", action = act { ActivateTab = 0 } },
  { key = "2", mods = "LEADER", action = act { ActivateTab = 1 } },
  { key = "3", mods = "LEADER", action = act { ActivateTab = 2 } },
  { key = "4", mods = "LEADER", action = act { ActivateTab = 3 } },
  { key = "5", mods = "LEADER", action = act { ActivateTab = 4 } },
  { key = "6", mods = "LEADER", action = act { ActivateTab = 5 } },
  { key = "7", mods = "LEADER", action = act { ActivateTab = 6 } },
  { key = "8", mods = "LEADER", action = act { ActivateTab = 7 } },
  { key = "9", mods = "LEADER", action = act { ActivateTab = 8 } },
  { key = "x", mods = "LEADER", action = act { CloseCurrentPane = { confirm = true } } },

  -- Activate Copy Mode
  { key = "[", mods = "LEADER", action = act.ActivateCopyMode },
}

-- tmux status
wezterm.on("update-right-status", function(window, _)
    local SOLID_LEFT_ARROW = ""
    local ARROW_FOREGROUND = { Foreground = { Color = "#c6a0f6" } }
    local prefix = ""

    if window:leader_is_active() then
        prefix = " " .. utf8.char(0x1f30a) -- ocean wave
        SOLID_LEFT_ARROW = utf8.char(0xe0b2)
    end

    if window:active_tab():tab_id() ~= 0 then
        ARROW_FOREGROUND = { Foreground = { Color = "#1e2030" } }
    end -- arrow color based on if tab is first pane

    window:set_left_status(wezterm.format {
        { Background = { Color = "#b7bdf8" } },
        { Text = prefix },
        ARROW_FOREGROUND,
        { Text = SOLID_LEFT_ARROW }
    })
end)

return config
