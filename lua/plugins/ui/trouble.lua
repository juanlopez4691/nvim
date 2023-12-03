return {
  "folke/trouble.nvim",
  cond = _G.Settings.plugins_enabled.trouble,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = "TroubleToggle",
  opts = {
    use_diagnostic_signs = true,
  },
}
