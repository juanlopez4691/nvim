return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  cond = _G.Settings.plugins_enabled.notify,
  dependencies = {
    "liangxianzhe/floating-input.nvim",
  },
  config = function()
    local notify = require("notify")

    notify.setup({
      timeout = 3000,
      stages = "slide",
    })

    vim.notify = notify
    vim.ui.input = function(opts, on_confirm)
      require("floating-input").input(opts, on_confirm, {
        relative = "win",
        title_pos = "center",
      })
    end

    require("telescope").load_extension("notify")
  end,
}
