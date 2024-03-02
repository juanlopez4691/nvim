return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  lazy = true,
  cond = false,
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
