local autocommands = {
  "linenumbers",
  "toggleterm",
  "telescope",
  "none-ls",
}

for _, file in pairs(autocommands) do
  require("core.autocommands." .. file)
end
