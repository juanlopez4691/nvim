return {
  "VonHeikemen/lsp-zero.nvim",
  cond = _G.Settings.plugins_enabled.lsp_zero,
  branch = "v3.x",
  cmd = "LspInfo",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lsp_zero = require("lsp-zero")

    lsp_zero.on_attach(function(client, bufnr)
      lsp_zero.default_keymaps({ buffer = bufnr })
    end)
  end,
  dependencies = {
    -- LSP Support
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
  },
}
