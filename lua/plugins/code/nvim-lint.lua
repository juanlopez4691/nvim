return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")
    local utils = require("core.utils")

    lint.linters_by_ft = {
      css = { "stylelint" },
      javascript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      lua = { "luacheck" },
      scss = { "stylelint" },
      typescript = { "eslint_d" },
      typescriptreact = { "eslint_d" },
    }

    -- Avoid errors thrown by global vim variables.
    lint.linters.luacheck.args = {
      globals = {
        "vim",
      },
    }

    local phpcs = require("lint").linters.phpcs

    lint.linters_by_ft.php = { "phpcs", "phpstan", "php" }

    -- Find closest phpcs.xml file.
    local phpcs_xml_path = utils.find_closest_file("phpcs.xml")

    -- Use local configuration of phpcs linter if available.
    if phpcs_xml_path then
      phpcs.args = {
        "-q",
        "--standard=" .. phpcs_xml_path,
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
