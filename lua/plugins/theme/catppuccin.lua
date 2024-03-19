return {
  "catppuccin/nvim",
  lazy = false,
  priority = 10000, -- make sure to load this before all the other start plugins
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      integrations = {
        cmp = true,
        gitsigns = true,
        indent_blankline = {
          enabled = true,
          colored_indent_levels = true,
          scope_color = "lavender",
        },
        treesitter = true,
        lsp_trouble = true,
        notify = true,
        nvimtree = true,
        which_key = true,
      },
    })
  end,
}
