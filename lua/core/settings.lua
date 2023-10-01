local M = {}

M.colorscheme = 'tokyonight-night'

-- Set global limits for large files.
M.max_file = {
  size = 1024 * 100,
  lines = 10000.
}

-- Set dimensions of terminal window.
M.terminal = {
  size = {
    float = {
      width = math.ceil(vim.o.columns * 0.95),
      height = math.ceil(vim.o.lines * 0.87),
    },
    horizontal = {
      height = 15,
    },
    vertical = {
      width = math.ceil(vim.o.columns * 0.40),
    },
  },
}

return M
