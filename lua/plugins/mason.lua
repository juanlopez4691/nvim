return {
  'williamboman/mason.nvim',
  lazy = true,
  config = function()
    require('mason').setup({
      ui = {
        border = 'rounded',
        width = 0.95,
        height = 0.85,
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        },
      },
    })
  end,
}

