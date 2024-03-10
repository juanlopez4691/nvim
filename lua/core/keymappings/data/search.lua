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
            desc = "Grep word under cursor",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>sr",
          cmd = "<cmd>Telescope resume<CR>",
          opt = {
            desc = "Resume Telescope picker",
          },
        },
      },
    },
    {
      enabled = true,
      whichkey = false,
      mappings = {
        -- Center search results.
        {
          enabled = true,
          modes = { "n" },
          key = "n",
          cmd = "nzz",
          opt = {
            desc = "Next search occurrence",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "N",
          cmd = "Nzz",
          opt = {
            desc = "Previous search occurrence",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "*",
          cmd = "*zz",
          opt = {
            desc = "Search current word",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "#",
          cmd = "#zz",
          opt = {
            desc = "Search current word backwards",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "g*",
          cmd = "g*zz",
          opt = {
            desc = "Search current word (partial)",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "g#",
          cmd = "g#zz",
          opt = {
            desc = "Search current word (partial) backwards",
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
