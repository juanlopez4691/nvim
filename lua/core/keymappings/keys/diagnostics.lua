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
          key = "<leader>de",
          cmd = "<cmd>lua vim.diagnostic.open_float()<CR>",
          opt = {
            desc = "Open float diagnostics message",
          },
        },
        {
          modes = { "n" },
          key = "<leader>dq",
          cmd = "<cmd>lua vim.diagnostic.setloclist()<CR>",
          opt = {
            desc = "Open diagnostics list",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.touble,
          modes = { "n" },
          key = "<leader>dt",
          cmd = "<cmd>TroubleToggle<CR>",
          opt = {
            desc = "Trouble toggle",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.touble,
          modes = { "n" },
          key = "<leader>dd",
          cmd = "<cmd>Trouble document_diagnostics<CR>",
          opt = {
            desc = "Document diagnostics",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.touble,
          modes = { "n" },
          key = "<leader>dw",
          cmd = "<cmd>Trouble workspace_diagnostics<CR>",
          opt = {
            desc = "Workspace diagnostics",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.touble,
          modes = { "n" },
          key = "<leader>dr",
          cmd = "<cmd>Trouble lsp_references<CR>",
          opt = {
            desc = "Symbol references",
          },
        },
      },
    },
  },
}
