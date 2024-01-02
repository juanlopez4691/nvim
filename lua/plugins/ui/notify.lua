return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  cond = _G.Settings.plugins_enabled.notify,
  config = function()
    local notify = require("notify")

    notify.setup({
      timeout = 3000,
      stages = "slide",
    })
    vim.notify = notify
    require("telescope").load_extension("notify")
  end,
}
