return {
  "karb94/neoscroll.nvim",
  cond = _G.Settings.plugins_enabled.neoscroll,
  event = "VeryLazy",
  config = function ()
    require('neoscroll').setup({})
  end,
}
