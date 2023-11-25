local actions = require('telescope.actions')

return {
  fzf = {
    fuzzy = true, -- false will only do exact matching
    override_generic_sorter = true, -- override the generic sorter
    override_file_sorter = true, -- override the file sorter
    case_mode = 'smart_case', -- or 'ignore_case' or 'respect_case'
  },
  live_grep_args = {},
  media_files = {
    -- filetypes whitelist
    -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
    filetypes = {"png", "webp", "jpg", "jpeg"},
    -- find command (defaults to `fd`)
    find_cmd = "rg"
  },
  undo = {},
}

