return {
  "stevearc/aerial.nvim",
  cond = _G.Settings.plugins_enabled.aerial,
  event = "VeryLazy",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local aerial = require("aerial")

    aerial.setup({
      attach_mode = "global",
      backends = { "lsp", "treesitter", "markdown", "man" },
      disable_max_lines = _G.Settings.max_file.lines,
      disable_max_size = _G.Settings.max_file.size,
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

    ToggleAerial = function()
      vim.cmd("AerialToggle")
      vim.opt.statuscolumn = ""
    end

    -- Global methods to be used in keymaps.
    AerialNavIsOpen = function()
      return aerial.nav_is_open()
    end

    AerialNavClose = function()
      aerial.nav_close()
    end
  end,
}
