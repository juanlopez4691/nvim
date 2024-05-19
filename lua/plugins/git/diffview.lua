return {
  "sindrets/diffview.nvim",
  event = { "BufReadPre", "BufNewFile" },
  cond = _G.Settings.plugins_enabled.diffview,
}
