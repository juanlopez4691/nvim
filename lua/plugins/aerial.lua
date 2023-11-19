local core_settings = require('core.settings')

return {
  'stevearc/aerial.nvim',
  cond = core_settings.plugins_enabled.aerial,
  event = 'VeryLazy',
  dependencies = {
     'nvim-treesitter/nvim-treesitter',
     'nvim-tree/nvim-web-devicons'
  },
  config = function()
    local aerial = require('aerial')

    aerial.setup({
      attach_mode = 'global',
      backends = { 'lsp', 'treesitter', 'markdown', 'man' },
      disable_max_lines = core_settings.max_file.lines,
      disable_max_size = core_settings.max_file.size,
      layout = {
        min_width = { 30, 0.2 },
        resize_to_content = true,
      },
      autojump = true,
      show_guides = true,
      filter_kind = false,
      guides = {
        mid_item = '├╴',
        last_item = '╰╴',
        nested_top = '│ ',
        whitespace = '  ',
      },
    })

    -- Global methods to be used in keymaps.
    AerialNavIsOpen = function()
      return aerial.nav_is_open()
    end

    AerialNavClose = function()
      aerial.nav_close()
    end
  end,
}
