require("core.settings")
require("core.config")
require("core.lazy")
require("core.colorscheme")
require("core.commands")
require("core.keymappings")
require("core.autocommands")

-- Load custom config if available.
if vim.fn.findfile("init.lua", vim.fn.stdpath("config") .. "/lua/custom") ~= "" then
  require("custom")
end
