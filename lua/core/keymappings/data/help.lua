return {
  groups = {
    {
      whichkey = true,
      prefix = "<leader>h",
      name = "+Help",
      mappings = {
        {
          modes = { "n" },
          key = "<leader>hh",
          cmd = "<cmd>help<CR>",
          opt = {
            desc = "Help",
          },
        },
        {
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
