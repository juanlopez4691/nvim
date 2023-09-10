local helpers = require('core.helpers')

-- Auto indent current empty line.
vim.keymap.set("n", "i", function()
  if #vim.fn.getline "." == 0 then
    return [["_cc]]
  else
    return "i"
  end
end, { expr = true })

local files = vim.fn.readdir(
  vim.fn.stdpath('config') .. '/lua/core/keymappings/data', [[v:val =~ '\.lua$']]
)

for _, file in ipairs(files) do
  local keymappings = require('core.keymappings.data.' .. file:gsub('%.lua$', ''))

  for _, keymap in ipairs(keymappings) do
    helpers.map(keymap.modes, keymap.key, keymap.cmd, keymap.opt)
  end
end
