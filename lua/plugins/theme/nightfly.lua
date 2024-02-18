return {
  "bluz71/vim-nightfly-colors",
  name = "nightfly",
  cond = _G.Settings.plugins_enabled.nightfly,
  priority = 1000,
  config = function()
    if not _G.Settings.plugins_enabled.nightfly then
      return
    end

    vim.g.nightflyNormalFloat = true
    vim.g.nightflyCursorColor = true

    vim.cmd("colorscheme nightfly")
  end,
}
