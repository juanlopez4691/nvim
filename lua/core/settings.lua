local M = {}

-- Plugins to enable.
M.plugins_enabled = {
  aerial = true,
  colorful_winsep = true,
  comments = true,
  difview = true,
  flatten = true,
  gitsigns = true,
  indent_blankline = true,
  lspkind = true,
  lsp_zero = true,
  lualine = true,
  mini_indentscope = true,
  mini_surround = true,
  nvim_autopairs = true,
  nvim_cmp = true,
  nvim_colorizer = true,
  nvim_spectre = true,
  nvim_tree = true,
  nvim_treesitter = true,
  nvim_ufo = true,
  telescope = true,
  toggleterm = true,
  trouble = true,
}

M.colorscheme_default = 'habamax'

-- M.colorscheme = 'tokyonight'
-- M.colorscheme_variant = 'tokyonight-night'

M.colorscheme = 'kanagawa'
M.colorscheme_variant = 'kanagawa-wave'

M.plugins_enabled.tokyonight = M.colorscheme == 'tokyonight'
M.plugins_enabled.kanagawa = M.colorscheme == 'kanagawa'

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
