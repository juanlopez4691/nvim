local settings = require('core.settings')

vim.cmd('colorscheme ' .. settings.colorscheme)

require('lualine').setup({ theme = settings.colorscheme })
