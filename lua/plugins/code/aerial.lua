return {
  "stevearc/aerial.nvim",
  cond = _G.Settings.plugins_enabled.aerial,
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local aerial = require("aerial")
    print(vim.o.filetype)

    aerial.setup({
      attach_mode = "global",
      backends = { "lsp", "treesitter", "markdown", "man" },
      layout = {
        min_width = { 30, 0.2 },
        resize_to_content = true,
      },
      nav = {
        relative = "win",
        max_height = 0.7,
        min_height = { 20, 0.5 },
        max_width = 0.8,
        min_width = { 20, 0.3 },
        win_opts = {
          cursorline = true,
          winblend = 0,
        },
        preview = true,
      },
      autojump = true,
      show_guides = true,
      filter_kind = false,
      guides = {
        mid_item = "├╴",
        last_item = "╰╴",
        nested_top = "│ ",
        whitespace = "  ",
      },
    })

    -- Global methods to be used in keymaps.
    ToggleAerial = function()
      vim.cmd("AerialToggle")
      vim.opt.statuscolumn = ""
    end

    AerialNavIsOpen = function()
      return aerial.nav_is_open()
    end

    AerialNavClose = function()
      aerial.nav_close()
    end
  end,
}
