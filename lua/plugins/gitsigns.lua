return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufWinEnter', 'BufReadPre', 'BufNewFile' },
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

