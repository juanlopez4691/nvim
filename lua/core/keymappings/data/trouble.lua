return {
  groups = {
    {
      whichkey = true,
      prefix = "<leader>x",
      name = "Trouble",
      mappings = {
        {
          modes = { "n" },
          key = "<leader>xx",
          cmd = "<cmd>TroubleToggle<CR>",
          opt = {
            desc = "Trouble toggle",
          },
        },
        {
          modes = { "n" },
          key = "<leader>xd",
          cmd = "<cmd>Trouble document_diagnostics<CR>",
          opt = {
            desc = "Document diagnostics",
          },
        },
        {
          modes = { "n" },
          key = "<leader>xw",
          cmd = "<cmd>Trouble workspace_diagnostics<CR>",
          opt = {
            desc = "Workspace diagnostics",
          },
        },
        {
          modes = { "n" },
          key = "<leader>xr",
          cmd = "<cmd>Trouble lsp_references<CR>",
          opt = {
            desc = "Symbol references",
          },
        },
      },
    },
  },
}
