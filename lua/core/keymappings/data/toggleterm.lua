return {
  {
    modes = { 'n' },
    key = '<leader>tt',
    cmd = '<cmd>100ToggleTerm direction=float<CR>',
    opt = {
      desc = 'Terminal float',
    },
  },
  {
    modes = { 'n' },
    key = '<leader>th',
    cmd = '<cmd>lua ToggleSomeTerminal(20, "horizontal")<cr>',
    opt = {
      desc = 'Terminal horizontal',
    },
  },
  {
    modes = { 'n' },
    key = '<leader>tv',
    cmd = '<cmd>lua ToggleSomeTerminal(0, "vertical")<cr>',
    opt = {
      desc = 'Terminal vertical',
    },
  },
  {
    modes = { 't' },
    key = '<C-h>',
    cmd = '<cmd>wincmd h',
    opt = {
      desc = 'Terminal: jump to split left',
    },
  },
  {
    modes = { 't' },
    key = '<C-j>',
    cmd = '<cmd>wincmd j',
    opt = {
      desc = 'Terminal: jump to split down',
    },
  },
  {
    modes = { 't' },
    key = '<C-k>',
    cmd = '<cmd>wincmd k',
    opt = {
      desc = 'Terminal: jump to split up',
    },
  },
  {
    modes = { 't' },
    key = '<C-l>',
    cmd = '<cmd>wincmd l',
    opt = {
      desc = 'Terminal: jump to split right',
    },
  },
  {
    modes = { 't' },
    key = '<C-w>',
    cmd = '<C-\\><C-n><C-w>',
    opt = {
      desc = 'Terminal: window command prefix',
    },
  },

  -- Terminal: resize window splits.
  {
    modes = { 't' },
    key = '<A-Up>',
    cmd = '<cmd>resize +2<CR>',
    opt = {
      desc = 'Grow horizontal split',
    },
  },
  {
    modes = { 't' },
    key = '<A-Down>',
    cmd = '<cmd>resize -2<CR>',
    opt = {
      desc = 'Reduce horizontal split',
    },
  },
  {
    modes = { 't' },
    key = '<A-Left>',
    cmd = '<cmd>vertical resize +2<CR>',
    opt = {
      desc = 'Grow vertical split',
    },
  },
  {
    modes = { 't' },
    key = '<A-Right>',
    cmd = '<cmd>vertical resize -2<CR>',
    opt = {
      desc = 'Reduce vertical split',
    },
  },
}

