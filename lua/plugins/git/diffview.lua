return {
  "sindrets/diffview.nvim",
  cond = _G.Settings.plugins_enabled.diffview,
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
}
