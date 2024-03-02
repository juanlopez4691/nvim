return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      css = { "stylelint" },
      javascript = { "eslint" },
      javascriptreact = { "eslint" },
      lua = { "luacheck" },
      scss = { "stylelint" },
      svelte = { "eslint" },
      typescript = { "eslint" },
      typescriptreact = { "eslint" },
    }

    -- Avoid errors thrown by global vim variables.
    lint.linters.luacheck.args = {
      globals = {
        "vim",
      },
    }

    local phpcs_exec = "phpcs"
    local vendor_path = "./vendor/bin/"
    local phpcs = require("lint").linters.phpcs

    -- Use local version of phpcs if available.
    if vim.fn.executable(vendor_path .. phpcs_exec) == 1 then
      phpcs_exec = vendor_path .. phpcs_exec
    else
      phpcs_exec = os.getenv("HOME") .. "/.composer/vendor/bin/phpcs"
    end

    lint.linters_by_ft.php = { "phpcs", "phpstan", "php" }
    phpcs.cmd = phpcs_exec

    -- Use local configuration of phpcs linter if available.
    if vim.fn.filereadable("phpcs.xml") == 1 then
      phpcs.args = {
        "-q",
        "--standard=phpcs.xml",
        "--report=json",
        "-",
      }
    elseif vim.fn.isdirectory("./wp-content") == 1 then
      -- Disable linting if its a WordPress project and no phpcs.xml exists.
      lint.linters_by_ft.php = {}
      phpcs.cmd = ""
    else
      -- Apply PSR12 rules by default.
      phpcs.args = {
        "-q",
        "--standard=PSR12",
        "--report=json",
        "-",
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
