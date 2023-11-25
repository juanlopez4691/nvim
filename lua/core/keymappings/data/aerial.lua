return {
  groups = {
    {
      name = 'Code',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>aa',
          cmd = '<cmd>lua ToggleAerial()<CR>',
          opt = {
            desc = 'Toggle Aerial',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>an',
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

