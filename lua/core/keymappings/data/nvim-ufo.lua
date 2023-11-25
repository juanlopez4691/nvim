local openAllFolds = function ()
  require('ufo').openAllFolds()
end

local closeAllFolds = function ()
  require('ufo').closeAllFolds()
end

local peekFoldedLinesUnderCursor = function ()
  require('ufo').peekFoldedLinesUnderCursor()
end

return {
  groups = {
    {
      name = 'Folds',
      mappings = {
        {
          modes = { 'n' },
          key = 'zR',
          cmd = openAllFolds,
          opt = {
            desc = 'Open all folds',
          },
        },
        {
          modes = { 'n' },
          key = 'zM',
          cmd = closeAllFolds,
          opt = {
            desc = 'Close all folds',
          },
        },
        {
          modes = { 'n' },
          key = 'zK',
          cmd = peekFoldedLinesUnderCursor,
          opt = {
            desc = 'Peek folded lines under cursor',
          },
        },
      },
    },
  },
}

