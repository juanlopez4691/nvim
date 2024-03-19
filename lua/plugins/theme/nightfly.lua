return {
  "bluz71/vim-nightfly-colors",
  name = "nightfly",
  lazy = false,
  priority = 1000,
  config = function()
    if not _G.Settings.plugins_enabled.nightfly then
      return
    end

    vim.g.nightflyNormalFloat = true
    vim.g.nightflyCursorColor = true
  end,
}
