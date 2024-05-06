return {
  "catppuccin/nvim",
  lazy = false,
  priority = 10000, -- make sure to load this before all the other start plugins
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      color_overrides = {
        mocha = {
          base = "#101219",
        },
      },
      highlight_overrides = {
        mocha = function()
          return {
            ColorColumn = { bg = "#14161f" },
            CursorLine = { bg = "#24262f" },
            WinSeparator = { fg = "#44464f" },
          }
        end,
      },
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
