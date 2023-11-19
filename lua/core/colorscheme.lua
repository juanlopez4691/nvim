local settings = require('core.settings')

local colorscheme = settings.colorscheme_default
local ok, _ = pcall(require, settings.colorscheme)
if ok then
  colorscheme = settings.colorscheme_variant
end

vim.cmd('colorscheme ' .. colorscheme)

