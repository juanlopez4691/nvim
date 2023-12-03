return {
  "VonHeikemen/lsp-zero.nvim",
  cond = _G.Settings.plugins_enabled.lsp_zero,
  branch = "v2.x",
  cmd = "LspInfo",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("lsp-zero.settings").preset({})
  end,
  dependencies = {
    -- LSP Support
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
  },
}