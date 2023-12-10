return {
  groups = {
    {
      whichkey = true,
      prefix = "<leader>g",
      name = "+Git",
      mappings = {
        {
          modes = { "n" },
          key = "<leader>gg",
          cmd = "<cmd>lua TerminalFullWindow('lazygit --use-config-file=$HOME/.config/lazygit/config.yml', { ctrl_hjkl = false })<CR>",
          opt = {
            desc = "Open lazygit",
          },
        },
        {
          modes = { "n" },
          key = "<leader>gl",
          cmd = "<cmd>Telescope git_commits prompt_prefix=💡›<CR>",
          opt = {
            desc = "Commits log",
          },
        },
        {
          modes = { "n" },
          key = "<leader>gc",
          cmd = "<cmd>Telescope git_bcommits prompt_prefix=📝›<CR>",
          opt = {
            desc = "Buffer commits",
          },
        },
        {
          modes = { "n" },
          key = "<leader>gb",
          cmd = "<cmd>Telescope git_branches prompt_prefix=🌱›<CR>",
          opt = {
            desc = "Branches",
          },
        },
        {
          modes = { "n" },
          key = "<leader>gs",
          cmd = "<cmd>Telescope git_status prompt_prefix=🔎›<CR>",
          opt = {
            desc = "Status",
          },
        },
        {
          modes = { "n" },
          key = "<leader>gk",
          cmd = "<cmd>lua GitSignsFullBlameLine()<CR>",
          opt = {
            desc = "Full line blame",
          },
        },
      },
    },
    {
      whichkey = true,
      prefix = "<leader>gd",
      name = "+Diff",
      mappings = {
        {
          modes = { "n" },
          key = "<leader>gdl",
          cmd = "<cmd>DiffviewOpen<CR>",
          opt = {
            desc = "Open diff view",
          },
        },
        {
          modes = { "n" },
          key = "<leader>gdh",
          cmd = "<cmd>DiffviewFileHistory %<CR>",
          opt = {
            desc = "File history",
          },
        },
        {
          modes = { "n" },
          key = "<leader>gdc",
          cmd = "<cmd>DiffviewClose<CR>",
          opt = {
            desc = "Close diff",
          },
        },
      },
    },
  },
}
