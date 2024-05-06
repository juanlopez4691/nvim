local augroup = vim.api.nvim_create_augroup("edit", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = "500" })
  end,
  desc = "Highlight yanked text",
})

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  group = augroup,
  callback = function()
    local filetype = vim.o.filetype

    if filetype == "terminal" then
      return
    end

    vim.cmd([[highlight RedundantSpaces ctermbg=red guibg=red]])
    vim.cmd([[match RedundantSpaces /\s\+$/]])
  end,
  desc = "Higlight extra spaces",
})
