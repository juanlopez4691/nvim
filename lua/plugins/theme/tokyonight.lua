return {
  'folke/tokyonight.nvim',
  cond = _G.Settings.plugins_enabled.tokyonight,
  priority = 10000, -- make sure to load this before all the other start plugins
}
