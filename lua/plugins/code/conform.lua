return {
  "stevearc/conform.nvim",
  cond = _G.Settings.plugins_enabled.code_format,
  event = { "BufReadPre", "BufNewFile" },
  cmd = { "ConformInfo" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters = {
        injected = {
          options = { ignore_errors = true },
        },
      },
      format = {
        timeout_ms = 3000,
        async = false,
        quiet = false,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        css = { "prettier" },
        graphql = { "prettier" },
        html = { "prettier" },
        javascript = { { "prettier", "eslint" } },
        javascriptreact = { { "prettier", "eslint" } },
        json = { "prettier" },
        lua = { "stylua" },
        markdown = { "prettier" },
        php = { { "phpcbf", "pretty-php" } },
        scss = { { "prettier", "stylelint" } },
        svelte = { "prettier" },
        typescript = { { "prettier", "eslint" } },
        typescriptreact = { { "prettier", "eslint" } },
        yaml = { "prettier" },
      },
    })
  end,
}
