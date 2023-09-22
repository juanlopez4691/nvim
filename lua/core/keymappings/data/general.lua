return {
  {
    modes = { 'n' },
    key = '<leader>h',
    cmd = '<Cmd>noh<CR>',
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
  {
    modes = { 'n' },
    key = '<C-d>',
    cmd = '<C-d>zz',
    opt = {
      desc = 'Scroll down half screen',
    },
  },
  {
    modes = { 'n' },
    key = '<C-u>',
    cmd = '<C-u>zz',
    opt = {
      desc = 'Scroll up half screen',
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
    cmd = '<Cmd>resize +2<CR>',
    opt = {
      desc = 'Grow horizontal split',
    },
  },
  {
    modes = { 'n' },
    key = '<A-Down>',
    cmd = '<Cmd>resize -2<CR>',
    opt = {
      desc = 'Reduce horizontal split',
    },
  },
  {
    modes = { 'n' },
    key = '<A-Left>',
    cmd = '<Cmd>vertical resize +2<CR>',
    opt = {
      desc = 'Grow vertical split',
    },
  },
  {
    modes = { 'n' },
    key = '<A-Right>',
    cmd = '<Cmd>vertical resize -2<CR>',
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

  -- Move line(s) up/down.
  {
    modes = { 'n' },
    key = '<A-j>',
    cmd = '<Cmd>m+<CR>==',
    opt = {
      desc = 'Move current line down',
    },
  },
  {
    modes = { 'n' },
    key = '<A-k>',
    cmd = '<Cmd>m-2<CR>==',
    opt = {
      desc = 'Move current line up',
    },
  },
  {
    modes = { 'i' },
    key = '<A-j>',
    cmd = '<ESC>:m+<CR>==gi',
    opt = {
      desc = 'Move current line down',
    },
  },
  {
    modes = { 'i' },
    key = '<A-k>',
    cmd = '<ESC>:m-2<CR>==gi',
    opt = {
      desc = 'Move current line up',
    },
  },
  {
    modes = { 'v' },
    key = '<A-j>',
    cmd = ":m'>+<CR>gv=gv",
    opt = {
      desc = 'Move current line down',
    },
  },
  {
    modes = { 'v' },
    key = '<A-k>',
    cmd = ":m-2<CR>gv=gv",
    opt = {
      desc = 'Move current line down',
    },
  },
}

