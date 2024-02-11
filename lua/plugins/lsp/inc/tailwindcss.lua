local lspconfig = require("lspconfig")

local M = {}

M.setup = function()
  lspconfig.tailwindcss.setup({})
end

return M
