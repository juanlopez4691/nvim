return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>c",
      name = "+Code",
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>cf",
          cmd = "<cmd>lua vim.lsp.buf.format({ async = false })<cr>",
          opt = {
            desc = "Format code",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>cd",
          cmd = "<cmd>lua LspDefinitionsAtCursor()<CR>",
          opt = {
            desc = "Show definitions",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>cr",
          cmd = "<cmd>lua LspReferencesAtCursor()<CR>",
          opt = {
            desc = "Show references",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>ci",
          cmd = "<cmd>lua LspImplementationsAtCursor()<CR>",
          opt = {
            desc = "Show implementations",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>cs",
          cmd = "<cmd>Telescope lsp_document_symbols<CR>",
          opt = {
            desc = "Document symbols",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>cw",
          cmd = "<cmd>Telescope lsp_workspace_symbols query=main<CR>",
          opt = {
            desc = "Workspace symbols",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.aerial,
          modes = { "n" },
          key = "<leader>co",
          cmd = "<cmd>lua ToggleAerial()<CR>",
          opt = {
            desc = "Code outline",
          },
        },
      },
    },
  },
}
