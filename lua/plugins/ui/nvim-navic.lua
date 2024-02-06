return {
  "SmiteshP/nvim-navic",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("nvim-navic").setup({
      highlight = true,
      lsp = {
        auto_attach = true,
      },
    })
  end,
}
