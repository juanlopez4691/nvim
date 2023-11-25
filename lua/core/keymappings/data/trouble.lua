return {
  groups = {
    {
      name = 'Trouble',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>xx',
          cmd = '<cmd>TroubleToggle<CR>',
          opt = {
            desc = 'Trouble toggle',
          },
        },
      },
    }
  },
}

