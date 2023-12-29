return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>s",
      name = "+Search",
      mappings = {
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>sf",
          cmd = "<cmd>Telescope current_buffer_fuzzy_find<CR>",
          opt = {
            desc = "Find in buffer (fuzzy)",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>sg",
          cmd = "<cmd>lua TelescopeLiveGrep()<CR>",
          opt = {
            desc = "Live Grep (root dir)",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>sG",
          cmd = "<cmd>lua TelescopeLiveGrepArgs()<CR>",
          opt = {
            desc = "Live Grep with arguments (root dir)",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>sw",
          cmd = "<cmd>lua TelescopeGrepString()<CR>",
          opt = {
            desc = "Find word under cursor",
          },
        },
        -- Clear search
        {
          enabled = true,
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
