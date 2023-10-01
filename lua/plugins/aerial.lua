local core_settings = require('core.settings')

return {
  'stevearc/aerial.nvim',
  dependencies = {
     'nvim-treesitter/nvim-treesitter',
     'nvim-tree/nvim-web-devicons'
  },
  opts = {
    attach_mode = 'global',
    backends = { 'lsp', 'treesitter', 'markdown', 'man' },
    disable_max_lines = core_settings.max_file.lines,
    disable_max_size = core_settings.max_file.size,
    layout = {
      min_width = { 30, 0.2 },
      resize_to_content = true,
    },
    autojump = true,
    show_guides = true,
    filter_kind = false,
    guides = {
      mid_item = '├╴',
      last_item = '╰╴',
      nested_top = '│ ',
      whitespace = '  ',
    },
  },
}
