return {
  groups = {
    {
      enabled = true,
      whichkey = false,
      mappings = {
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
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>d",
      name = "+Diagnostics",
      mappings = {
        {
          modes = { "n" },
          key = "<leader>df",
          cmd = "<cmd>lua vim.diagnostic.open_float()<CR>",
          opt = {
            desc = "Open float diagnostics message",
          },
        },
        {
          modes = { "n" },
          key = "<leader>dl",
          cmd = "<cmd>lua vim.diagnostic.setloclist()<CR>",
          opt = {
            desc = "Open diagnostics list",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.trouble,
          modes = { "n" },
          key = "<leader>dt",
          cmd = "<cmd>Trouble diagnostics toggle focus=true<CR>",
          opt = {
            desc = "Diagnostics toggle",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.trouble,
          modes = { "n" },
          key = "<leader>dd",
          cmd = "<cmd>Trouble diagnostics toggle filter.buf=0 focus=true<CR>",
          opt = {
            desc = "Document diagnostics",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.trouble,
          modes = { "n" },
          key = "<leader>dr",
          cmd = "<cmd>Trouble lsp_references focus=true<CR>",
          opt = {
            desc = "Symbol references",
          },
        },
      },
    },
  },
}
