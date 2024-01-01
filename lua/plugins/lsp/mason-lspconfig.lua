return {
  "williamboman/mason-lspconfig.nvim",
  lazy = true,
  config = function()
    local lsp_zero = require("lsp-zero")

    require("mason-lspconfig").setup({
      handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
          local lua_opts = lsp_zero.nvim_lua_ls()
          require("lspconfig").lua_ls.setup(lua_opts)
        end,
      },
      ensure_installed = require("plugins.lsp.inc.servers"),
      automatic_installation = true,
    })
  end,
}
