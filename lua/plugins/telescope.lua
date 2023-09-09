return {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  -- Lazy load on events.
  event = { 'BufWinEnter', 'BufReadPre', 'BufNewFile' },
  -- Lazy loads on this commands.
  cmd = { 'Telescope', 'Tel' },
  -- Lazy loads on this keys.
  dependencies = require('plugins.telescope.dependencies'),
  keys = require('plugins.telescope.keys'),
  config = function ()
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    local extensions = require('plugins.telescope.extensions')

    telescope.setup({
      file_ignore_patterns = {},
      color_devicons = true,
      defaults = {
        path_display = { 'smart' },
        -- initial_mode = 'normal',
        selection_caret = '❯ ',
        layout_config = {
          vertical = { width = 0.95 },
          horizontal = { width = 0.95 },
          preview_width = 0.5,
        },
        mappings = {
          ['i'] = {
            ['<C-j>'] = actions.move_selection_next,
            ['<C-k>'] = actions.move_selection_previous,
          },
          ['n'] = {
            ['q'] = actions.close,
          },
        },
      },
      vimgrep_arguments = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--smart-case',
        '--hidden',
        '--glob=!.git/',
      },
      extensions = extensions,
      pickers = require('plugins.telescope.pickers'),
    })

    for extension, _ in pairs(extensions) do
      telescope.load_extension(extension)
    end
  end
}
