return {
  "nvim-zh/colorful-winsep.nvim",
  cond = _G.Settings.plugins_enabled.colorful_winsep,
  event = "WinNew",
  config = function()
    require("colorful-winsep").setup({
      smooth = false,
    })
  end,
}
