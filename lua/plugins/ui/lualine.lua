return {
  "nvim-lualine/lualine.nvim",
  cond = _G.Settings.plugins_enabled.lualine,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    local icons = require("core.icons")
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    lualine.setup({
      theme = _G.Settings.colorscheme,
      options = {
        icons_enabled = true,
        component_separators = "|",
        draw_empty = false,
        section_separators = { left = "", right = "" },
        globalstatus = true,
      },
      extensions = {
        "nvim-tree",
        "lazy",
        "symbols-outline",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error .. " ",
              warn = icons.diagnostics.Warn .. " ",
              info = icons.diagnostics.Info .. " ",
              hint = icons.diagnostics.Hint .. " ",
            },
          },
          {
            "filename",
            file_status = true,
            newfile_status = true,
            path = 1,
            shorting_target = 40,
            symbols = { modified = "󰲶", readonly = "", unnamed = "", newfile = "" },
          },
          -- stylua: ignore
          {
            function() return require("nvim-navic").get_location() end,
            cond = function() return package.loaded["nvim-navic"] and require("nvim-navic").is_available() end,
          },
        },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "encoding" },
          { "fileformat" },
          {
            "filetype",
            colored = true,
            icon_only = false,
            padding = 1,
          },
        },
      },
    })
  end,
}
