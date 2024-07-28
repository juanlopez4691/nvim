return {
  "folke/which-key.nvim",
  cond = _G.Settings.plugins_enabled.which_key,
  cmd = "WhichKey",
  event = "VeryLazy",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300

    local wk = require("which-key")

    wk.setup({
      preset = "classic",
      notify = false,
      win = {
        title = false,
      },
    })
  end,
}
