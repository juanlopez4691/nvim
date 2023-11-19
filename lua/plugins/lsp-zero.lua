local core_settings = require('core.settings')

return {
  'VonHeikemen/lsp-zero.nvim',
  cond = core_settings.plugins_enabled.lsp_zero,
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
