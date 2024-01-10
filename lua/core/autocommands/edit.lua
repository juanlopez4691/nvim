local augroup = vim.api.nvim_create_augroup("edit", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = "500" })
  end,
  desc = "Highlight yanked text",
})
