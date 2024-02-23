local autocommands = {
  "debug",
  "edit",
  "general",
  "linenumbers",
  "format",
  "nvim-tree",
  "telescope",
  "toggleterm",
}

for _, file in pairs(autocommands) do
  require("core.autocommands." .. file)
end
