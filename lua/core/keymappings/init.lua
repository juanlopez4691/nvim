local wk = require("which-key")
local helpers = require("core.helpers")

local files = vim.fn.readdir(vim.fn.stdpath("config") .. "/lua/core/keymappings/data", [[v:val =~ '\.lua$']])

for _, file in ipairs(files) do
  local keymappings = require("core.keymappings.data." .. file:gsub("%.lua$", ""))

  for _, group in ipairs(keymappings.groups) do
    for _, mapping in ipairs(group.mappings) do
      helpers.map(mapping.modes, mapping.key, mapping.cmd, mapping.opt)

      if group.whichkey then
        wk.register({
          [group.prefix] = { group.name },
          [mapping.key] = { mapping.cmd, mapping.opt.desc },
        })
      end
    end
  end
end
