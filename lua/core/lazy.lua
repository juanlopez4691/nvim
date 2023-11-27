local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local colorscheme = function()
  local colorscheme = { _G.Settings.colorscheme_default }
  local ok, _ = pcall(require, _G.Settings.colorscheme)

  if ok then
    table.insert(colorscheme, _G.Settings.colorscheme_variant)
  end

  return colorscheme
end

require('lazy').setup({
  import = 'plugins',
  install = {
    colorscheme = colorscheme()
  },
  concurrency = 4,
  defaults = {
    lazy = true,
    version = '*',
  },
  checker = {
    enabled = true,
    notify = true,
  },
  ui = {
    border = 'rounded',
  },
})
