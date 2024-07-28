return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>z",
      name = "+Folds",
      icon = { icon = "󰤻", color = "yellow" },
      mappings = {
        {
          enabled = _G.Settings.plugins_enabled.nvim_ufo,
          modes = { "n" },
          key = "<leader>zR",
          cmd = "<cmd>lua require('ufo').openAllFolds()<CR>",
          icon = { icon = "󰿇", color = "yellow" },
          opt = {
            desc = "Open all folds",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.nvim_ufo,
          modes = { "n" },
          key = "<leader>zM",
          cmd = "<cmd>lua require('ufo').closeAllFolds()<CR>",
          icon = { icon = "󰍁", color = "yellow" },
          opt = {
            desc = "Close all folds",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.nvim_ufo,
          modes = { "n" },
          key = "<leader>zK",
          cmd = "<cmd>lua PeekFoldedLinesUnderCursor()<CR>",
          icon = { icon = "󰛐", color = "yellow" },
          opt = {
            desc = "Peek fold",
          },
        },
      },
    },
  },
}
