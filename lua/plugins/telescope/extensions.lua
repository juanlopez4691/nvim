local actions = require('telescope.actions')

return {
  file_browser = {
    theme = 'ivy',
    -- disables netrw and use telescope-file-browser in its place
    hijack_netrw = true,
    grouped = true,
    prompt_path = true,
    initial_mode = 'normal',
    dir_icon = '',
    mappings = {
      ['i'] = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
      },
      n = {
        ['q'] = actions.close,
      },
    },
  },
  undo = {},
  media_files = {
    -- filetypes whitelist
    -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
    filetypes = {"png", "webp", "jpg", "jpeg"},
    -- find command (defaults to `fd`)
    find_cmd = "rg"
  },
  live_grep_args = {},
  fzf = {
    fuzzy = true, -- false will only do exact matching
    override_generic_sorter = true, -- override the generic sorter
    override_file_sorter = true, -- override the file sorter
    case_mode = 'smart_case', -- or 'ignore_case' or 'respect_case'
  },
}

