local files = vim.fn.readdir(vim.fn.stdpath("config") .. "/lua/core/autocommands/commands", [[v:val =~ '\.lua$']])

for _, file in ipairs(files) do
  require("core.autocommands.commands." .. file:gsub("%.lua$", ""))
end
