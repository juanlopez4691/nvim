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

  for _, group in ipairs(keymappings.groups) do
    for _, mapping in ipairs(group.mappings) do
      helpers.map(mapping.modes, mapping.key, mapping.cmd, mapping.opt)
    end
  end
end

