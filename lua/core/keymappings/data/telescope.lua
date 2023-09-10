return {
  {
    modes = { 'n' },
    key = 'gr',
    cmd = '<cmd>Telescope lsp_references<CR>',
    opt = {
      desc = 'Show references',
    },
  },
  {
    modes = { 'n' },
    key = 'gd',
    cmd = '<cmd>Telescope lsp_definitions<CR>',
    opt = {
      desc = 'Show definitions',
    },
  },
  {
    modes = { 'n' },
    key = 'gs',
    cmd = '<cmd>Telescope lsp_document_symbols<CR>',
    opt = {
      desc = 'Document symbols',
    },
  },
  {
    modes = { 'n' },
    key = 'gws',
    cmd = '<cmd>Telescope lsp_workspace_symbols<CR>',
    opt = {
      desc = 'Workspace symbols',
    },
  },
  {
    modes = { 'n' },
    key = 'gi',
    cmd = '<cmd>Telescope lsp_implementations<CR>',
    opt = {
      desc = 'Show implementations',
    },
  },
}

