return {
  groups = {
    {
      name = 'File tree',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>ee',
          cmd = '<cmd>NvimTreeToggle<CR>',
          opt = {
            desc = 'Toggle file explorer',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>ef',
          cmd = '<cmd>NvimTreeFindFileToggle<CR>',
          opt = {
            desc = 'Toggle file explorer on current file',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>ec',
          cmd = '<cmd>NvimTreeCollapse<CR>',
          opt = {
            desc = 'Collapse file explorer',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>er',
          cmd = '<cmd>NvimTreeRefresh<CR>',
          opt = {
            desc = 'Refresh file explorer',
          },
        },
      },
    },
  },
}

