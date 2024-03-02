return {
  "stevearc/conform.nvim",
  cond = _G.Settings.plugins_enabled.code_format,
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  config = function()
    local conform = require("conform")

    conform.setup({
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
