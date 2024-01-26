return {
  "stevearc/conform.nvim",
  cond = _G.Settings.plugins_enabled.code_format,
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        css = { { "stylelint", "prettierd", "prettier" } },
        html = { { "prettierd", "prettier", "htmlbeautifier" } },
        javascript = { { "eslintd", "prettierd", "prettier" } },
        json = { { "prettierd", "prettier" } },
        typescript = { { "eslintd", "prettierd", "prettier" } },
        scss = { { "stylelint", "prettierd", "prettier" } },
        lua = { "stylua" },
        php = { { "phpcbf", "pretty-php" } },
        yaml = { { "yamlfix", "prettierd", "prettier" } },
      },
    })
  end,
}
