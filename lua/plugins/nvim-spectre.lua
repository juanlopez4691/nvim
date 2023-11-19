local core_settings = require('core.settings')

return {
  'nvim-pack/nvim-spectre',
  cond = core_settings.plugins_enabled.nvim_spectre,
  build = false,
  cmd = 'Spectre',
  opts = {
    open_cmd = 'noswapfile vnew',
  },
  -- stylua: ignore
}

