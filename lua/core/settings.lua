_G.Settings = {}

-- Plugins to enable.
_G.Settings.plugins_enabled = {
  code_format = true,
  codeium = true,
  colorful_winsep = true,
  comments = true,
  cursorword = true,
  diffview = true,
  flatten = true,
  gen = true,
  gitsigns = true,
  indent_blankline = true,
  lualine = true,
  mini_indentscope = true,
  surround = true,
  neoscroll = true,
  notify = true,
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
  tmux_navigator = true,
  toggleterm = true,
  trouble = true,
  which_key = true,
}

_G.Settings.colorscheme_default = "habamax"

_G.Settings.colorscheme = "catppuccin"
_G.Settings.colorscheme_variant = "catppuccin-mocha"

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
  local has_notify, notify = pcall(require, "notify")

  if has_notify then
    notify("Formatting on save is " .. status)
  else
    print("Formatting on save is " .. status)
  end

  return setting
end
