return {
  groups = {
    {
      whichkey = true,
      prefix = '<leader>f',
      name = 'Files',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>ft',
          cmd = '<cmd>NvimTreeToggle<CR>',
          opt = {
            desc = 'Toggle file explorer',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>fT',
          cmd = '<cmd>NvimTreeFindFileToggle<CR>',
          opt = {
            desc = 'Toggle file explorer on current file',
          },
        },
      },
    },
  },
}
