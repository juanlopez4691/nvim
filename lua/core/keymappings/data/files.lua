return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>f",
      name = "+Files",
      mappings = {
        {
          enabled = _G.Settings.plugins_enabled.nvim_tree,
          modes = { "n" },
          key = "<leader>ft",
          cmd = "<cmd>NvimTreeToggle<CR>",
          opt = {
            desc = "Toggle file explorer",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.nvim_tree,
          modes = { "n" },
          key = "<leader>fT",
          cmd = "<cmd>NvimTreeFindFileToggle<CR>",
          opt = {
            desc = "Toggle file explorer on current file",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>ff",
          cmd = "<cmd>lua FindFiles()<CR>",
          opt = {
            desc = "Find files",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>fr",
          cmd = "<cmd>lua TelescopeOldFiles()<CR>",
          opt = {
            desc = "Recent files",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>fw",
          cmd = "<cmd>write<cr>",
          opt = {
            desc = "Save",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>fW",
          cmd = "",
          opt = {
            desc = "Save without formatting",
          },
        },
      },
    },
  },
}