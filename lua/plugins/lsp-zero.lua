return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  cmd = 'LspInfo',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('lsp-zero.settings').preset({})
  end,
  dependencies = {
    -- LSP Support
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    {
      'williamboman/mason-lspconfig.nvim',
      config = function()
        require('mason-lspconfig').setup()
      end,
    },
  }
}
