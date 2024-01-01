return {
  "VonHeikemen/lsp-zero.nvim",
  cond = _G.Settings.plugins_enabled.lsp_zero,
  branch = "v3.x",
  cmd = "LspInfo",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lsp_zero = require("lsp-zero")
    local lsp_keymappings = require("plugins.lsp.inc.lsp_keys")

    lsp_zero.on_attach(function(_, bufnr)
      for _, m in ipairs(lsp_keymappings) do
        vim.keymap.set("n", m.key, m.cmd, { buffer = bufnr, remap = false, desc = m.desc })
      end
    end)
  end,
  dependencies = {
    -- LSP Support
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
  },
}
