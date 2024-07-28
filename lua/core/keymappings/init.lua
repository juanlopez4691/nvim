local ok, wk = pcall(require, "which-key")
if not ok then
  return
end

local utils = require("core.utils")

local files = vim.fn.readdir(vim.fn.stdpath("config") .. "/lua/core/keymappings/keys", [[v:val =~ '\.lua$']])
local defined_groups = {}

for _, file in ipairs(files) do
  local keymappings = require("core.keymappings.keys." .. file:gsub("%.lua$", ""))

  for _, group in ipairs(keymappings.groups) do
    local group_keymappings = {}

    if group.enabled == false then
      goto skip_group
    end

    if group.name and not defined_groups[group.name] then
      local gr = { group.prefix, group = group.name }

      if group.icon then
        gr["icon"] = group.icon
      end

      table.insert(group_keymappings, gr)
      defined_groups[group.name] = true
    end

    for _, mapping in ipairs(group.mappings) do
      local keymapping = {
        mapping.key,
        mapping.cmd,
        desc = mapping.opt.desc,
        mode = mapping.modes,
        cond = mapping.enabled,
      }

      if mapping.icon then
        keymapping["icon"] = mapping.icon
      end

      table.insert(group_keymappings, keymapping)
    end

    wk.add(group_keymappings)

    ::skip_group::
  end
end
