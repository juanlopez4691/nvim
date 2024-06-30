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
          key = "<leader>ca",
          cmd = "<cmd>lua vim.lsp.buf.code_action()<cr>",
          opt = {
            desc = "Code actions",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>cn",
          cmd = "<cmd>lua vim.lsp.buf.rename()<cr>",
          opt = {
            desc = "Rename symbol",
          },
        },
        {
          enabled = true,
          modes = { "n", "v" },
          key = "<leader>cl",
          cmd = function()
            require("lint").try_lint()
          end,
          opt = {
            desc = "Lint code",
          },
        },
        {
          enabled = true,
          modes = { "n", "v" },
          key = "<leader>cf",
          cmd = "<cmd>CodeFormat<cr>",
          opt = {
            desc = "Format code",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>cF",
          cmd = "<cmd>lua _G.Settings.format_on_save = ToggleSetting(_G.Settings.format_on_save)<cr>",
          opt = {
            desc = "Toggle format on save",
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
          key = "<leader>cS",
          cmd = "<cmd>Telescope lsp_workspace_symbols query=main<CR>",
          opt = {
            desc = "Workspace symbols",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.trouble,
          modes = { "n" },
          key = "<leader>co",
          cmd = "<cmd>Trouble lsp_document_symbols focus=true follow=true win.position=right win.size=0.25<CR>",
          opt = {
            desc = "Code outline",
          },
        },
      },
    },
  },
}
