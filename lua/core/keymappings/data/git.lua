return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>g",
      name = "+Git",
      mappings = {
        {
          enabled = _G.Settings.plugins_enabled.toggleterm,
          modes = { "n" },
          key = "<leader>gg",
          cmd = "<cmd>lua TerminalFullWindow('lazygit --use-config-file=$HOME/.config/lazygit/config.yml', { ctrl_hjkl = false })<CR>",
          opt = {
            desc = "Open lazygit",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>gl",
          cmd = "<cmd>Telescope git_commits prompt_prefix=💡›<CR>",
          opt = {
            desc = "Commits log",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>gc",
          cmd = "<cmd>Telescope git_bcommits prompt_prefix=📝›<CR>",
          opt = {
            desc = "Buffer commits",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>gb",
          cmd = "<cmd>Telescope git_branches prompt_prefix=🌱›<CR>",
          opt = {
            desc = "Branches",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>gs",
          cmd = "<cmd>Telescope git_status prompt_prefix=🔎›<CR>",
          opt = {
            desc = "Status",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.gitsigns,
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
      enabled = true,
      whichkey = true,
      prefix = "<leader>gd",
      name = "+Diff",
      mappings = {
        {
          enabled = _G.Settings.plugins_enabled.diffview,
          modes = { "n" },
          key = "<leader>gdd",
          cmd = "<cmd>DiffviewOpen<CR>",
          opt = {
            desc = "Open diff view",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.diffview,
          modes = { "n" },
          key = "<leader>gdh",
          cmd = "<cmd>DiffviewFileHistory %<CR>",
          opt = {
            desc = "File history",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>gdb",
          cmd = "<cmd>DiffOrig<CR>",
          opt = {
            desc = "Diff buffer to original",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.diffview,
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
