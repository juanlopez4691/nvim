return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>cd",
      name = "+Diagnostics",
      mappings = {
        {
          enabled = _G.Settings.plugins_enabled.touble,
          modes = { "n" },
          key = "<leader>cdt",
          cmd = "<cmd>TroubleToggle<CR>",
          opt = {
            desc = "Trouble toggle",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.touble,
          modes = { "n" },
          key = "<leader>cdd",
          cmd = "<cmd>Trouble document_diagnostics<CR>",
          opt = {
            desc = "Document diagnostics",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.touble,
          modes = { "n" },
          key = "<leader>cdw",
          cmd = "<cmd>Trouble workspace_diagnostics<CR>",
          opt = {
            desc = "Workspace diagnostics",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.touble,
          modes = { "n" },
          key = "<leader>cdr",
          cmd = "<cmd>Trouble lsp_references<CR>",
          opt = {
            desc = "Symbol references",
          },
        },
      },
    },
  },
}
