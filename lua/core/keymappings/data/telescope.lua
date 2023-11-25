return {
  groups = {
    {
      whichkey = true,
      prefix = '<leader>c',
      name = 'Code',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>cd',
          cmd = '<cmd>lua LspDefinitionsAtCursor()<CR>',
          opt = {
            desc = 'Show definitions',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>cr',
          cmd = '<cmd>lua LspReferencesAtCursor()<CR>',
          opt = {
            desc = 'Show references',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>ci',
          cmd = '<cmd>lua LspImplementationsAtCursor()<CR>',
          opt = {
            desc = 'Show implementations',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>cs',
          cmd = '<cmd>Telescope lsp_document_symbols<CR>',
          opt = {
            desc = 'Document symbols',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>cw',
          cmd = '<cmd>Telescope lsp_workspace_symbols query=main<CR>',
          opt = {
            desc = 'Workspace symbols',
          },
        },
      },
    },
    {
      whichkey = true,
      prefix = '<leader>f',
      name = 'Files',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>ff',
          cmd = '<cmd>Telescope find_files prompt_prefix=🔭›<CR>',
          opt = {
            desc = 'Find files',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>fr',
          cmd = '<cmd>Telescope oldfiles prompt_prefix=💾›<CR>',
          opt = {
            desc = 'Recent files',
          },
        },
      },
    },
    {
      whichkey = true,
      prefix = '<leader>b',
      name = 'Buffers',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>bb',
          cmd = '<cmd>Telescope buffers prompt_prefix=👓›<CR>',
          opt = {
            desc = 'Buffers',
          },
        },
      },
    },
    {
      whichkey = true,
      prefix = '<leader>s',
      name = 'Search',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>sg',
          cmd = '<cmd>Telescope live_grep prompt_prefix=🔍›<CR>',
          opt = {
            desc = 'Live Grep (root dir)',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>sG',
          cmd = '<cmd>Telescope live_grep_args prompt_prefix=🔍›<CR>',
          opt = {
            desc = 'Live Grep with arguments (root dir)',
          },
        },
      },
    },
    {
      whichkey = true,
      prefix = '<leader>h',
      name = 'Help',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>h',
          cmd = '<cmd>Telescope help_tags prompt_prefix=💡›<CR>',
          opt = {
            desc = 'Help pages',
          },
        },
      },
    },
    {
      whichkey = true,
      prefix = '<leader>u',
      name = 'Undo',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>ut',
          cmd = '<cmd>Telescope undo<CR>',
          opt = {
            desc = 'Undo tree',
          },
        },
      }
    },
  },
}
