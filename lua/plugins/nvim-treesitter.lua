return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  cmd = {
    'TSInstall',
    'TSUninstall',
    'TSUpdate',
    'TSUpdateSync',
    'TSInstallInfo',
    'TSInstallSync',
    'TSInstallFromGrammar',
  },
  event = { 'BufWinEnter', 'BufReadPre', 'BufNewFile' },
  config = function ()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'css',
        'html',
        'javascript',
        'jsdoc',
        'json',
        'lua',
        'luadoc',
        'php',
        'phpdoc',
        'query',
        'scss',
        'twig',
        'typescript',
        'vim',
        'vimdoc',
        'yaml',
      },
      highlight = {
        enable = true,
      },
      sync_install = false,
      auto_install = true,
      context_commentstring = {
        enable = true,
      },
    })
  end,
}

