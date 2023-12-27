-- ------------------------
-- Custom defined commands
-- ------------------------

-- Show differences between current buffer and the original file.
vim.cmd([[
  command DiffOrig vert new
  \ | set buftype=nofile
  \ | read ++edit #
  \ | 0d_
  \ | diffthis | wincmd p | diffthis
]])
