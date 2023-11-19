local core_settings = require('core.settings')

return {
  "nvim-lualine/lualine.nvim",
  cond = core_settings.plugins_enabled.lualine,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local icons = require("core.icons")
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    lualine.setup({
      theme = {
        colorscheme = core_settings.colorscheme,
      },
      options = {
        icons_enabled = true,
        component_separators = '|',
        -- section_separators = '',
      },
      extensions = {
        'nvim-tree',
        'lazy',
        'symbols-outline',
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
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
          { "filetype" },
        },
      },
    })
  end,
}

