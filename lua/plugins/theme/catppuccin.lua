return {
  "catppuccin/nvim",
  cond = _G.Settings.plugins_enabled.catpuccin,
  priority = 10000, -- make sure to load this before all the other start plugins
}
