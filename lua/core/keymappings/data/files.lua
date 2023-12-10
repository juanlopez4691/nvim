return {
  groups = {
    {
      whichkey = true,
      prefix = "<leader>f",
      name = "+Files",
      mappings = {
        {
          modes = { "n" },
          key = "<leader>ft",
          cmd = "<cmd>NvimTreeToggle<CR>",
          opt = {
            desc = "Toggle file explorer",
          },
        },
        {
          modes = { "n" },
          key = "<leader>fT",
          cmd = "<cmd>NvimTreeFindFileToggle<CR>",
          opt = {
            desc = "Toggle file explorer on current file",
          },
        },
        {
          modes = { "n" },
          key = "<leader>ff",
          cmd = "<cmd>lua FindFiles()<CR>",
          opt = {
            desc = "Find files",
          },
        },
        {
          modes = { "n" },
          key = "<leader>fr",
          cmd = "<cmd>lua TelescopeOldFiles()<CR>",
          opt = {
            desc = "Recent files",
          },
        },
        {
          modes = { "n" },
          key = "<leader>fw",
          cmd = "<cmd>write<cr>",
          opt = {
            desc = "Save",
          },
        },
        {
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
