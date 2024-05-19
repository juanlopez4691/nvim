local opt = vim.opt

_G.Settings.plugins_enabled.indent_blankline = false
_G.Settings.plugins_enabled.neoscroll = false

_G.Settings.colorscheme = "catppuccin"
_G.Settings.colorscheme_variant = "catppuccin-mocha"

opt.background = "dark"

local indent_char = "│"

-- Indentation guides when using spaces.
local multispace = indent_char .. string.rep(" ", vim.o.shiftwidth - 1)

opt.list = true
opt.listchars = {
  tab = indent_char .. " ",
  leadmultispace = multispace,
  trail = "·",
  extends = "»",
  precedes = "«",
  nbsp = "×",
}
