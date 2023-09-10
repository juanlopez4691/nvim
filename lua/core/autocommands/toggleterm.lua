vim.api.nvim_create_autocmd(
  {
    callback = function()
  }
)

-- Change cursor shape in terminal attending to mode.
vim.api.nvim_set_hl(0, 'TerminalCursorShape', { underline = true })
vim.api.nvim_create_autocmd('TermEnter', {
  callback = function()
    vim.cmd [[setlocal winhighlight=TermCursor:TerminalCursorShape]]
  end,
})
