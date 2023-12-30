_G.Settings = {}

-- Plugins to enable.
_G.Settings.plugins_enabled = {
  aerial = true,
  codeium = true,
  colorful_winsep = true,
  comments = true,
  diffview = true,
  flatten = true,
  gitsigns = true,
  indent_blankline = true,
  lsp_zero = true,
  lualine = true,
  mini_indentscope = true,
  mini_surround = true,
  neogen = true,
  none_ls = true,
  nvim_autopairs = true,
  nvim_bqf = true,
  nvim_cmp = true,
  nvim_colorizer = true,
  nvim_dap = true,
  nvim_dap_ui = true,
  nvim_tree = true,
  nvim_treesitter = true,
  nvim_ufo = true,
  telescope = true,
  toggleterm = true,
  trouble = true,
}

_G.Settings.colorscheme_default = "habamax"

_G.Settings.colorscheme = "catppuccin"
_G.Settings.colorscheme_variant = "catppuccin-mocha"

-- _G.Settings.colorscheme = "tokyonight"
-- _G.Settings.colorscheme_variant = "tokyonight-night"

-- _G.Settings.colorscheme = 'kanagawa'
-- _G.Settings.colorscheme_variant = 'kanagawa-wave'

_G.Settings.plugins_enabled.tokyonight = _G.Settings.colorscheme == "tokyonight"
_G.Settings.plugins_enabled.kanagawa = _G.Settings.colorscheme == "kanagawa"
_G.Settings.plugins_enabled.catppuccin = _G.Settings.colorscheme == "catppuccin"

-- Set global limits for large files.
_G.Settings.max_file = {
  size = 1024 * 100,
  lines = 10000,
}

_G.Settings.cmp_max_length = 50

-- Set dimensions of terminal window.
_G.Settings.terminal = {
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

_G.Settings.format_on_save = true

_G.ToggleSetting = function(setting)
  local status = "off"

  setting = not setting

  if setting then
    status = "on"
  end
  print("Formatting on save is " .. status)

  return setting
end
