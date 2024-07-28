return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>d",
      name = "+Diagnostics",
      icon = { icon = "", color = "green" },
      mappings = {
        {
          modes = { "n" },
          key = "<leader>df",
          cmd = "<cmd>lua vim.diagnostic.open_float()<CR>",
          icon = { icon = "", color = "green" },
          opt = {
            desc = "Diagnostics message",
          },
        },
        {
          modes = { "n" },
          key = "<leader>dl",
          cmd = "<cmd>lua vim.diagnostic.setloclist()<CR>",
          icon = { icon = "", color = "green" },
          opt = {
            desc = "Diagnostics list",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.trouble,
          modes = { "n" },
          key = "<leader>dt",
          cmd = "<cmd>Trouble diagnostics toggle focus=true<CR>",
          icon = { icon = "󰹹", color = "green" },
          opt = {
            desc = "Toggle diagnostics",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.trouble,
          modes = { "n" },
          key = "<leader>dd",
          cmd = "<cmd>Trouble diagnostics toggle filter.buf=0 focus=true<CR>",
          icon = { icon = "󰈙", color = "green" },
          opt = {
            desc = "Document diagnostics",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.trouble,
          modes = { "n" },
          key = "<leader>dr",
          cmd = "<cmd>Trouble lsp_references focus=true<CR>",
          icon = { icon = "", color = "green" },
          opt = {
            desc = "Symbol references",
          },
        },
        {
          modes = { "n" },
          key = "]d",
          cmd = "<cmd>lua vim.diagnostic.goto_next()<CR>",
          opt = {
            desc = "Next diagnostic",
          },
        },
        {
          modes = { "n" },
          key = "[d",
          cmd = "<cmd>lua vim.diagnostic.goto_prev()<CR>",
          opt = {
            desc = "Previous diagnostic",
          },
        },
      },
    },
  },
}
