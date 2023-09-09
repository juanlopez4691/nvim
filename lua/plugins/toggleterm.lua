return {
  'akinsho/toggleterm.nvim',
  version = '*',
  event = { 'BufWinEnter', 'BufReadPre', 'BufNewFile' },
  config = function ()
    require('core.keymaps')
    local config = require('core.settings')

    require('toggleterm').setup({
      size = function (term)
      print(term.direction)
        if term.direction == 'horizontal' then
          return config.terminal.size.horizontal.height
        elseif term.direction == 'vertical' then
          return config.terminal.size.vertical.width
        end
      end,
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = 'float',
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = 'curved',
        winblend = 0,
        highlights = {
          border = 'Normal',
          background = 'Normal',
        },
        width = config.terminal.size.float.width,
        height = config.terminal.size.float.height,
      },
    })

    -- Setup keymaps.
    Map('n', '<leader>tt', '<cmd>ToggleTerm direction=float<CR>', {desc = 'Terminal float'})
    Map('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', {desc = 'Terminal horizontal'})
    Map('n', '<leader>tv', '<cmd>ToggleTerm direction=vertical<CR>', {desc = 'Terminal vertical'})
  end,
}

