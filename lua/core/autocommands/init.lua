local autocommands = {
  "debug",
  "general",
  "linenumbers",
  "none-ls",
  "telescope",
  "toggleterm",
}

for _, file in pairs(autocommands) do
  require("core.autocommands." .. file)
end
