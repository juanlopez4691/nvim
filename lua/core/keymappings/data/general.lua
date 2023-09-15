return {
  {
    modes = { 'n' },
    key = '<leader>h',
    cmd = ':noh<CR>',
    opt = {
      desc = 'Clear highligted search results',
    },
  },

  -- Navigation.
  {
    modes = { 'n' },
    key = '<C-o>',
    cmd = '<C-o>zz',
    opt = {
      desc = 'Go back to previous edit location',
    },
  },
  {
    modes = { 'n' },
    key = '<C-i>',
    cmd = '<C-i>zz',
    opt = {
      desc = 'Go to next edit location',
    },
  },

  -- Navigate window splits.
  {
    modes = { 'n' },
    key = '<C-h>',
    cmd = '<C-w>h',
    opt = {
      desc = 'Jump to split left',
    },
  },
  {
    modes = { 'n' },
    key = '<C-j>',
    cmd = '<C-w>j',
    opt = {
      desc = 'Jump to split down',
    },
  },
  {
    modes = { 'n' },
    key = '<C-k>',
    cmd = '<C-w>k',
    opt = {
      desc = 'Jump to split up',
    },
  },
  {
    modes = { 'n' },
    key = '<C-l>',
    cmd = '<C-w>l',
    opt = {
      desc = 'Jump to split right',
    },
  },

  -- Resize window splits.
  {
    modes = { 'n' },
    key = '<A-Up>',
    cmd = ':resize +2<CR>',
    opt = {
      desc = 'Grow horizontal split',
    },
  },
  {
    modes = { 'n' },
    key = '<A-Down>',
    cmd = ':resize -2<CR>',
    opt = {
      desc = 'Reduce horizontal split',
    },
  },
  {
    modes = { 'n' },
    key = '<A-Left>',
    cmd = ':vertical resize +2<CR>',
    opt = {
      desc = 'Grow vertical split',
    },
  },
  {
    modes = { 'n' },
    key = '<A-Right>',
    cmd = ':vertical resize -2<CR>',
    opt = {
      desc = 'Reduce vertical split',
    },
  },

  -- Improved cursor movement.
  {
    modes = { 'n' },
    key = 'j',
    cmd = 'gj',
    opt = {
      desc = 'Move cursor down',
    },
  },
  {
    modes = { 'n' },
    key = 'k',
    cmd = 'gk',
    opt = {
      desc = 'Move cursor up',
    },
  },


  -- Move cursor in insert modes. You cheater!
  {
    modes = { 'i' },
    key = '<A-h>',
    cmd = '<C-o>h',
    opt = {
      desc = 'Move cursor left',
    },
  },
  {
    modes = { 'i' },
    key = '<A-l>',
    cmd = '<C-o>l',
    opt = {
      desc = 'Move cursor rigth',
    },
  },

  -- Indent/Reindent in visual modes.
  {
    modes = { 'v' },
    key = '>',
    cmd = '>gv',
    opt = {
      desc = 'Indent in',
    },
  },
  {
    modes = { 'v' },
    key = '<',
    cmd = '<gv',
    opt = {
      desc = 'Indent out',
    },
  },
}

