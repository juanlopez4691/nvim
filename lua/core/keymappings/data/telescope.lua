return {
  groups = {
    {
      whichkey = true,
      prefix = '<leader>c',
      name = '+Code',
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
      name = '+Files',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>ff',
          cmd = "<cmd>lua FindFiles()<CR>",
          opt = {
            desc = 'Find files',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>fr',
          cmd = '<cmd>lua TelescopeOldFiles()<CR>',
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
          key = '<leader>bl',
          cmd = '<cmd>Telescope buffers prompt_prefix=👓›<CR>',
          opt = {
            desc = 'Buffers list',
          },
        },
      },
    },
    {
      whichkey = true,
      prefix = '<leader>s',
      name = '+Search',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>sg',
          cmd = '<cmd>lua TelescopeLiveGrep()<CR>',
          opt = {
            desc = 'Live Grep (root dir)',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>sG',
          cmd = '<cmd>lua TelescopeLiveGrepArgs()<CR>',
          opt = {
            desc = 'Live Grep with arguments (root dir)',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>sw',
          cmd = '<cmd>lua TelescopeGrepString()<CR>',
          opt = {
            desc = 'Find word under cursor',
          },
        },
      },
    },
    {
      whichkey = true,
      prefix = '<leader>g',
      name = '+Git',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>gl',
          cmd = '<cmd>Telescope git_commits prompt_prefix=💡›<CR>',
          opt = {
            desc = 'Commits log',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>gc',
          cmd = '<cmd>Telescope git_bcommits prompt_prefix=📝›<CR>',
          opt = {
            desc = 'Buffer commits',
          },
        },
        {
          modes = { 'n' },
          key = '<leader>gb',
          cmd = '<cmd>Telescope git_branches prompt_prefix=🌳›<CR>',
          opt = {
            desc = 'Branches',
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
