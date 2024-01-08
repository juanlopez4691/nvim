return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  lazy = true,
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require("nvim-treesitter.configs").setup({
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
        },
      },
    })
  end,
}
