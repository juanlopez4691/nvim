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
      },
    },
  },
}
