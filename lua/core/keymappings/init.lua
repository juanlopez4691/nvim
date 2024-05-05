local ok, wk = pcall(require, "which-key")
if not ok then
  return
end

local utils = require("core.utils")

local files = vim.fn.readdir(vim.fn.stdpath("config") .. "/lua/core/keymappings/keys", [[v:val =~ '\.lua$']])

for _, file in ipairs(files) do
  local keymappings = require("core.keymappings.keys." .. file:gsub("%.lua$", ""))

  for _, group in ipairs(keymappings.groups) do
    if group.enabled == false then
      goto skip_group
    end

    for _, mapping in ipairs(group.mappings) do
      if mapping.enabled == false then
        goto skip_keymmaping
      end
      utils.map(mapping.modes, mapping.key, mapping.cmd, mapping.opt)

      if group.whichkey then
        wk.register({
          [group.prefix] = { group.name },
          [mapping.key] = { mapping.cmd, mapping.opt.desc },
        })
      end
      ::skip_keymmaping::
    end

    ::skip_group::
  end
end
