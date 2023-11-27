return {
  'lewis6991/gitsigns.nvim',
  cond = _G.Settings.plugins_enabled.gitsigns,
  event = { 'BufReadPre', 'BufNewFile' },
  config = function ()
    local gs = require('gitsigns')

    gs.setup({
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "x" },
        topdelete = { text = "x" },
        changedelete = { text = "/" },
        untracked = { text = "?" },
      },
      current_line_blame = true,
    })

    -- Global functions used in keymappings
    GitSignsFullBlameLine = function()
      gs.blame_line{ full=true }
    end

  end,
}
