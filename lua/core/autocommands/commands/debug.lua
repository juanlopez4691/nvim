-- Add keymappings to close DAP float windows.
vim.api.nvim_create_autocmd("FileType", {
  pattern = "dap-float",
  callback = function(event)
    vim.keymap.set("n", "q", "<cmd>close!<CR>", { buffer = event.buf })
    vim.keymap.set("n", "<ESC>", "<cmd>close!<CR>", { buffer = event.buf })
  end,
})
