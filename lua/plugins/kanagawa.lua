local core_settings = require('core.settings')

return {
  'rebelot/kanagawa.nvim',
  cond = core_settings.plugins_enabled.kanagawa,
  priority = 10000, -- make sure to load this before all the other start plugins
  config = function ()
    if not core_settings.plugins_enabled.kanagawa then
      return
    end

    require('kanagawa').setup({
      compile = false,             -- enable compiling the colorscheme
      undercurl = true,            -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = { italic = true },
      keywordStyle = { italic = true},
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,         -- do not set background color
      dimInactive = true,         -- dim inactive window `:h hl-NormalNC`
      terminalColors = true,       -- define vim.g.terminal_color_{0,17}
      colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = {
          wave = {},
          lotus = {},
          dragon = {},
          all = {}
        },
      },
      overrides = function(colors) -- add/modify highlights
        return {}
      end,
      theme = "wave",              -- Load "wave" theme when 'background' option is not set
      background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
      },
    })
  end
}

