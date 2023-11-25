return {
  groups = {
    {
      whichkey = true,
      prefix = '<leader>c',
      name = 'Code',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>co',
          cmd = '<cmd>lua ToggleAerial()<CR>',
          opt = {
            desc = 'Code outline',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>cn',
          cmd = '<cmd>AerialNavToggle<CR>',
          opt = {
            desc = 'Toggle Aerial Nav window',
          },
        },
        {
          modes = { 'n' },
          key = 'q',
          cmd = '<cmd>lua if AerialNavIsOpen() then AerialNavClose() end<CR>',
          opt = {
            desc = 'Toggle Aerial Nav window',
          },
        },
      },
    },
  },
}
