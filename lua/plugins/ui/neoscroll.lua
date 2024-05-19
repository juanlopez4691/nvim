return {
  "karb94/neoscroll.nvim",
  cond = _G.Settings.plugins_enabled.neoscroll,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("neoscroll").setup({})
  end,
}
