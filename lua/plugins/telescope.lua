return {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  -- Lazy load on events.
  event = { 'BufWinEnter', 'BufReadPre', 'BufNewFile' },
  -- Lazy loads on this commands.
  cmd = { 'Telescope', 'Tel' },
  dependencies = require('plugins.telescope.dependencies'),
  config = function ()
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    local extensions = require('plugins.telescope.extensions')

    telescope.setup({
      file_ignore_patterns = {},
      color_devicons = true,
      defaults = {
        path_display = { 'smart' },
        initial_mode = 'normal',
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

    local lsp_preview_settings = {
      jump_type = 'never',
      layout_strategy = 'vertical',
      path_display = { 'smart' },
      layout_config = {
        width = 0.8,
        height = 0.8,
        preview_cutoff = 0,
        prompt_position = 'bottom',
      },
    }

    -- Shows a preview window for LSP definitions at cursor position.
    LspDefinitionsAtCursor = function()
      require('telescope.builtin').lsp_definitions(lsp_preview_settings)
    end

    -- Shows a preview window for LSP references at cursor position.
    LspReferencesAtCursor = function()
      require('telescope.builtin').lsp_references(lsp_preview_settings)
    end

    -- Shows a preview window for LSP implementations at cursor position.
    LspImplementationsAtCursor = function()
      require('telescope.builtin').lsp_implementations(lsp_preview_settings)
    end
  end
}
