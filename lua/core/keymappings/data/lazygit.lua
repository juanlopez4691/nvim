return {
  groups = {
    {
      whichkey = true,
      prefix = "<leader>g",
      name = "Git",
      mappings = {
        {
          modes = { "n" },
          key = "<leader>gg",
          cmd = "<cmd>lua TerminalFullWindow('lazygit --use-config-file=$HOME/.config/lazygit/config.yml', { ctrl_hjkl = false })<CR>",
          opt = {
            desc = "Open lazygit",
          },
        },
      },
    },
  },
}
