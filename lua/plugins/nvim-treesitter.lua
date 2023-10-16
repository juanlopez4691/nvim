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
    { 'windwp/nvim-ts-autotag' },
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
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = true,
      },
      sync_install = true,
      auto_install = true,
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
    })
  end,
}
