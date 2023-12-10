return {
  groups = {
    {
      whichkey = true,
      prefix = "<leader>d",
      name = "+Diagnostics",
      mappings = {
        {
          modes = { "n" },
          key = "<leader>dt",
          cmd = "<cmd>TroubleToggle<CR>",
          opt = {
            desc = "Trouble toggle",
          },
        },
        {
          modes = { "n" },
          key = "<leader>dd",
          cmd = "<cmd>Trouble document_diagnostics<CR>",
          opt = {
            desc = "Document diagnostics",
          },
        },
        {
          modes = { "n" },
          key = "<leader>dw",
          cmd = "<cmd>Trouble workspace_diagnostics<CR>",
          opt = {
            desc = "Workspace diagnostics",
          },
        },
        {
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
