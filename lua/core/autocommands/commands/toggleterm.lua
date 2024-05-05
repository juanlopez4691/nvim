local opt = vim.opt
local augroup = vim.api.nvim_create_augroup('terminal', {})

-- Change cursor shape in terminal attending to editor mode.
vim.api.nvim_set_hl(0, 'TerminalCursorShape', { underline = true })

vim.api.nvim_create_autocmd(
  'TermOpen',
  {
    group = augroup,
    callback = function()
      opt.statuscolumn = ''
    end,
  }
)

vim.api.nvim_create_autocmd(
  'TermEnter',
  {
    group = augroup,
    callback = function()
      opt.statuscolumn = ''
      vim.cmd [[setlocal signcolumn=no]]
      vim.cmd [[setlocal winhighlight=TermCursor:TerminalCursorShape]]
    end,
  }
)
