return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      css = { "stylelint" },
      javascript = { "eslint_d", "eslint" },
      javascriptreact = { "eslint_d", "eslint" },
      lua = { "luacheck" },
      scss = { "stylelint" },
      typescript = { "eslint_d", "eslint" },
      typescriptreact = { "eslint_d", "eslint" },
    }

    -- Avoid errors thrown by global vim variables.
    require("lint").linters.luacheck.args = {
      globals = {
        "vim",
      },
    }

    local phpcs_exec = "phpcs"
    local vendor_path = "./vendor/bin/"
    local phpcs = require("lint").linters.phpcs

    if vim.fn.executable(vendor_path .. phpcs_exec) == 1 then
      phpcs_exec = vendor_path .. phpcs_exec
    else
      phpcs_exec = ""
    end

    if phpcs_exec == "" then
      lint.linters_by_ft.php = { "phpstan", "php" }

      phpcs.args = {
        "-q",
        -- <- Add a new parameter here
        "--standard=PSR12",
        "--report=json",
        "-",
      }
    else
      lint.linters_by_ft.php = { "phpcs", "phpstan", "php" }

      phpcs.cmd = phpcs_exec
      phpcs.args = {
        "-q",
        "--report=json",
        "-",
        "--standard=phpcs.xml",
      }
    end

    -- Create autocommand to run linters on save.
    local augroup = vim.api.nvim_create_augroup("CodeLinting", {})

    vim.api.nvim_create_autocmd({
      "BufReadPost",
      "InsertLeave",
      "TextChanged",
      "FocusGained",
    }, {
      pattern = "*",
      group = augroup,
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
