return {
  -- 'simrat39/symbols-outline.nvim',
  'enddeadroyal/symbols-outline.nvim',
  branch = 'bugfix/symbol-hover-misplacement',
  event = { 'BufWinEnter', 'BufReadPre', 'BufNewFile' },
  config = function()
    require('symbols-outline').setup()
  end,
}

