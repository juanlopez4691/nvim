return {
  {
    modes = { 'n' },
    key = 'gd',
    cmd = '<cmd>lua LspDefinitionsAtCursor()<CR>',
    opt = {
      desc = 'Show definitions',
    },
  },
  {
    modes = { 'n' },
    key = 'gr',
    cmd = '<cmd>lua LspReferencesAtCursor()<CR>',
    opt = {
      desc = 'Show references',
    },
  },
  {
    modes = { 'n' },
    key = 'gi',
    cmd = '<cmd>lua LspImplementationsAtCursor()<CR>',
    opt = {
      desc = 'Show implementations',
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
}

