local colorscheme = _G.Settings.colorscheme_default
local ok, _ = pcall(require, _G.Settings.colorscheme)

if ok then
  colorscheme = _G.Settings.colorscheme_variant
end

vim.cmd("colorscheme " .. colorscheme)
