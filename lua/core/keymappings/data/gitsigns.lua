return {
  groups = {
    {
      whichkey = true,
      prefix = '<leader>g',
      name = 'Git',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>gk',
          cmd = '<cmd>lua GitSignsFullBlameLine()<CR>',
          opt = {
            desc = 'Full line blame',
          },
        },
      },
    },
  },
}
