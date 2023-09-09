return {
  'lukas-reineke/indent-blankline.nvim',
  event = { 'BufWinEnter', 'BufReadPre', 'BufNewFile' },
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter' },
  },
  config = function ()
    require('indent_blankline').setup({
      char = '│',
      filetype_exclude = {
        'help',
        'alpha',
        'dashboard',
        'neo-tree',
        'Trouble',
        'lazy',
        'mason',
        'notify',
        'toggleterm',
        'lazyterm',
      },
      space_char_blankline = ' ',
      show_trailing_blankline_indent = false,
      show_current_context = true,
      show_current_context_start = false,
      show_first_indent_level = false,
    })
  end
}
