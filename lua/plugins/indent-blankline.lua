return {
  'lukas-reineke/indent-blankline.nvim',
  event = { 'BufWinEnter', 'BufReadPre', 'BufNewFile' },
  main = 'ibl',
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter' },
  },
  config = function ()
    require('ibl').setup({
      indent = {
        char = '│',
      },
      exclude = {
        filetypes = {
          '',
          'alpha',
          'checkhealth',
          'dashboard',
          'gitcommit',
          'help',
          'lazy',
          'lazyterm',
          'lspinfo',
          'man',
          'mason',
          'neo-tree',
          'notify',
          'packer',
          'TelescopePrompt',
          'TelescopeResults',
          'toggleterm',
          'Trouble',
        },
      },
      scope = {
        show_start = false,
        show_end = false,
      },
    })
  end
}
