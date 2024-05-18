local M = {}

local plugins = vim.fn.readdir(vim.fn.stdpath("config") .. "/lua/custom/plugins/", [[v:val =~ '\.lua$']])

for _, plugin in ipairs(plugins) do
  table.insert(M, require("custom/plugins/" .. plugin:gsub("%.lua$", "")))
end

return M
