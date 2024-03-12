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
    ---@diagnostic disable-next-line: missing-fields
    require("nvim-treesitter.configs").setup({
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
  end,
}
