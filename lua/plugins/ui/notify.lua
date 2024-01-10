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

    ---@diagnostic disable-next-line: undefined-field
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

    ---@diagnostic disable-next-line: duplicate-set-field
    vim.ui.input = function(opts, on_confirm)
      local input_config = {
        relative = "win",
        title_pos = "center",
      }

      if opts.prompt == "Input session name: " then
        input_config.width = 60
      end

      require("floating-input").input(opts, on_confirm, input_config)
    end

    require("telescope").load_extension("notify")
  end,
}
