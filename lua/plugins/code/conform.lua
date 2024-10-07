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
      default_format_opts = {
        stop_after_first = true,
      },
      formatters_by_ft = {
        css = { "prettier" },
        graphql = { "prettier" },
        html = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        json = { "prettier" },
        lua = { "stylua" },
        markdown = { "prettier" },
        php = { "phpcbf", "pretty-php" },
        scss = { "stylelint" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        yaml = { "prettier" },
      },
    })
  end,
}
