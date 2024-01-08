local lspconfig = require("lspconfig")

local M = {}

M.setup = function()
  lspconfig.cssls.setup({
    settings = {
      css = {
        validate = false,
        lint = {
          unknownAtRules = "ignore",
        },
      },
    },
    scss = {
      validate = false,
      lint = {
        unknownAtRules = "ignore",
      },
    },
    less = {
      validate = false,
      lint = {
        unknownAtRules = "ignore",
      },
    },
  })
end

return M
