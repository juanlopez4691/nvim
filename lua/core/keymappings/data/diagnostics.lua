return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>d",
      name = "+Diagnostics",
      mappings = {
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
