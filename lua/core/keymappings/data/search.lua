return {
  groups = {
    {
      whichkey = true,
      prefix = "<leader>s",
      name = "+Search",
      mappings = {
        {
          modes = { "n" },
          key = "<leader>sg",
          cmd = "<cmd>lua TelescopeLiveGrep()<CR>",
          opt = {
            desc = "Live Grep (root dir)",
          },
        },
        {
          modes = { "n" },
          key = "<leader>sG",
          cmd = "<cmd>lua TelescopeLiveGrepArgs()<CR>",
          opt = {
            desc = "Live Grep with arguments (root dir)",
          },
        },
        {
          modes = { "n" },
          key = "<leader>sw",
          cmd = "<cmd>lua TelescopeGrepString()<CR>",
          opt = {
            desc = "Find word under cursor",
          },
        },
        -- Clear search
        {
          modes = { "n" },
          key = "<leader>sh",
          cmd = "<cmd>noh<CR>",
          opt = {
            desc = "Clear highligted search results",
          },
        },
      },
    },
  },
}
