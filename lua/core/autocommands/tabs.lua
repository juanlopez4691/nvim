local augroup = vim.api.nvim_create_augroup("tabs", {})

local onTabEnter = function(path)
  local dirname = path:match("(.*[/\\])")
  vim.cmd("tcd " .. dirname)
end

-- Change the working directory for new tab.
vim.api.nvim_create_autocmd("TabNewEntered", {
  group = augroup,
  pattern = "*",
  callback = function()
    onTabEnter("<amatch>")
  end,
})
