return {
  "nvim-treesitter/nvim-treesitter",
  cond = _G.Settings.plugins_enabled.nvim_treesitter,
  build = ":TSUpdate",
  cmd = {
    "TSBufDisable",
    "TSBufEnable",
    "TSBufToggle",
    "TSDisable",
    "TSEnable",
    "TSInstall",
    "TSInstallFromGrammar",
    "TSInstallInfo",
    "TSInstallSync",
    "TSModuleInfo",
    "TSToggle",
    "TSUninstall",
    "TSUpdate",
    "TSUpdateSync",
  },
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      lazy = true,
      config = function()
        ---@diagnostic disable-next-line: missing-fields
        require("ts_context_commentstring").setup({
          enable = true,
          enable_autocmd = false,
        })
        vim.g.skip_ts_context_commentstring_module = true
      end,
    }
  },
  config = function()
    local treesitter = require("nvim-treesitter")
    local treesitter_configs = require("nvim-treesitter.configs")

    ---@diagnostic disable-next-line: missing-fields
    treesitter_configs.setup({
      ensure_installed = require("plugins.code.treesitter.inc.ensure_installed"),
      ignore_install = {
        "html",
      },
      highlight = {
        enable = true,
        use_languagetree = true,
        disable = function(_, bufnr)
          return vim.b[bufnr].large_buf
        end,
        additional_vim_regex_highlighting = {
          "php",
        },
      },
      indent = {
        enabled = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
      sync_install = true,
      auto_install = true,
    })

    local buf = vim.api.nvim_get_current_buf()
    local highlighter = require "vim.treesitter.highlighter"

    -- Add treesitter as a backend for nvim-aerial.
    if highlighter.active[buf] then
      local aerial_ok, aerial = pcall(require, "aerial")
      if aerial_ok then
        aerial.setup({
          backends = { "treesitter", "lsp", "markdown", "man" },
        })
      end
    end

  end,


}
