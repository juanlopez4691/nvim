local utils = require("core.utils")

vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("Rooter", {}),
  desc = "Find project root on BufEnter.",
  callback = function()
    vim.cmd("tcd " .. utils.get_project_root())
  end,
})
