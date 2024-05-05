local augroup = vim.api.nvim_create_augroup('telescope', {})

vim.api.nvim_create_autocmd(
  'User',
  {
    group = augroup,
    pattern = "TelescopePreviewerLoaded",
    callback = function()
      vim.wo.number = true
    end,
  }
)

