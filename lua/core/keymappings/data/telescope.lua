return {
  groups = {
    {
      name = 'Code',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>gd',
          cmd = '<cmd>lua LspDefinitionsAtCursor()<CR>',
          opt = {
            desc = 'Show definitions',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>gr',
          cmd = '<cmd>lua LspReferencesAtCursor()<CR>',
          opt = {
            desc = 'Show references',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>gi',
          cmd = '<cmd>lua LspImplementationsAtCursor()<CR>',
          opt = {
            desc = 'Show implementations',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>gs',
          cmd = '<cmd>Telescope lsp_document_symbols<CR>',
          opt = {
            desc = 'Document symbols',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>gws',
          cmd = '<cmd>Telescope lsp_workspace_symbols<CR>',
          opt = {
            desc = 'Workspace symbols',
          },
        },
      },
    },
    {
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
        {
          modes = { 'n' },
          key = '<leader>fb',
          cmd = '<cmd>Telescope buffers prompt_prefix=👓›<CR>',
          opt = {
            desc = 'Buffers',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>fe',
          cmd = '<cmd>Telescope file_browser prompt_prefix=🗂️›<CR>',
          opt = {
            desc = 'File Browser',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>fg',
          cmd = '<cmd>Telescope live_grep prompt_prefix=🔍›<CR>',
          opt = {
            desc = 'Live Grep (root dir)',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>fgg',
          cmd = '<cmd>Telescope live_grep_args prompt_prefix=🔍›<CR>',
          opt = {
            desc = 'Live Grep with arguments (root dir)',
          },
        },
      },
    },
    {
      name = 'Help',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>fh',
          cmd = '<cmd>Telescope help_tags prompt_prefix=💡›<CR>',
          opt = {
            desc = 'Help pages',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>fu',
          cmd = '<cmd>Telescope help_tags prompt_prefix=💡›<CR>',
          opt = {
            desc = 'Undo tree',
          },
        },
      },
    },
  },
}

