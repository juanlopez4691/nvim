local core_settings = require('core.settings')

return {
  'lewis6991/gitsigns.nvim',
  cond = core_settings.plugins_enabled.gitsigns,
  event = { 'BufReadPre', 'BufNewFile' },
  config = function ()
    require('gitsigns').setup({
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "x" },
        topdelete = { text = "x" },
        changedelete = { text = "/" },
        untracked = { text = "?" },
      },
    })
  end,
}

