return {
  "williamboman/mason-lspconfig.nvim",
  lazy = true,
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "bashls",
        "cssls",
        "dockerls",
        "docker_compose_language_service",
        "efm",
        "emmet_ls",
        "eslint",
        "html",
        "intelephense",
        "jsonls",
        "lemminx",
        "lua_ls",
        "sqlls",
        "tailwindcss",
        "taplo",
        "tsserver",
        "vimls",
        "yamlls",
      },
    })
  end,
}
