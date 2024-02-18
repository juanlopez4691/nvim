return {
  "nvim-lualine/lualine.nvim",
  cond = _G.Settings.plugins_enabled.lualine,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    local icons = require("core.icons")
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")
    local navic = require("nvim-navic")

    -- Gets Codeium icon and status info.
    local function codeium_status()
      local status = vim.fn["codeium#GetStatusString"]():gsub("%s+", "")
      return icons.ui.Magic .. " " .. status
    end

    -- Gets format-on-save setting status.
    local function auto_format()
      local status
      if _G.Settings.format_on_save then
        status = " ON"
      else
        status = " OFF"
      end
      return icons.ui.Brush .. " " .. status
    end

    lualine.setup({
      theme = _G.Settings.colorscheme,
      options = {
        icons_enabled = true,
        component_separators = "|",
        draw_empty = false,
        section_separators = { left = "", right = "" },
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
        },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          {
            codeium_status,
            color = { fg = "#58f5ab" },
          },
          {
            auto_format,
            color = { fg = "#096ae8" },
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
      tabline = {
        lualine_a = {
          {
            "buffers",
            mode = 0,
            show_modified_status = true,
            symbols = {
              modified = " 󰲶",
            },
          },
        },
        lualine_b = {
          {
            function()
              return require("nvim-navic").get_location()
            end,
            cond = function()
              return package.loaded["nvim-navic"] and require("nvim-navic").is_available()
            end,
            section_separators = {},
          },
        },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
          {
            "tabs",
            mode = 0,
            show_modified_status = true,
            symbols = {
              modified = " 󰲶",
            },
          },
        },
      },
    })
  end,
}
