local autocommands = {
  "debug",
  "edit",
  "general",
  "linenumbers",
  "none-ls",
  "telescope",
  "toggleterm",
}

for _, file in pairs(autocommands) do
  require("core.autocommands." .. file)
end
