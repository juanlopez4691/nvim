return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  cmd = {
    'TSBufDisable',
    'TSBufEnable',
    'TSBufToggle',
    'TSDisable',
    'TSEnable',
    'TSInstall',
    'TSInstallFromGrammar',
    'TSInstallInfo',
    'TSInstallSync',
    'TSModuleInfo',
    'TSToggle',
    'TSUninstall',
    'TSUpdate',
    'TSUpdateSync',
  },
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    { 'JoosepAlviste/nvim-ts-context-commentstring' },
    { 'nvim-treesitter/nvim-treesitter-textobjects' },
    -- HACK: remove when https://github.com/windwp/nvim-ts-autotag/issues/125 closed.
    { 'windwp/nvim-ts-autotag', opts = { autotag = { enable_close_on_slash = false } } },
  },
  config = function ()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'css',
        'javascript',
        'jsdoc',
        'json',
        'lua',
        'luadoc',
        'scss',
        'typescript',
        'vim',
        'vimdoc',
        'yaml',
      },
      highlight = {
        enable = true,
        use_languagetree = true,
        additional_vim_regex_highlighting = {
          'php',
        },
        disable = function(_, bufnr)
          return vim.b[bufnr].large_buf
        end,
      },
      indent = {
        enabled = true,
      },
      incremental_selection = {
        enable = true
      },
      autotag = {
        enabled = true,
        filetypes = {
          'javascript',
          'javascriptreact',
          'typescript',
          'xml',
        },
      },
      sync_install = true,
      auto_install = true,
      context_commentstring = {
        enable = true,
      },
    })
  end,
}
