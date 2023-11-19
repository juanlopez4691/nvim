local core_settings = require('core.settings')

return {
  "folke/trouble.nvim",
  cond = core_settings.plugins_enabled.trouble,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = 'TroubleToggle',
  opts = {},
}

