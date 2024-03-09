return {
  "NStefan002/visual-surround.nvim",
  cond = _G.Settings.plugins_enabled.surround,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("visual-surround").setup({})
  end,
}
