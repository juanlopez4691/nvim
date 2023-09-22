return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  event = { 'CmdLineEnter', 'BufWinEnter', 'BufReadPre', 'BufNewFile' },
  config = function()
    require('lsp-zero.settings').preset({})
  end,
  dependencies = {
    -- LSP Support
    require('plugins.lsp.nvim-lspconfig'),
    {
      'williamboman/mason-lspconfig.nvim',
      config = function()
        require('mason-lspconfig').setup()
      end,
    },

    -- Autocompletion
    require('plugins.lsp.nvim-cmp'),

    -- Completion sources.
    {
      'hrsh7th/cmp-nvim-lsp',
    },
    {
      'hrsh7th/cmp-buffer',
    },
    {
      'hrsh7th/cmp-cmdline',
    },
    {
      'hrsh7th/cmp-path',
    },
    {
      'hrsh7th/cmp-nvim-lua',
    },
    {
      'hrsh7th/cmp-nvim-lsp-signature-help',
    },

    -- Snippets.
    {
      'L3MON4D3/LuaSnip',
    },
  }
}

