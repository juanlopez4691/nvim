local M = {}

M.colorscheme = 'tokyonight-night'

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
