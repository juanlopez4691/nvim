return {
  groups = {
    {
      whichkey = true,
      prefix = "<leader>x",
      name = "Trouble",
      mappings = {
        {
          modes = { "n" },
          key = "<leader>xx",
          cmd = "<cmd>TroubleToggle<CR>",
          opt = {
            desc = "Trouble toggle",
          },
        },
      },
    },
  },
}
