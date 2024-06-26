return {
  "folke/which-key.nvim",
  cond = _G.Settings.plugins_enabled.which_key,
  cmd = "WhichKey",
  event = "VeryLazy",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300

    require("which-key").setup({
      sort_by_description = true,
      window = {
        border = "single",
        margin = { 1, 1, 1, 1 },
      },
    })
  end,
}
