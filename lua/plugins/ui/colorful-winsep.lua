return {
  "nvim-zh/colorful-winsep.nvim",
  cond = _G.Settings.plugins_enabled.colorful_winsep,
  event = "VeryLazy",
  config = function()
    require("colorful-winsep").setup({
      -- highlight for Window separator
      highlight = {
        bg = "#16161E",
        fg = "#32566E",
      },
      -- timer refresh rate
      interval = 30,
      -- This plugin will not be activated for filetype in the following table.
      no_exec_files = {
        "packer",
        "TelescopePrompt",
        "mason",
        "CompetiTest",
      },
      -- Symbols for separator lines, the order: horizontal, vertical, top left, top right, bottom left, bottom right.
      symbols = { "━", "┃", "┏", "┓", "┗", "┛" },
      smooth = false,
    })
  end,
}
