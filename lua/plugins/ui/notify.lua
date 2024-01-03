return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  cond = _G.Settings.plugins_enabled.notify,
  dependencies = {
    "liangxianzhe/floating-input.nvim",
  },
  config = function()
    local notify = require("notify")
    local banned_messages = { "No information available" }

    notify.setup({
      timeout = 3000,
      stages = "slide",
    })

    ---@diagnostic disable-next-line: duplicate-set-field
    vim.notify = function(msg, ...)
      for _, banned in ipairs(banned_messages) do
        if msg == banned then
          return
        end
      end
      return notify(msg, ...)
    end

    vim.ui.input = function(opts, on_confirm)
      require("floating-input").input(opts, on_confirm, {
        relative = "win",
        title_pos = "center",
      })
    end

    require("telescope").load_extension("notify")
  end,
}
