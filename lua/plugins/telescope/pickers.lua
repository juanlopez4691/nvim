local actions = require('telescope.actions')

return {
  find_files = {
    hidden = true,
  },
  live_grep = {
    --@usage don't include the filename in the search results
    only_sort_text = true,
  },
  grep_string = {
    only_sort_text = true,
  },
  buffers = {
    ignore_current_buffer = true,
    sort_lastused = true,
    show_all_buffers = false,
    mappings = {
      i = {
        ['<C-d>'] = actions.delete_buffer,
      },
      n = {
        ['dd'] = actions.delete_buffer,
      },
    },
  },
  planets = {
    show_pluto = true,
    show_moon = true,
  },
  git_files = {
    hidden = true,
    show_untracked = true,
  },
  colorscheme = {
    enable_preview = true,
  },
}

