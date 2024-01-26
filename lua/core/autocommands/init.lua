local autocommands = {
  "debug",
  "edit",
  "general",
  "linenumbers",
  "format",
  "telescope",
  "toggleterm",
}

for _, file in pairs(autocommands) do
  require("core.autocommands." .. file)
end
