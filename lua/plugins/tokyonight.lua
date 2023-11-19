local core_settings = require('core.settings')

return {
  'folke/tokyonight.nvim',
  cond = core_settings.plugins_enabled.tokyonight,
  priority = 10000, -- make sure to load this before all the other start plugins
}

