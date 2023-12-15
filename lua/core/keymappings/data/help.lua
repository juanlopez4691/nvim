return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>h",
      name = "+Help",
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>hh",
          cmd = "<cmd>help<CR>",
          opt = {
            desc = "Help",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>hs",
          cmd = "<cmd>Telescope help_tags prompt_prefix=💡›<CR>",
          opt = {
            desc = "Help search",
          },
        },
      },
    },
  },
}
