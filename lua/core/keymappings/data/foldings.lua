local openAllFolds = function()
  require("ufo").openAllFolds()
end

local closeAllFolds = function()
  require("ufo").closeAllFolds()
end

local peekFoldedLinesUnderCursor = function()
  require("ufo").peekFoldedLinesUnderCursor()
end

return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>z",
      name = "+Folds",
      mappings = {
        {
          enabled = _G.Settings.plugins_enabled.nvim_ufo,
          modes = { "n" },
          key = "zR",
          cmd = openAllFolds,
          opt = {
            desc = "Open all folds",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.nvim_ufo,
          modes = { "n" },
          key = "zM",
          cmd = closeAllFolds,
          opt = {
            desc = "Close all folds",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.nvim_ufo,
          modes = { "n" },
          key = "zK",
          cmd = peekFoldedLinesUnderCursor,
          opt = {
            desc = "Peek folded lines under cursor",
          },
        },
      },
    },
  },
}
