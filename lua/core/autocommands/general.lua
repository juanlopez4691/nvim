local augroup = vim.api.nvim_create_augroup("general", {})

-- Close man and help with just <q>.
vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = {
    "help",
    "man",
    "lspinfo",
    "checkhealth",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>q<cr>", { buffer = event.buf, silent = true })
  end,
})

-- Set cursor line only in active window.
vim.api.nvim_create_autocmd("WinLeave", {
  group = augroup,
  pattern = "*",
  command = "setlocal nocursorline",
})

vim.api.nvim_create_autocmd("WinEnter", {
  group = augroup,
  pattern = "*",
  command = "setlocal cursorline cursorlineopt=both",
})
