local lspconfig = require("lspconfig")

local M = {}

M.setup = function()
  lspconfig.tailwindcss.setup({
    root_dir = function(...)
      return require("lspconfig.util").root_pattern(".git")(...)
    end,
  })
end

return M
