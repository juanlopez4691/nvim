return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>z",
      name = "+Folds",
      mappings = {
        {
          enabled = _G.Settings.plugins_enabled.nvim_ufo,
          modes = { "n" },
          key = "<leader>zR",
          cmd = "<cmd>lua require('ufo').openAllFolds()<CR>",
          opt = {
            desc = "Open all folds",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.nvim_ufo,
          modes = { "n" },
          key = "<leader>zM",
          cmd = "<cmd>lua require('ufo').closeAllFolds()<CR>",
          opt = {
            desc = "Close all folds",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.nvim_ufo,
          modes = { "n" },
          key = "<leader>zK",
          cmd = "<cmd>lua PeekFoldedLinesUnderCursor()<CR>",
          opt = {
            desc = "Peek folded lines under cursor",
          },
        },
      },
    },
  },
}
